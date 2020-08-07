from django.shortcuts import render
from django.template import loader
# Create your views here.
def about(requests):
    return render(requests,loader.get_template('AboutUs/about.html'))

def index(requests):
    return render(requests,loader.get_template('AboutUs/index.html'))

def joinUs(requests):
    return render(requests,loader.get_template('AboutUs/joinUs.html'))

def news(requests):
    return render(requests,loader.get_template('AboutUs/news.html'))

def recruit(requests):
    return render(requests,loader.get_template('AboutUs/recruit.html'))

def contact(requests):
    return render(requests,loader.get_template('AboutUs/contact.html'))