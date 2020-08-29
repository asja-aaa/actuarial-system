from django.shortcuts import render
# Create your views here.

def assignaccount(requests):
    return render(requests,'BuyerManger/AssignAccount.html')

def checkfile(requests):
    return render(requests,'BuyerManger/CheckFile.html')

def closeaccount(requests):
    return render(requests,'BuyerManger/CloseAccount.html')

def department(requests):
    return render(requests,'BuyerManger/Department.html')

def frame(requests):
    return render(requests,'BuyerManger/Frame.html')

def password(requests):
    return render(requests,'BuyerManger/Password.html')

def test(requests):
    return render(requests,'BuyerManger/test.html')

def viewdetail(requests):
    return render(requests,'BuyerManger/ViewDetail.html')
