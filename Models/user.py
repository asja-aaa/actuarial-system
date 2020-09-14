# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class User(models.Model):
    user_id = models.CharField(primary_key=True, max_length=10)
    user_name = models.CharField(unique=True, max_length=20)
    user_password = models.CharField(max_length=20)
    user_type = models.ForeignKey('UserType', models.DO_NOTHING, db_column='user_type')
    user_gender = models.IntegerField(blank=True, null=True)
    user_phone = models.CharField(unique=True, max_length=20, blank=True, null=True)
    user_email = models.CharField(unique=True, max_length=40, blank=True, null=True)
    user_icon = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'
        app_label = 'welcome'


