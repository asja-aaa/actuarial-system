from django.urls import path
from . import views

urlpatterns = [
    path('groupinsur/', views.groupinsur,name='groupinsur'),
    path('homepage/',views.homepage,name='homepage'),
    path('personinsur/',views.personinsur,name='personinsur'),
]