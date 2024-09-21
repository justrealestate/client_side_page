# Generated by Django 4.0 on 2024-09-20 12:05

import django.core.validators
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CommercialRent',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'commercial_rent',
            },
        ),
        migrations.CreateModel(
            name='CommercialResale',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'commercial_resale',
            },
        ),
        migrations.CreateModel(
            name='Land',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Length', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Width', models.DecimalField(decimal_places=2, max_digits=10)),
                ('PlotArea', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Cent', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Acre', models.DecimalField(decimal_places=2, max_digits=10)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedRent', models.IntegerField(default='0')),
                ('ExpectedDepositMonths', models.CharField(default='0', max_length=20)),
                ('ExpectedDeposit', models.IntegerField(default='0')),
                ('PricePerCent', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('TotalPrice', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('PricePerSquareFeet', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('ExpectedLease', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('ExpectedLeaseDuration', models.CharField(default='-', max_length=12)),
                ('Maintenance', models.CharField(default='-', max_length=20)),
                ('Description', models.CharField(default='-', max_length=500)),
                ('Terms', models.CharField(default='-', max_length=500)),
                ('Type', models.CharField(max_length=10)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Image', models.ImageField(upload_to='images/land')),
                ('Uploaded_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'land_records',
            },
        ),
        migrations.CreateModel(
            name='LandLease',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Length', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Width', models.DecimalField(decimal_places=2, max_digits=10)),
                ('PlotArea', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Cent', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Acre', models.DecimalField(decimal_places=2, max_digits=10)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedLease', models.IntegerField()),
                ('ExpectedLeaseDuration', models.CharField(max_length=12)),
                ('Maintenance', models.CharField(max_length=20)),
                ('Terms', models.CharField(max_length=500)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Uploaded_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'land_lease',
            },
        ),
        migrations.CreateModel(
            name='LandRent',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Length', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Width', models.DecimalField(decimal_places=2, max_digits=10)),
                ('PlotArea', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Cent', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Acre', models.DecimalField(decimal_places=2, max_digits=10)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedRent', models.IntegerField()),
                ('ExpectedDepositMonths', models.CharField(max_length=20)),
                ('ExpectedDeposit', models.IntegerField()),
                ('Terms', models.CharField(max_length=500)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Image', models.ImageField(upload_to='images/landrent/')),
                ('Uploaded_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'land_rent',
            },
        ),
        migrations.CreateModel(
            name='LandResale',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Length', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Width', models.DecimalField(decimal_places=2, max_digits=10)),
                ('PlotArea', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Cent', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Acre', models.DecimalField(decimal_places=2, max_digits=10)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('PricePerCent', models.DecimalField(decimal_places=2, max_digits=10)),
                ('TotalPrice', models.DecimalField(decimal_places=2, max_digits=15)),
                ('PricePerSquareFeet', models.DecimalField(decimal_places=2, max_digits=10)),
                ('Description', models.CharField(max_length=500)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Uploaded_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'land_resale',
            },
        ),
        migrations.CreateModel(
            name='LoginDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Password', models.CharField(max_length=128)),
                ('Created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'login_details',
            },
        ),
        migrations.CreateModel(
            name='Residential',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BhkType', models.CharField(max_length=50)),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Floor', models.CharField(default='-', max_length=50)),
                ('HouseType', models.CharField(default='-', max_length=20)),
                ('Parking', models.CharField(max_length=50)),
                ('Terrace', models.CharField(max_length=50)),
                ('Hall', models.CharField(max_length=50)),
                ('Bedroom', models.CharField(max_length=50)),
                ('Bathroom', models.CharField(max_length=50)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedRent', models.IntegerField(default='0')),
                ('ExpectedDepositMonths', models.IntegerField(default='0')),
                ('ExpectedDeposit', models.IntegerField(default='0')),
                ('PreferredTenants', models.CharField(default='-', max_length=50)),
                ('TotalFloor', models.CharField(default='-', max_length=50)),
                ('PropertyAge', models.CharField(default='-', max_length=50)),
                ('HouseLength', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('HouseWidth', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('HousePlotArea', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('HouseCent', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('LandLength', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('LandWidth', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('LandPlotArea', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('LandCent', models.DecimalField(decimal_places=2, default='0', max_digits=10)),
                ('ExpectedPrice', models.IntegerField(default='0')),
                ('Description', models.CharField(default='-', max_length=50)),
                ('ExpectedLease', models.IntegerField(default='0')),
                ('ExpectedLeaseDuration', models.CharField(default='-', max_length=50)),
                ('Maintenance', models.CharField(default='-', max_length=50)),
                ('Terms', models.CharField(default='-', max_length=1000)),
                ('Type', models.CharField(max_length=10)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Created_at', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'db_table': 'residential_records',
            },
        ),
        migrations.CreateModel(
            name='ResidentialLease',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BhkType', models.CharField(max_length=50)),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Floor', models.CharField(max_length=50)),
                ('HouseType', models.CharField(max_length=50)),
                ('Parking', models.CharField(max_length=50)),
                ('Terrace', models.CharField(max_length=50)),
                ('Hall', models.CharField(max_length=50)),
                ('Bedroom', models.CharField(max_length=50)),
                ('Bathroom', models.CharField(max_length=50)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedLease', models.IntegerField()),
                ('ExpectedLeaseDuration', models.CharField(max_length=50)),
                ('Maintenance', models.CharField(max_length=50)),
                ('Terms', models.CharField(max_length=1000)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Created_at', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'db_table': 'residential_lease',
            },
        ),
        migrations.CreateModel(
            name='ResidentialRent',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BhkType', models.CharField(max_length=50)),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Floor', models.CharField(max_length=50)),
                ('HouseType', models.CharField(max_length=30)),
                ('Parking', models.CharField(max_length=50)),
                ('Terrace', models.CharField(max_length=50)),
                ('Hall', models.CharField(max_length=50)),
                ('Bedroom', models.CharField(max_length=50)),
                ('Bathroom', models.CharField(max_length=50)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedRent', models.IntegerField()),
                ('ExpectedDepositMonths', models.IntegerField()),
                ('ExpectedDeposit', models.IntegerField()),
                ('Maintenance', models.CharField(max_length=50)),
                ('PreferredTenants', models.CharField(max_length=50)),
                ('Terms', models.CharField(max_length=1000)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Created_at', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'db_table': 'residential_rent',
            },
        ),
        migrations.CreateModel(
            name='ResidentialResale',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BhkType', models.CharField(max_length=50)),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('TotalFloor', models.CharField(max_length=50)),
                ('PropertyAge', models.CharField(max_length=50)),
                ('HouseLength', models.FloatField()),
                ('HouseWidth', models.FloatField()),
                ('HousePlotArea', models.FloatField()),
                ('HouseCent', models.FloatField()),
                ('LandLength', models.FloatField()),
                ('LandWidth', models.FloatField()),
                ('LandPlotArea', models.FloatField()),
                ('LandCent', models.FloatField()),
                ('Parking', models.CharField(max_length=50)),
                ('Terrace', models.CharField(max_length=50)),
                ('Hall', models.CharField(max_length=50)),
                ('Bedroom', models.CharField(max_length=50)),
                ('Bathroom', models.CharField(max_length=50)),
                ('District', models.CharField(max_length=50)),
                ('Town', models.CharField(max_length=50)),
                ('Street', models.CharField(max_length=50)),
                ('ExpectedPrice', models.IntegerField()),
                ('Description', models.CharField(max_length=50)),
                ('PrimaryNumber', models.CharField(max_length=20)),
                ('SecondaryNumber', models.CharField(max_length=20)),
                ('Created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'residential_resale',
            },
        ),
        migrations.CreateModel(
            name='SignupDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Username', models.CharField(max_length=95)),
                ('Email', models.EmailField(max_length=254, validators=[django.core.validators.EmailValidator()])),
                ('Password', models.CharField(max_length=128)),
                ('Created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'signup_details',
            },
        ),
    ]
