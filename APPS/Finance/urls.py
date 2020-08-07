from django.urls import path
from . import views

urlpatterns = [
    path('frame/', views.frame,name='frame'),
    path('table/',views.table,name='table'),
]