# Generated by Django 3.2.13 on 2022-10-30 10:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='alluser',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('uid', models.CharField(max_length=10)),
                ('pw', models.CharField(max_length=10)),
            ],
        ),
    ]