from django.urls import path
from . import views

urlpatterns = [
    path('departchecklc/', views.departchecklc,name='departchecklc'),
    path('departmentmanager/',views.departmentmanager,name='departmentmanager'),
    path('departreply/',views.departreply,name='departreply'),
    path('departstatment/',views.departstatment,name='departstatment'),
    path('test/',views.test,name='test'),
    path('test2020_1_13/',views.test2020_1_13,name='test2020_1_13'),

]