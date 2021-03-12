
# Register your models here.
from django.contrib import admin
from .models import User
from .models import UserType
from .models import Insurance
from .models import InsuranceType
from .models import Post
from .models import PostType
from .models import Blog
# Register your models here.

admin.site.site_header = '北邮太平后台管理'
admin.site.site_title = '北邮太平后台管理'

class PersonalAdmin(admin.ModelAdmin):

    '''设置列表可显示的字段'''
    list_display = ('user_id', 'user_name','user_gender','user_phone','user_email',)


    '''每页显示条目数'''
    list_per_page = 10


    '''按发布日期排序'''
    ordering = ('user_id',)





admin.site.register(User,PersonalAdmin)
admin.site.register(UserType)
admin.site.register(Insurance)
admin.site.register(InsuranceType)
admin.site.register(Post)
admin.site.register(PostType)

