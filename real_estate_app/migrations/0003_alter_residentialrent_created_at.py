# Generated by Django 4.0 on 2024-10-16 12:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('real_estate_app', '0002_alter_places_street'),
    ]

    operations = [
        migrations.AlterField(
            model_name='residentialrent',
            name='Created_at',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
