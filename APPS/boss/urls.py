from django.urls import path
from . import views

urlpatterns = [
    path('boss/', views.boss,name='boss'),
    path('bossreply/',views.bossreply,name='bossreply')
]