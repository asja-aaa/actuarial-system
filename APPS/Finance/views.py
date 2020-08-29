from django.shortcuts import render
from django.template import loader
# Create your views here.

def frame(requests):
    return render(requests,'Finance/Frame.html')

def table(requests):
    return render(requests,'Finance/table.html')