from django.shortcuts import render
from django.template import loader
# Create your views here.

def frame(requests):
    return render(requests,loader.get_template('Finance/Frame.html'))

def table(requests):
    return render(requests,loader.get_template('Finance/table.html'))