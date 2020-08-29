from django.shortcuts import render
from django.template import loader
# Create your views here.
def about(requests):
    return render(requests,'AboutUs/about.html')

def index(requests):
    return render(requests,'AboutUs/index.html')

def joinUs(requests):
    return render(requests,'AboutUs/joinUs.html')

def news(requests):
    return render(requests,'AboutUs/news.html')

def recruit(requests):
    return render(requests,'AboutUs/recruit.html')

def contact(requests):
    return render(requests,'AboutUs/contact.html')