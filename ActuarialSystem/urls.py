"""ActuarialSystem URL Configuration

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
    path('aboutus/', include('APPS.aboutus.urls',namespace='aboutus')),
    path('boss/', include('APPS.boss.urls',namespace='boss')),
    path('buyermanager/', include('APPS.buyermanager.urls',namespace='buyermanager')),
    path('customer/', include('APPS.customer.urls',namespace='customer')),
    path('departmentmanager/', include('APPS.departmentmanager.urls',namespace='departmentmanager')),
    path('finance/', include('APPS.finance.urls',namespace='finance')),
    path('homepage/', include('APPS.homepage.urls',namespace='homepage')),
    path('icseller', include('APPS.icseller.urls',namespace='icseller')),
    path('login/', include('APPS.login.urls',namespace='login')),
    path('news/', include('APPS.news.urls', namespace='news')),
    path('pibuy/', include('APPS.pibuy.urls', namespace='pibuy')),
    
]

