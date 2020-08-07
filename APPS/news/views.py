from django.shortcuts import render
from django.template import loader
# Create your views here.

def news(requests):
    return render(requests,loader.get_template('news/news.html'))
