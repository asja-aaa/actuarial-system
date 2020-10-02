from django.db import models

class InsuranceSubtype(models.Model):
    ins_subtype_id = models.CharField(primary_key=True, max_length=10)
    ins_subtype_name = models.CharField(max_length=255)
    instype = models.ForeignKey('InsuranceType', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'insurance_subtype'
        app_label = 'welcome'
