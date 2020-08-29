from django.urls import path
from . import views

app_name = 'login'
urlpatterns = [
    path('cuslogin/', views.cuslogin,name='cuslogin'),
    path('enter/',views.enter,name='enter'),
]