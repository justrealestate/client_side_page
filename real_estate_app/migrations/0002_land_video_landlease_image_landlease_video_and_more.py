# Generated by Django 4.0 on 2024-09-26 11:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('real_estate_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='land',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/land/land_records'),
        ),
        migrations.AddField(
            model_name='landlease',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/land/land_lease'),
        ),
        migrations.AddField(
            model_name='landlease',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/land/land_lease'),
        ),
        migrations.AddField(
            model_name='landrent',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/land/land_rent'),
        ),
        migrations.AddField(
            model_name='landresale',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/land/land_resale'),
        ),
        migrations.AddField(
            model_name='landresale',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/land/land_resale'),
        ),
        migrations.AddField(
            model_name='residential',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/residential/residential_records'),
        ),
        migrations.AddField(
            model_name='residentiallease',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/residential/residential_lease'),
        ),
        migrations.AddField(
            model_name='residentiallease',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/residential/residential_lease'),
        ),
        migrations.AddField(
            model_name='residentialrent',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/residential/residential_rent'),
        ),
        migrations.AddField(
            model_name='residentialresale',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/residential/residential_resale'),
        ),
        migrations.AddField(
            model_name='residentialresale',
            name='Video',
            field=models.FileField(null=True, upload_to='videos/residential/residential_resale'),
        ),
        migrations.AlterField(
            model_name='land',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/land/land_records'),
        ),
        migrations.AlterField(
            model_name='landrent',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/land/land_rent'),
        ),
        migrations.AlterField(
            model_name='residential',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/residential/residential_records'),
        ),
        migrations.AlterField(
            model_name='residentialrent',
            name='Image',
            field=models.ImageField(null=True, upload_to='images/residential/residential_rent'),
        ),
    ]
