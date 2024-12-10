from django.shortcuts import render,redirect
from django.http import JsonResponse
from .models import *
from datetime import datetime 
import random


num = str(random.randint(1000, 9999))
customer_month = str(datetime.now().month)
customer_year = str(datetime.now().year)



def signup(request):
    return render(request,"signup.html")

def signup_verification(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        email = request.POST.get('email')
        password = request.POST.get('password')
        customer_id = 'CUS' + num + customer_month + customer_year   
        
        if SignupDetails.objects.filter(Email = email):
            return JsonResponse({'success': False, 'message': 'Username already exists'}, status=409)
        
        else:
            signup = SignupDetails(
                Username = username,
                Email = email,
                Password = password,
                Customer_id =  customer_id
            )
            signup.save()
            
            return JsonResponse({'success': True, 'message': 'Registration successful'}, status=200)
            

    else:
        return JsonResponse({'success': False, 'message': 'Invalid request method'}, status=405)
        


def login(request):
    return render(request,"login.html")


def login_verification(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')

        check = SignupDetails.objects.filter(Email = email,Password = password)
        if check:
            login = LoginDetails(
                Email = email,
                Password = password
            )
            login.save()
            request.session['email'] = email
            request.session['customer_id'] = 'CUS9379112024'
            return JsonResponse({'success': True, 'message': 'Login successful'}, status=200)
        
        else:
            return JsonResponse({'success': False, 'message': 'Invalid request method'}, status=405)
            
    else:
        return JsonResponse({'success': False, 'message': 'Invalid request method'}, status=405)