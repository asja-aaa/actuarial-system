from django.shortcuts import render
from django.http import HttpResponseRedirect
#from django.views import View
from Models import  post
from Models import  post_type
from Models import Insurance
from Models import insurance
import random

def home(requests):
    return render(requests, 'homepage/index.html')

def index(requests):
    insure=[]
    insures=Insurance.objects.all()
    indexes=random.sample(range(0, len(insures)-1), 9)
    for index in indexes:
        insure.append(insures[index])
    ins1=insure[0]
    ins2=insure[1]
    ins3=insure[2]
    ins4=insure[3]
    ins5=insure[4]
    ins6=insure[5]
    ins7=insure[6]
    ins8=insure[7]
    ins9=insure[8]
    
    s = requests.POST.get("name")
    y = requests.POST.get("password")
    print(s)
    print(y)
    return render(requests,'homepage/index.html',{'ins1':ins1,'ins2':ins2,'ins3':ins3,'ins4':ins4,'ins5':ins5,'ins6':ins6,'ins7':ins7,'ins8':ins8,'ins9':ins9})

def selfins(requests):
    insure=[]
    insures=Insurance.objects.filter(ins_type=0)
    indexes=random.sample(range(0, len(insures)-1), 9)
    for index in indexes:
        insure.append(insures[index])
    return render(requests,'homepage/selfins.html',{'insure':insure})

def teamins(requests):
    insure=[]
    insures=Insurance.objects.filter(ins_type=1)
    indexes=random.sample(range(0, len(insures)-1), 9)
    for index in indexes:
        insure.append(insures[index])
    return render(requests,'homepage/teamins.html',{'insure':insure})

def inshelp(requests):
    return render(requests,'homepage/inshelp.html')

def blog(requests):

    return render(requests,'homepage/blog.html')

def blogdetial(requests):
    return render(requests, 'homepage/blogdetial.html')

def contact(requests):
    return render(requests,'homepage/contact.html')

def customins(requests):
    return render(requests,'homepage/customins.html')

def test(requests):
    return render(requests,'homepage/ddddddd.html')

def logout(requests):
    # 删除当前会话的session
    requests.session.flush()
    return render(requests,'welcome/index.html')

    