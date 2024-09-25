from django.db import models

# python manage.py makemigrations
# python manage.py migrate

class HelloWorld(models.Model):
    text = models.CharField(max_length=255, null=False)

