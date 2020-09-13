from django.shortcuts import render
import Models
# Create your views here.
def index(requests):
    return render(requests,'welcome/index.html')


def login(requests):
    name = requests.POST.get('name')
    password = requests.POST.get('password')
    print(name)
    print(password)
    if Models.find_name_password(name,password):
        return render(requests,'homepage/index.html')
    else:
        return render(requests,'welcome/index.html',{'Msg':'账号名或密码输入错误，请重新输入'})





