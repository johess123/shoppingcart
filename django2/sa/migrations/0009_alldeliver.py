# Generated by Django 3.2.13 on 2022-10-31 08:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0008_allcart_paid'),
    ]

    operations = [
        migrations.CreateModel(
            name='alldeliver',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('uid', models.CharField(max_length=10)),
                ('cid', models.CharField(max_length=10)),
            ],
        ),
    ]
