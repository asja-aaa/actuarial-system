from django.shortcuts import render
from django.template import loader
# Create your views here.

def groupinsur(requests):
    return render(requests,loader.get_template('HomePage/GroupInsur.html'))

def homepage(requests):
    return render(requests,loader.get_template('HomePage/homePage1.0.html'))

def personinsur(requests):
    return render(requests,loader.get_template('HomePage/PersonInsur.html'))