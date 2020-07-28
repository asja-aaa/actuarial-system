from django.contrib import admin
from .testmodels import test
# Register your models here.


@admin.register(test)
class testAdmin(admin.ModelAdmin):

    # 展示列表页属性
    list_display = ['id', 'tname','tage']  # 显示字段设置
    list_filter = ['tname','tage']  # 过滤字段设置
    search_fields = ['tname']  # 搜索字段设置
    list_per_page = 10  # 分页设置
    ordering = ['id']  # 排序 默认增序  ‘-id’添加 -为降序

    # 默认点击第一字段的数据会进入编辑页面，也可以自己设置
    list_display_links = ['tname', 'tage']

    # 修改页面属性
    # fields = ['tname','tage']  # 规定属性的先后顺序
    # fieldsets = []  # 给属性分组 注意：fields与fieldsets不能同时使用

    # 设置执行按钮的位置
    # actions_on_top = False
    # actions_on_bottom = True

    # # list_editable 设置默认可编辑字段
    # list_editable = ['tname', 'tage']

    # # fk_fields 设置显示外键字段
    # fk_fields = ('foreign key',)



