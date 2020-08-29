from django.urls import path
from . import views

app_name = 'aboutus'
urlpatterns = [
    path('', views.index,name='blankindex'),
    path('about/',views.about,name='about'),
    path('joinus/',views.joinUs,name='joinus'),
    path('news/',views.news,name='news'),
    path('recruit/',views.recruit,name='recruit'),
    path('index/',views.index,name='index'),
    path('contact/',views.contact,name='contact'),
]