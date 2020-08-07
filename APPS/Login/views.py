from django.shortcuts import render
from django.template import loader
# Create your views here.

def cuslogin(requests):
    return render(requests,loader.get_template('Login/cusLogin.html'))

def enter(requests):
    return render(requests,loader.get_template('Login/enter.html'))