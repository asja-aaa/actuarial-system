from django.shortcuts import render
from django.template import loader
# Create your views here.

def boss(requests):
    return render(requests,loader.get_template('boss/boss.html'))

def bossreply(requests):
    return render(requests,loader.get_template('boss/BossReply.html'))