# Generated by Django 4.0.5 on 2022-06-05 16:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('vacancies', '0009_alter_location_country_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='channel',
            name='url',
            field=models.CharField(choices=[('job_python', 'Python'), ('job_react', 'React'), ('job_javadevs', 'Java')], max_length=50, unique=True, verbose_name='Адрес Telegram-канала'),
        ),
        migrations.AlterField(
            model_name='vacancy',
            name='employment',
            field=models.CharField(choices=[('FULLDAY', 'Полный день'), ('NOTFULL', 'Неполный день'), ('PRJ', 'Проектная занятость'), ('PRTTIME', 'Частичная занятость'), ('NONE', 'Не указана')], max_length=7, verbose_name='Занятость'),
        ),
        migrations.AlterField(
            model_name='vacancy',
            name='location',
            field=models.ForeignKey(blank=True, default='', on_delete=django.db.models.deletion.CASCADE, related_name='from_location', to='vacancies.location', verbose_name='Локация'),
        ),
        migrations.AlterField(
            model_name='vacancy',
            name='min_salary',
            field=models.PositiveIntegerField(default=0, verbose_name='Минимальная заработная плата'),
        ),
    ]