from django.db import models



# Create your models here.

class test(models.Model):
    tname = models.CharField(max_length=10)
    tage = models.IntegerField()



