from django.shortcuts import render
from django.template import loader
# Create your views here.



def home(requests):
    return render(requests, 'home/home.html')

def index(requests):
    return render(requests,'home/index.html')
