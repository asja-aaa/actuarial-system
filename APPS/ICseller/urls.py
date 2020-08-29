from django.urls import path
from . import views

app_name = 'icseller'
urlpatterns = [
    path('companycollect/', views.companycollect,name='companycollect'),
    path('companyinfo/',views.companyinfo,name='companyinfo'),
    path('grouporder/',views.grouporder,name='grouporder'),
    path('managerpage/',views.managerpage,name='managerpage'),
    path('personorder/',views.personorder,name='personorder'),
    path('searchpro/',views.searchpro,name='searchpro'),

]