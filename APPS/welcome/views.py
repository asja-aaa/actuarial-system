from django.shortcuts import render

from APPS.welcome import utils
from model.models import User, UserType
import random

# Create your views here.
def index(requests):
    return render(requests,'welcome/index.html')


def login(requests):
    name = requests.POST.get('name')
    password = requests.POST.get('password')
    user = User.objects.filter(user_name=name,user_password=password)
    if user:
        # 添加session 一周后过期
        requests.session['id'] = user[0].user_id
        requests.session['name'] = user[0].user_name
        requests.session.set_expiry(604800)
        return render(requests,'homepage/index.html')
    else:
        return render(requests,'welcome/index.html',{'Msg':'账号名或密码输入错误，请重新输入'})


def signup(requests):
    name = requests.POST.get('name')
    pwd = requests.POST.get('password')
    mail = requests.POST.get('email')
    id = utils.utils.get_random_user_id()
    type = UserType(usertype_id=0,usertype_name='管理员')
    try:
        user = User.objects.create(user_id=id, user_name=name, user_password=pwd, user_type=type, user_gender=0,
                    user_email=mail)
    except:
        return render(requests,'welcome/index.html',{'Msg':'账号注册发生异常，请重新尝试'})
    else:
        requests.session['id'] = id
        requests.session['name'] = name
        requests.session.set_expiry(604800)
        return render(requests, 'homepage/index.html')












