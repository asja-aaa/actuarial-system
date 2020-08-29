from django.shortcuts import render
from django.template import loader
# Create your views here.

def bankcard(requests):
    return render(requests,'Customer/bankCard.html')

def companyinsurance(requests):
    return render(requests,'Customer/companyInsurance.html')

def cusinfo(requests):
    return render(requests,'Customer/cusInfo.html')

def customerindex(requests):
    return render(requests,'Customer/customerIndex.html')

def passchange(requests):
    return render(requests,'Customer/passChange.html')

def selfclaim(requests):
    return render(requests,'Customer/selfClaim.html')

def button2(requests):
    return render(requests,'Customer/button2.html')

def success(requests):
    return render(requests,'Customer/success.html')

def selfinsmodify(requests):
    return render(requests,'Customer/selfinsmodify.html')

def selfmsgmodify(requests):
    return render(requests,'Customer/selfmsgmodify.html')

def teamins(requests):
    return render(requests,'Customer/teamins.html')

def claiminquiry(requests):
    return render(requests,'Customer/claiminquiry.html')

def teaminsbuy(requests):
    return render(requests,'Customer/teaminsbuy.html')

def msgmodisucsess(requests):
    return render(requests,'Customer/msgmodisucsess.html')

def modifypswd(requests):
    return render(requests,'Customer/modifypswd.html')

def bankcards(requests):
    return render(requests,'Customer/backcards.html')

def cardadmin(requests):
    return render(requests,'Customer/cardadmin.html')

def staff(requests):
    return render(requests,'Customer/staff.html')

def selfinqury(requests):
    return render(requests,'Customer/selfinqury.html')

def insurancesearch(requests):
    return render(requests,'Customer/insuranceSearch.html')




