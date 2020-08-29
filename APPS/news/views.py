from django.shortcuts import render
from django.template import loader
# Create your views here.

def news(requests):
    return render(requests,'news/news.html')
