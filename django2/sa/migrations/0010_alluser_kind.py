# Generated by Django 3.2.13 on 2022-10-31 09:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0009_alldeliver'),
    ]

    operations = [
        migrations.AddField(
            model_name='alluser',
            name='kind',
            field=models.CharField(default=0, max_length=1),
            preserve_default=False,
        ),
    ]
