from django.urls import path
from . import views

app_name = 'customer'
urlpatterns = [
    path('bankcard/', views.bankcard,name='bankcard'),
    path('companyinsurance/',views.companyinsurance,name='companyinsurance'),
    path('cusinfo/',views.cusinfo,name='cusinfo'),
    path('customerindex/',views.customerindex,name='customerindex'),
    path('passchange/',views.passchange,name='passchange'),
    path('selfclaim/',views.selfclaim,name='selfclaim'),
    path('button2/',views.button2,name='button2'),
    path('success/',views.success,name='success'),
    path('selfinsmodify/',views.selfinsmodify,name='selfinsmodify'),
    path('selfmsgmodify/',views.selfmsgmodify,name='selfmsgmodify'),
    path('teamins/',views.teamins,name='teamins'),
    path('claiminquiry/',views.claiminquiry,name='claiminquiry'),
    path('teaminsbuy/',views.teaminsbuy,name='teaminsbuy'),
    path('msgmodisucsess/',views.msgmodisucsess,name='msgmodisucsess'),
    path('modifypswd/',views.modifypswd,name='modifypswd'),
    path('bankcards/',views.bankcards,name='bankcards'),
    path('cardadmin/',views.cardadmin,name='cardadmin'),
    path('staff/',views.staff,name='staff'),
    path('selfinqury/',views.selfinqury,name='selfinqury'),
    path('insurancesearch/',views.insurancesearch,name='insurancesearch')


]