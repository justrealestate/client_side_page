# Generated by Django 4.0 on 2024-10-26 11:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('real_estate_app', '0005_land_customer_id_landlease_customer_id_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='signupdetails',
            name='Customer_id',
            field=models.CharField(default='-', max_length=10),
        ),
    ]
