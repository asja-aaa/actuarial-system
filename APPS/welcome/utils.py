# -*- coding: utf-8 -*-
# @Time : 2021/3/12 14:55
# @Author : ASJA
# @description TODO
# @File : utils.py
import time
import random
class utils:

    @classmethod
    def get_random_user_id(cls):
        ticks = str(time.time())[6:10]+str(random.randint(10,99))
        return ticks

