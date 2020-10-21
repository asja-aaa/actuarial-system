from django.db import models

# Create your models here.
class User(models.Model):
    user_id = models.CharField(primary_key=True,  verbose_name='用户ID', max_length=10)
    user_name = models.CharField(unique=True, verbose_name='用户名', max_length=20)
    user_password = models.CharField(max_length=20)
    user_type = models.ForeignKey('UserType', models.DO_NOTHING, db_column='user_type')
    user_gender = models.IntegerField(blank=True, null=True,verbose_name='性别',)
    user_phone = models.CharField(unique=True, max_length=20, blank=True, null=True,verbose_name='电话',)
    user_email = models.CharField(unique=True, max_length=40, blank=True, null=True,verbose_name='邮箱',)
    user_icon = models.CharField(max_length=255, blank=True, null=True)

    class Meta:

        db_table = 'user'
        verbose_name_plural = '用户表'

class UserType(models.Model):
    usertype_id = models.IntegerField(primary_key=True,default=1)
    usertype_name = models.CharField(max_length=255)

    class Meta:

        db_table = 'user_type'
        verbose_name_plural = '用户类型表'

class Insurance(models.Model):
    ins_id = models.CharField(primary_key=True, max_length=10)
    ins_initiator_id = models.CharField(max_length=10)
    ins_type = models.ForeignKey('InsuranceType', models.DO_NOTHING, db_column='ins_type')
    ins_name = models.CharField(max_length=255)
    ins_pay = models.CharField(max_length=255)
    ins_profit = models.CharField(max_length=255)
    ins_picture = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'insurance'
        verbose_name_plural = '保险表'


class InsuranceType(models.Model):
    instype_id = models.IntegerField(primary_key=True)
    instype_name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'insurance_type'
        verbose_name_plural = '保险类型表'

class Post(models.Model):
    post_id = models.CharField(primary_key=True, max_length=10)
    post_time = models.DateTimeField()
    post_name = models.CharField(max_length=255)
    post_info = models.CharField(max_length=255, blank=True, null=True)
    post_looked = models.IntegerField(blank=True, null=True)
    post_lmsg = models.CharField(max_length=255, blank=True, null=True)
    post_type = models.CharField(max_length=50)
    post_picurl = models.CharField(max_length=255, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'post'
        verbose_name_plural = '帖子表'



class PostType(models.Model):
    post_type_id = models.CharField(primary_key=True, max_length=10)
    post_type_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'post_type'
        verbose_name_plural = '帖子类型表'

class InsuranceSubtype(models.Model):
    ins_subtype_id = models.CharField(primary_key=True, max_length=10)
    ins_subtype_name = models.CharField(max_length=255)
    instype = models.ForeignKey('InsuranceType', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'insurance_subtype'
        verbose_name_plural = '保险sub'
