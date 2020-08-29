from django.urls import path
from . import views

app_name = 'buyermanager'
urlpatterns = [
    path('assignaccount/', views.assignaccount,name='assignaccount'),
    path('checkfile/',views.checkfile,name='checkfile'),
    path('closeaccount/',views.closeaccount,name='closeaccount'),
    path('department/',views.department,name='department'),
    path('frame/',views.frame,name='frame'),
    path('password/',views.password,name='password'),
    path('test/',views.test,name='test'),
    path('viewdetail/',views.viewdetail,name='viewdetail')
]