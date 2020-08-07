from django.shortcuts import render
from django.template import loader
# Create your views here.

def bankcard(requests):
    return render(requests,loader.get_template('Customer/bankCard.html'))

def companyinsurance(requests):
    return render(requests,loader.get_template('Customer/companyInsurance.html'))

def cusinfo(requests):
    return render(requests,loader.get_template('Customer/cusInfo.html'))

def customerindex(requests):
    return render(requests,loader.get_template('Customer/customerIndex.html'))

def passchange(requests):
    return render(requests,loader.get_template('Customer/passChange.html'))

def selfclaim(requests):
    return render(requests,loader.get_template('Customer/selfClaim.html'))

def button2(requests):
    return render(requests,loader.get_template('Customer/button2.html'))

def success(requests):
    return render(requests,loader.get_template('Customer/success.html'))

def selfinsmodify(requests):
    return render(requests,loader.get_template('Customer/selfinsmodify.html'))

def selfmsgmodify(requests):
    return render(requests,loader.get_template('Customer/selfmsgmodify.html'))

def teamins(requests):
    return render(requests,loader.get_template('Customer/teamins.html'))

def claiminquiry(requests):
    return render(requests,loader.get_template('Customer/claiminquiry.html'))

def teaminsbuy(requests):
    return render(requests,loader.get_template('Customer/teaminsbuy.html'))

def msgmodisucsess(requests):
    return render(requests,loader.get_template('Customer/msgmodisucsess.html'))

def modifypswd(requests):
    return render(requests,loader.get_template('Customer/modifypswd.html'))

def bankcards(requests):
    return render(requests,loader.get_template('Customer/backcards.html'))

def cardadmin(requests):
    return render(requests,loader.get_template('Customer/cardadmin.html'))

def staff(requests):
    return render(requests,loader.get_template('Customer/staff.html'))

def selfinqury(requests):
    return render(requests,loader.get_template('Customer/selfinqury.html'))

def insurancesearch(requests):
    return render(requests,loader.get_template('Customer/insuranceSearch.html'))




