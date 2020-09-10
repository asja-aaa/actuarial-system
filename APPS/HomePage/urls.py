from django.urls import path
from . import views

app_name = 'homepage'
urlpatterns = [
    path('home/',views.home,name='home'),
    path('',views.index,name='index'),
]