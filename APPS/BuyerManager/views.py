from django.shortcuts import render
from django.template import loader
# Create your views here.

def assignaccount(requests):
    return render(requests,loader.get_template('BuyerManger/AssignAccount.html'))

def checkfile(requests):
    return render(requests,loader.get_template('BuyerManger/CheckFile.html'))

def closeaccount(requests):
    return render(requests,loader.get_template('BuyerManger/CloseAccount.html'))

def department(requests):
    return render(requests,loader.get_template('BuyerManger/Department.html'))

def frame(requests):
    return render(requests,loader.get_template('BuyerManger/Frame.html'))

def password(requests):
    return render(requests,loader.get_template('BuyerManger/Password.html'))

def test(requests):
    return render(requests,loader.get_template('BuyerManger/test.html'))

def viewdetail(requests):
    return render(requests,loader.get_template('BuyerManger/ViewDetail.html'))
