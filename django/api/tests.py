from django.test import TestCase
from django.urls import reverse
from rest_framework.test import APITestCase, APIClient
from vacancies.models import *
from api.serializers import VacancySerializer
# Create your tests here.
class VacancyAPITestCase(APITestCase):
    
    api_client = APIClient()

    def setUp(self):
        self.python_ch = Channel.objects.create(url="job_python")
        self.react_ch = Channel.objects.create(url="job_react")
        self.dev_group = RoleGroup.objects.create(name="Разработка ПО")
        self.back_role = Role.objects.create(name="Backend-разработчик", group=self.dev_group)
        self.front_role = Role.objects.create(name="Фронтенд-разработчик", group =self.dev_group)
        self.python = Technology.objects.create(name="Python")
        self.js = Technology.objects.create(name="JavaScript")
        self.django = Technology.objects.create(name="Django")
        self.react = Technology.objects.create(name="React")
        self.loc = Location.objects.create(name="Москва")
        self.back = Vacancy.objects.create(role=self.back_role, 
                               desc="Ищем Backend-разработчика",
                               add_date="2022-08-02T12:00:01Z",
                               min_salary=100000,
                               max_salary=170000,
                               remote=True,
                               relocation=False,
                               employment="Гибкий график",
                               skill="Middle",
                               tasks="-выполнять Backend-разработку",
                               requirements="-знание Django",
                               message_id=100000,
                               location=self.loc,
                               channel_id=self.python_ch)
        self.back.technologies.add(self.python, self.django)
        self.front = Vacancy.objects.create(role=self.front_role,
                               desc="Ищем frontend-разработчика",
                               add_date="2022-07-02T12:00:01Z",
                               message_id=100000,
                               channel_id=self.react_ch)
        self.front.technologies.add(self.js, self.react)
            
    def test_get(self):
        response = self.client.get(reverse('vacancy-list'))
        vacancies = Vacancy.objects.all()
        serializer = VacancySerializer(vacancies, many=True)
        self.assertEqual(response.status_code, 200, f"The response code should be 200, not {response.status_code}")
        self.assertEqual(response.data['count'], 2, f"Should be 2 vacancies, not {response.data['count']}")
        self.assertEqual(response.data['results'], serializer.data, f"Response data: {response.data}"\
                                                          "should be equal to Serializer data: {serializer.data}")
