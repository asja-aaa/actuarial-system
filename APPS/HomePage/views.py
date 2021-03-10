from django.shortcuts import render
from model.models import Blog
from django.http import HttpResponseRedirect
# Create your views here.
from model import models

def home(requests):
    return render(requests, 'homepage/index.html')

def index(requests):
    return render(requests,'homepage/index.html')

def selfins(requests):
    return render(requests,'homepage/selfins.html')

def teamins(requests):
    s = requests.session
    return render(requests,'homepage/teamins.html')

def inshelp(requests):
    return render(requests,'homepage/inshelp.html')

def blog(requests):
    blogs = Blog.objects.all()
    return render(requests,'homepage/blog.html',{'blogs':blogs})

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
