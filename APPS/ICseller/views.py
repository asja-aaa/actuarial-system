from django.shortcuts import render
from django.template import loader
# Create your views here.
def companycollect(requests):
    return render(requests,'ICseller/companycollect.html')

def companyinfo(requests):
    return render(requests,'ICseller/companyinfo.html')

def grouporder(requests):
    return render(requests,'ICseller/grouporder.html')

def managerpage(requests):
    return render(requests,'ICseller/managerPage.html')

def personorder(requests):
    return render(requests,'ICseller/PersonOrder.html')

def searchpro(requests):
    return render(requests,'ICseller/searchpro.html')