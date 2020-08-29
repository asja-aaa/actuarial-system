from django.urls import path
from . import views

app_name = 'boss'
urlpatterns = [
    path('boss/', views.boss,name='boss'),
    path('bossreply/',views.bossreply,name='bossreply')
]