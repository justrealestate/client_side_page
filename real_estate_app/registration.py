from django.shortcuts import render,redirect
from django.http import JsonResponse
from .models import *
import datetime

x = datetime.datetime.now()


def signup(request):
    return render(request,"signup.html")

def signup_verification(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        emailid = request.POST.get('email')
        password = request.POST.get('password')
        customer_id = 'sample123'    
        
        if SignupDetails.objects.raw('SELECT * FROM signup_details WHERE Email = %s',[emailid]):
            return JsonResponse({'success': False, 'message': 'Username already exists'}, status=409)
        
        else:
            signup = SignupDetails(
                Username = username,
                Email = emailid,
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

        check = SignupDetails.objects.raw('SELECT * FROM signup_details WHERE Email =%s && Password =%s',[email,password])
        if check:
            login = LoginDetails(
                Email = email,
                Password = password
            )
            login.save()
            request.session['email'] = email
            return JsonResponse({'success': True, 'message': 'Login successful'}, status=200)
        
        else:
            return JsonResponse({'success': False, 'message': 'Invalid request method'}, status=405)
            
    else:
        return JsonResponse({'success': False, 'message': 'Invalid request method'}, status=405)