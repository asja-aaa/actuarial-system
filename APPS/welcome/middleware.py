# !/usr/bin/env python
# -*- coding: utf-8 -*-
from django.shortcuts import HttpResponseRedirect, render
import re
try:
    from django.utils.deprecation import MiddlewareMixin  # Django 1.10.x
except ImportError:
    MiddlewareMixin = object  # Django 1.4.x - Django 1.9.x


class LoginMiddleware(MiddlewareMixin):

    def process_request(self, request):
        if re.match("^/homepage*",request.path):
            if request.session.get('name', None):
                pass
            else:
                return render(request, 'welcome/index.html', {'Msg': '请先登录!'})

    def process_response(self, request, response):
        return response