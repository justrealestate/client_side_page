from django.shortcuts import render,redirect
from .models import *


def base(request):
    email = request.session['email']
    return render(request,'base.html',{'email' : email})

def residential_properties_show(request):
    return render(request,"residential_properties_show.html")

def welcome(request):
    return render(request,"welcome.html")

def post_property(request):
    return render(request,'post_property.html')

#residential

def residential_rent_form(request):
    return render(request,"residential_rent_form.html")

def residential_resale_form(request):
    return render(request,"residential_resale_form.html")

def residential_lease_form(request):
    return render(request,"residential_lease_form.html")

#commercial

def commercial_rent_form(request):
    return render(request,"commercial_rent_form.html")

def commercial_sale_form(request):
    return render(request,"commercial_sale_form.html")

#land

def land_resale_form(request):
    return render(request,'land_resale_form.html')

def land_lease_form(request):
    return render(request,"land_lease_form.html")

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

def land_rent_form(request):
    return render(request,"land_rent_form.html")

def login(request):
    return render(request,"login.html")

def o(request):
    return render(request,'o.html')
