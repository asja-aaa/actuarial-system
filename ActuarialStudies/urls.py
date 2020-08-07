"""ActuarialStudies URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('test/', include('APPS.testApp.urls',namespace='test')),
    path('aboutus/',include('APPS.AboutUs.urls',namespace='aboutus')),
    path('boss/',include('APPS.boss.urls',namespace='boss')),
    path('buyermanager/',include('APPS.BuyerManager',namespace='buyermanager')),
    path('customer/',include('APPS.Customer',namespace='customer')),
    path('departmentmanager/',include('APPS.DepartmentManager',namespace='departmentmanager')),
    path('finance/',include('APPS.Finance',namespace='finance')),
    path('homepage/',include('APPS.HomePage',namespace='homepage')),
    path('icseller',include('APPS.ICseller',namespace='icseller')),
    path('login/',include('APPS.Login',namespace='login')),
    path('news/',include('APPS.news',namespace='news')),
    path('pibuy/',include('APPS.PIBuy',namespace='pibuy')),
]
