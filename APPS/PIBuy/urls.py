from django.urls import path
from . import views

urlpatterns = [
    path('cus1buy/', views.cus1buy,name='cus1buy'),
    path('cusbuyteam/',views.cusbuyteam,name='cusbuyteam'),
    path('cusconfirm/',views.cusconfirm,name='cusconfirm'),
]