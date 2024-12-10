from django.shortcuts import render,redirect
from .models import *


def base(request):
    email = request.session['email']
    content = {
        'email' : email,
    }
    return render(request,'base.html',content)



def welcome(request):
    return render(request,"welcome.html")

def post_property(request):
    return render(request,'post_property.html')

#residential

def residential_rent_form(request):
    if 'email' in request.session:
        return render(request,"residential_rent_form.html")
    
    else:
        return redirect('login')
    
    

def residential_resale_form(request):
    if 'email' in request.session:
        district = Places.objects.raw('SELECT * FROM places')
        content = {
            'district' : district
        }
        return render(request,"residential_resale_form.html",content)
    else:
        return redirect('login')

def residential_lease_form(request):
    if 'email' in request.session:
        return render(request,"residential_lease_form.html")
    else:
        return redirect('login')

#commercial

def commercial_rent_form(request):
    if 'email' in request.session:
        return render(request,"commercial_rent_form.html")
    else:
        return redirect('login')

def commercial_sale_form(request):
    if 'email' in request.session:
        return render(request,"commercial_sale_form.html")
    else:
        return redirect('login')
    
def commercial_lease_form(request):
    if 'email' in request.session:
        return render(request,"commercial_lease_form.html")
    else:
        return redirect('login')

#land

def land_rent_form(request):
    if 'email' in request.session:
        return render(request,"land_rent_form.html")
    else:
        return redirect('login')

def land_resale_form(request):
    if 'email' in request.session:
        return render(request,'land_resale_form.html')
    else:
        return redirect('login')

def land_lease_form(request):
    if 'email' in request.session:
        return render(request,"land_lease_form.html")
    else:
        return redirect('login')

def profile(request):
    email = request.session['email']
    user_data = SignupDetails.objects.raw('SELECT * FROM signup_details WHERE Email =%s',[email])
    user_land_data = Land.objects.raw('SELECT * FROM land_records WHERE Email =%s',[email])
    user_residential_data = Residential.objects.raw('SELECT * FROM residential_records WHERE Email =%s',[email])
    #user_commercial_data = Com
    context = {
        'user_data' : user_data,
        'user_land_data' : user_land_data,
        'user_residential_data' : user_residential_data
    }
    return render(request,"profile.html",context)

def example(request):
    return render(request,"example.html")

def land_properties_view(request):
    return render(request,"land_properties_view.html")

def property_view(request):
    return render(request,"property_view.html")

def data_processing(request):
    return render(request,"data_processing.html")

def plans(request):
    return render(request,"plans.html")



def login(request):
    return render(request,"login.html")

def o(request):
    return render(request,'o.html')
