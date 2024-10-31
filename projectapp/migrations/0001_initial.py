# Generated by Django 4.2.16 on 2024-10-22 16:57

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(null=True, upload_to='project/')),
                ('title', models.CharField(max_length=20)),
                ('description', models.TextField(max_length=200, null=True)),
                ('created_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
