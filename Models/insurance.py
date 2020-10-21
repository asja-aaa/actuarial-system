# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Insurance(models.Model):
    ins_id = models.IntegerField(primary_key=True)
    ins_initiator_id = models.CharField(max_length=10)
    ins_name = models.CharField(max_length=255)
    ins_pay = models.CharField(max_length=255)
    ins_profit = models.CharField(max_length=255)
    ins_period = models.CharField(max_length=45, blank=True, null=True)
    ins_ad = models.CharField(max_length=255, blank=True, null=True)
    ins_type = models.ForeignKey('InsuranceType', models.DO_NOTHING, db_column='ins_type')

    class Meta:
        managed = False
        db_table = 'insurance'
        app_label = 'homepage'

    