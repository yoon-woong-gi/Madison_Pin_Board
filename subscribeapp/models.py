from django.contrib.auth.models import User
from django.db import models

from projectapp.models import Project


# Create your models here.

class Subscription(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='subscribtion')
    project = models.ForeignKey(Project, on_delete=models.CASCADE, related_name='subscribtion')

    class Meta:
        unique_together = ('user', 'project')

