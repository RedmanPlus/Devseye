import os
import re
from requests import Session
from dotenv import load_dotenv
from telethon.sync import TelegramClient
import parser_utils
load_dotenv()

channels_for_parse = [ch.replace('\n', '') for ch in open('channels.txt', 'r', encoding='utf-8')]

# Перед локальным использованием парсера нужно ОБЯЗАТЕЛЬНО поменять первый аргумент 'parse_session' 
# на любой другой, чтобы не нарушалась уникальность сессий клиента. 
# Если не поменять - упадёт и локально, и удаленно запущенный
client = TelegramClient('parse_session', os.getenv('TELEGRAM_API_ID'), os.getenv('TELEGRAM_API_HASH'))

def get_parser_session():
    session = Session()
    response = session.post(f"http://django:{os.getenv('DJANGO_PORT')}/api/api-token-auth", 
                      data={"username": f"{os.getenv('PARSER_USERNAME')}", 
                            "password": f"{os.getenv('PARSER_PASSWORD')}"})
    token = response.json()['token']
    session.headers.update({"Authorization": f"Token {token}"})
    return session


def parse_vacancy(msg):
    technologies_list = [tech.replace('\n', '') for tech in 
                    open('technologies.txt', 'r', encoding='utf-8') if len(tech)> 2] #технологии меньше 2 букв конфликтуют с обычными союзами и словами
    try:
        if (any([(tag in msg.text) for tag in ('#вакансия', '#офис', '#удаленка', '#гибрид')])) and (not any([(tag in msg.text) for tag in 
                                              ('#статья', '#задача', '#задачаотподписчика')])):
            text = re.sub('[*\[\]]', '', msg.text) # Markdown -> Plain Text
            text = re.sub('\(http[s]?.*\)', '', text) # Убираем гиперссылки                                
            vac_arr = text.split('\n')
            if len(vac_arr) > 8:
                vac_dct = {"channel_id": {"url": msg.chat.username}, 
                           "message_id": msg.id}
                vac_dct['add_date'] = str(msg.date) 
                vac_dct['role'] = {"name": parser_utils.get_role(vac_arr[0])}
                vac_dct['technologies'] = [{"name": t} for t in 
                                           {tech for tech in technologies_list if re.search(f"({re.escape(tech)})\W+", ''.join(vac_arr))}]
                vac_dct['remote'] = any(tag in ''.join(vac_arr) for tag in ['#гибрид', '#удаленка'])
                vac_dct['relocation'] = any(tag in ''.join(vac_arr) for tag in ['#релокация', '#relocation'])
                vac_dct.update(parser_utils.get_skill(''.join(vac_arr[0:3])))
                vac_dct.update(parser_utils.get_salary(''.join(vac_arr[0:3])))
                vac_dct.update(parser_utils.get_employment(''.join(vac_arr)))
                vac_dct.update(parser_utils.get_location('\n'.join(vac_arr)))
                vac_dct.update(parser_utils.get_desc_tasks_requirements(vac_arr))
                return vac_dct
    except TypeError:
        return None


def parse_all_vacancies(tg_client, channel):
    vacancies = []
    with tg_client:
        for msg in tg_client.iter_messages(channel, reverse=True):
            vacancy = parse_vacancy(msg)
            if vacancy:
                vacancies.append(vacancy)
    return vacancies

session = get_parser_session()
