# Generated by Django 3.2.13 on 2022-10-31 04:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0002_alluser'),
    ]

    operations = [
        migrations.AddField(
            model_name='allgoods',
            name='uid',
            field=models.CharField(default=0, max_length=10),
            preserve_default=False,
        ),
    ]
