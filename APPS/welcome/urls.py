from django.urls import path
from . import views


app_name = 'welcome'
urlpatterns = [
    path('index/',views.index,name='index'),
    path('',views.index),
    path('login/',views.login,name='login'),
    path('signup/',views.signup,name='signup')
]