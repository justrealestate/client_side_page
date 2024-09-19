from django.shortcuts import render,redirect
from . import databases
from .models import *
import re


def signup(request):
    return render(request,"signup.html")

def signup_verification(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        emailid = request.POST.get('email')
        password = request.POST.get('password')

        if SignupDetails.objects.raw('SELECT * FROM signup_details WHERE Email = %s',[emailid]):   
            context = {
                'info' : 'Your already register'
            }
            return render(request,'signup.html',context)
    
        else:
            signup = SignupDetails(
                Username = username,
                Email = emailid,
                Password = password
            )
            signup.save()
            return redirect('login')
            

    else:
        return render(request,'signup.html',{'error' : 'Something went Wrong'})       
        


def login(request):
    return render(request,"login.html")


def login_verification(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')

        if SignupDetails.objects.raw('SELECT * FROM signup_details WHERE Email =%s && Password =%s',[email,password]):
            login = LoginDetails(
                Email = email,
                Password = password
            )
            login.save()
            request.session['email'] = email
            return redirect('index')
        
        else:
            return render(request,'login.html',{'error':'Invalid Input'})
            
    else:
        return render(request,'signup.html',{'error' : 'Something went Wrong'})  