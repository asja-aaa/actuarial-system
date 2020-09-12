from django.urls import path
from . import views


app_name = 'homepage'
urlpatterns = [
    path('home/',views.home,name='home'),
    path('',views.index,name='index'),
    path('selfins/',views.selfins,name='selfins'),
    path('teamins/',views.teamins,name='teamins'),
    path('blog/',views.blog,name='blog'),
    path('blogdetial/',views.blogdetial,name='blogdetial'),
    path('inshelp/',views.inshelp,name='inshelp'),
    path('contact/',views.contact,name='contact'),
    path('customins/',views.customins,name='customins'),
    path('test/',views.test,name='test'),


]