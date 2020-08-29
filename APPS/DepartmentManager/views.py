from django.shortcuts import render
from django.template import loader
# Create your views here.

def departchecklc(requests):
    return render(requests,'DepartmentManager/DepartCheckIc.html')

def departmentmanager(requests):
    return render(requests,'DepartmentManager/departmentManager.html')

def departreply(requests):
    return render(requests,'DepartmentManager/DepartReply.html')

def departstatment(requests):
    return render(requests,'DepartmentManager/DepartStatment.html')

def test(requests):
    return render(requests,'DepartmentManager/test.html')

def test2020_1_13(requests):
    return render(requests,'DepartmentManager/test2020_1_13.html')
