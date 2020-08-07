from django.urls import path
from . import views

urlpatterns = [
    path('cuslogin/', views.cuslogin,name='cuslogin'),
    path('enter/',views.enter,name='enter'),
]