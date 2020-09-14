from django.shortcuts import render
import Models.user
# Create your views here.
def index(requests):
    return render(requests,'welcome/index.html')


def login(requests):
    name = requests.POST.get('name')
    password = requests.POST.get('password')
    user = Models.User.objects.filter(user_name=name,user_password=password)
    if user:
        # 添加session 一周后过期
        requests.session[name] = user[0].user_id
        requests.session.set_expiry(604800)
        return render(requests,'homepage/index.html',{'user':user[0]})
    else:
        return render(requests,'welcome/index.html',{'Msg':'账号名或密码输入错误，请重新输入'})





