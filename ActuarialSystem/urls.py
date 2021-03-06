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

admin.site.login_bg = 'https://pic4.zhimg.com/v2-73b8307b2db44c617f4e8515ce67dd39_r.jpg'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('homepage/', include('APPS.HomePage.urls',namespace='homepage')),
    path('welcome/',include('APPS.welcome.urls',namespace='welcome')),
    path('',include('APPS.welcome.urls')),
    
]

