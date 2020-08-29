from django.shortcuts import render
from django.template import loader
# Create your views here.

def boss(requests):
    return render(requests,'boss/boss.html')

def bossreply(requests):
    return render(requests,'boss/BossReply.html')