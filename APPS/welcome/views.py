from django.shortcuts import render
import Models.user
from Models import Insurance
from Models import insurance
import random
# Create your views here.
def index(requests):
    return render(requests,'welcome/index.html')


def login(requests):
    name = requests.POST.get('name')
    password = requests.POST.get('password')
    user = Models.User.objects.filter(user_name=name,user_password=password)
    if user:
        insure=[]
        insures=Insurance.objects.all()
        indexes=random.sample(range(0, len(insures)-1), 3)
        for index in indexes:
            insure.append(insures[index])
        ins1=insure[0]
        ins2=insure[1]
        ins3=insure[2]
        # 添加session 一周后过期
        requests.session[name] = user[0].user_id
        requests.session.set_expiry(604800)
        return render(requests,'homepage/index.html',{'user':user[0],'ins1':ins1,'ins2':ins2,'ins3':ins3})
    else:
        return render(requests,'welcome/index.html',{'Msg':'账号名或密码输入错误，请重新输入'})