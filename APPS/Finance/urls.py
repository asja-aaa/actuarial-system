from django.urls import path
from . import views

app_name = 'finance'
urlpatterns = [
    path('frame/', views.frame,name='frame'),
    path('table/',views.table,name='table'),
]