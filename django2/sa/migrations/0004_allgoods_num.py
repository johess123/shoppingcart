# Generated by Django 3.2.13 on 2022-10-31 05:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0003_allgoods_uid'),
    ]

    operations = [
        migrations.AddField(
            model_name='allgoods',
            name='num',
            field=models.DecimalField(decimal_places=0, default=0, max_digits=10),
        ),
    ]