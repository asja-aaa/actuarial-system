from django.shortcuts import render
from django.template import loader
# Create your views here.

def departchecklc(requests):
    return render(requests,loader.get_template('DepartmentManager/DepartCheckIc.html'))

def departmentmanager(requests):
    return render(requests,loader.get_template('DepartmentManager/departmentManager.html'))

def departreply(requests):
    return render(requests,loader.get_template('DepartmentManager/DepartReply.html'))

def departstatment(requests):
    return render(requests,loader.get_template('DepartmentManager/DepartStatment.html'))

def test(requests):
    return render(requests,loader.get_template('DepartmentManager/test.html'))

def test2020_1_13(requests):
    return render(requests,loader.get_template('DepartmentManager/test2020_1_13.html'))
