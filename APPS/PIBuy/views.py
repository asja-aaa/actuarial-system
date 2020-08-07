from django.shortcuts import render
from django.template import loader
# Create your views here.

def cus1buy(requests):
    return render(requests,loader.get_template('PIBuy/cus1Buy.html'))

def cusbuyteam(requests):
    return render(requests,loader.get_template('PIBuy/cusBuyteam.html'))

def cusconfirm(requests):
    return render(requests,loader.get_template('PIBuy/cusConfirm.html'))