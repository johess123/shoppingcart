# Generated by Django 3.2.13 on 2022-10-31 07:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sa', '0006_allcart'),
    ]

    operations = [
        migrations.AddField(
            model_name='allcart',
            name='gid',
            field=models.DecimalField(decimal_places=0, default=0, max_digits=10),
        ),
    ]
