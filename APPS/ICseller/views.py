from django.shortcuts import render
from django.template import loader
# Create your views here.
def companycollect(requests):
    return render(requests,loader.get_template('ICseller/companycollect.html'))

def companyinfo(requests):
    return render(requests,loader.get_template('ICseller/companyinfo.html'))

def grouporder(requests):
    return render(requests,loader.get_template('ICseller/grouporder.html'))

def managerpage(requests):
    return render(requests,loader.get_template('ICseller/managerPage.html'))

def personorder(requests):
    return render(requests,loader.get_template('ICseller/PersonOrder.html'))

def searchpro(requests):
    return render(requests,loader.get_template('ICseller/searchpro.html'))