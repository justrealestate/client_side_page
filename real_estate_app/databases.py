from django.shortcuts import render,redirect
from .models import *
import datetime


x = datetime.datetime.now()

def land_rent_create(request):  
    if request.method == 'POST':
        land_rent = LandRent(
                Email = request.session['email'],
                Length = request.POST.get('Length'), 
                Width = request.POST.get('Width'),
                PlotArea = request.POST.get('PlotArea'),
                Cent = request.POST.get('Cent'),
                Acre = request.POST.get('Acre'),
                District = request.POST.get('District'),
                Town = request.POST.get('Town'),
                Street = request.POST.get('Street'),
                ExpectedRent = request.POST.get('ExpectedRent'),
                ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'),
                ExpectedDeposit = request.POST.get('ExpectedDeposit'),
                Terms = request.POST.get('Terms'),
                PrimaryNumber = request.POST.get('PrimaryNumber'),
                SecondaryNumber = request.POST.get('SecondaryNumber'),
                # Image = request.POST.get('Images']
            )
        # land = Land(
        #         Email = request.session['email'],
        #         Length=request.POST.get('Length'], 
        #         Width = request.POST.get('Width'],
        #         PlotArea = request.POST.get('PlotArea'],
        #         Cent = request.POST.get('Cent'],
        #         Acre = request.POST.get('Acre'],
        #         District = request.POST.get('District'],
        #         Town = request.POST.get('Town'],
        #         Street = request.POST.get('Street'],
        #         ExpectedRent = request.POST.get('ExpectedRent'],
        #         ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'],
        #         ExpectedDeposit = request.POST.get('ExpectedDeposit'],
        #         Terms = request.POST.get('Terms'],
        #         Type = 'Rent',
        #         PrimaryNumber = request.POST.get('PrimaryNumber'],
        #         SecondaryNumber = request.POST.get('SecondaryNumber'],
        #         Image = request.POST.get('Images']
        #     )
        # land_rent.save()
        # land.save()
        return redirect('profile')
    
def land_resale_create(request):
    if request.method == 'POST':
        print('l')
        # land_resale = LandResale(
        #     Email = request.session['email'],
        #     Length = request.POST.get('Length'], 
        #     Width = request.POST.get('Width'],
        #     PlotArea = request.POST.get('PlotArea'],
        #     Cent = request.POST.get('Cent'],
        #     Acre = request.POST.get('Acre'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     PricePerCent = request.POST.get('PricePerCent'],
        #     TotalPrice = request.POST.get('TotalPrice'],
        #     PricePerSquareFeet = request.POST.get('PricePerSquareFeet'],
        #     Description = request.POST.get('Description'],
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )

        # land = Land(
        #     Email = request.session['email'],
        #     Length = request.POST.get('Length'], 
        #     Width = request.POST.get('Width'],
        #     PlotArea = request.POST.get('PlotArea'],
        #     Cent = request.POST.get('Cent'],
        #     Acre = request.POST.get('Acre'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     PricePerCent = request.POST.get('PricePerCent'],
        #     TotalPrice = request.POST.get('TotalPrice'],
        #     PricePerSquareFeet = request.POST.get('PricePerSquareFeet'],
        #     Description = request.POST.get('Description'],
        #     Type = 'Resale',
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # land_resale.save()
        # land.save()
        # return redirect('/')
    

def land_lease_create(request):
    if request.method == 'POST':
        print('l')
        # land_lease = LandLease(
        #     Email = request.session['email'],
        #     Length=request.POST.get('Length'], 
        #     Width = request.POST.get('Width'],
        #     PlotArea = request.POST.get('PlotArea'],
        #     Cent = request.POST.get('Cent'],
        #     Acre = request.POST.get('Acre'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedLease = request.POST.get('ExpectedLease'],
        #     ExpectedLeaseDuration = request.POST.get('ExpectedLeaseDuration'],
        #     Maintenance = request.POST.get('Maintenance'],
        #     Terms = request.POST.get('Terms'],
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )

        # land = Land(
        #     Email = request.session['email'],
        #     Length=request.POST.get('Length'], 
        #     Width = request.POST.get('Width'],
        #     PlotArea = request.POST.get('PlotArea'],
        #     Cent = request.POST.get('Cent'],
        #     Acre = request.POST.get('Acre'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedLease = request.POST.get('ExpectedLease'],
        #     ExpectedLeaseDuration = request.POST.get('ExpectedLeaseDuration'],
        #     Maintenance = request.POST.get('Maintenance'],
        #     Terms = request.POST.get('Terms'],
        #     Type = 'Lease',
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # land_lease.save()
        # land.save()
        # return redirect('/')
    
def residential_rent_create(request):
    if request.method == 'POST':
        images = request.FILES.getlist('images')
        videos = request.FILES.getlist('videos')
        for image in images:
            residential_rent = ResidentialRent(
                Email = request.session['email'],
                BhkType = request.POST.get('BhkType'),
                Floor = request.POST.get('Floor'),
                HouseType = request.POST.get('HouseType'),
                Parking = request.POST.get('Parking'),
                Terrace = request.POST.get('Terrace'),
                Hall = request.POST.get('Hall'),
                Bedroom = request.POST.get('Bedroom'),
                Bathroom = request.POST.get('Bathroom'),
                District = request.POST.get('District'),
                Town = request.POST.get('Town'),
                Street = request.POST.get('Street'),
                ExpectedRent = request.POST.get('ExpectedRent'),
                ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'),
                ExpectedDeposit = request.POST.get('ExpectedDeposit'),
                Maintenance = request.POST.get('Maintenance'),
                PreferredTenants = request.POST.get('PreferredTenants'),
                Terms = request.POST.get('Terms'),
                PrimaryNumber = request.POST.get('PrimaryNumber'),
                SecondaryNumber = request.POST.get('SecondaryNumber'),
                Image = image,
            )
            residential = Residential(
                Email = request.session['email'],
                BhkType = request.POST.get('BhkType'),
                Floor = request.POST.get('Floor'),
                HouseType = request.POST.get('HouseType'),
                Parking = request.POST.get('Parking'),
                Terrace = request.POST.get('Terrace'),
                Hall = request.POST.get('Hall'),
                Bedroom = request.POST.get('Bedroom'),
                Bathroom = request.POST.get('Bathroom'),
                District = request.POST.get('District'),
                Town = request.POST.get('Town'),
                Street = request.POST.get('Street'),
                ExpectedRent = request.POST.get('ExpectedRent'),
                ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'),
                ExpectedDeposit = request.POST.get('ExpectedDeposit'),
                Maintenance = request.POST.get('Maintenance'),
                PreferredTenants = request.POST.get('PreferredTenants'),
                Terms = request.POST.get('Terms'),
                Type = 'Rent',
                PrimaryNumber = request.POST.get('PrimaryNumber'),
                SecondaryNumber = request.POST.get('SecondaryNumber'),
                Image = image,
            )
            residential.save()
            residential_rent.save()
        for video in videos:
            residential_rent = ResidentialRent(
                Email = request.session['email'],
                BhkType = request.POST.get('BhkType'),
                Floor = request.POST.get('Floor'),
                HouseType = request.POST.get('HouseType'),
                Parking = request.POST.get('Parking'),
                Terrace = request.POST.get('Terrace'),
                Hall = request.POST.get('Hall'),
                Bedroom = request.POST.get('Bedroom'),
                Bathroom = request.POST.get('Bathroom'),
                District = request.POST.get('District'),
                Town = request.POST.get('Town'),
                Street = request.POST.get('Street'),
                ExpectedRent = request.POST.get('ExpectedRent'),
                ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'),
                ExpectedDeposit = request.POST.get('ExpectedDeposit'),
                Maintenance = request.POST.get('Maintenance'),
                PreferredTenants = request.POST.get('PreferredTenants'),
                Terms = request.POST.get('Terms'),
                PrimaryNumber = request.POST.get('PrimaryNumber'),
                SecondaryNumber = request.POST.get('SecondaryNumber'),
                Video = video,
            )
            residential = Residential(
                Email = request.session['email'],
                BhkType = request.POST.get('BhkType'),
                Floor = request.POST.get('Floor'),
                HouseType = request.POST.get('HouseType'),
                Parking = request.POST.get('Parking'),
                Terrace = request.POST.get('Terrace'),
                Hall = request.POST.get('Hall'),
                Bedroom = request.POST.get('Bedroom'),
                Bathroom = request.POST.get('Bathroom'),
                District = request.POST.get('District'),
                Town = request.POST.get('Town'),
                Street = request.POST.get('Street'),
                ExpectedRent = request.POST.get('ExpectedRent'),
                ExpectedDepositMonths = request.POST.get('ExpectedDepositMonths'),
                ExpectedDeposit = request.POST.get('ExpectedDeposit'),
                Maintenance = request.POST.get('Maintenance'),
                PreferredTenants = request.POST.get('PreferredTenants'),
                Terms = request.POST.get('Terms'),
                Type = 'Rent',
                PrimaryNumber = request.POST.get('PrimaryNumber'),
                SecondaryNumber = request.POST.get('SecondaryNumber'),
                Video = video,
            )
            residential.save()
            residential_rent.save()
            return redirect(request,'index.html')

        return render(request,'index.html')
    

def residential_resale_create(request):
    if request.method == 'POST':
        print('o')
        # residential_resale = ResidentialResale(
        #     Email = request.session['email'],
        #     BhkType = request.POST.get('BhkType'],
        #     TotalFloor = request.POST.get('TotalFloor'],
        #     PropertyAge = request.POST.get('PropertyAge'],
        #     HouseLength = request.POST.get('HouseLength'],
        #     HouseWidth = request.POST.get('HouseWidth'],
        #     HousePlotArea = request.POST.get('HousePlotArea'],
        #     HouseCent = request.POST.get('HouseCent'],
        #     LandLength = request.POST.get('LandLength'],
        #     LandWidth = request.POST.get('LandWidth'],
        #     LandPlotArea = request.POST.get('LandPlotArea'],
        #     LandCent = request.POST.get('LandCent'],
        #     Parking = request.POST.get('Parking'],
        #     Terrace = request.POST.get('Terrace'],
        #     Hall = request.POST.get('Hall'],
        #     Bedroom = request.POST.get('Bedroom'],
        #     Bathroom = request.POST.get('Bathroom'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedPrice = request.POST.get('ExpectedPrice'],
        #     Description = request.POST.get('Description'],        
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # residential = Residential(
        #     Email = request.session['email'],
        #     BhkType = request.POST.get('BhkType'],
        #     TotalFloor = request.POST.get('TotalFloor'],
        #     PropertyAge = request.POST.get('PropertyAge'],
        #     HouseLength = request.POST.get('HouseLength'],
        #     HouseWidth = request.POST.get('HouseWidth'],
        #     HousePlotArea = request.POST.get('HousePlotArea'],
        #     HouseCent = request.POST.get('HouseCent'],
        #     LandLength = request.POST.get('LandLength'],
        #     LandWidth = request.POST.get('LandWidth'],
        #     LandPlotArea = request.POST.get('LandPlotArea'],
        #     LandCent = request.POST.get('LandCent'],
        #     Parking = request.POST.get('Parking'],
        #     Terrace = request.POST.get('Terrace'],
        #     Hall = request.POST.get('Hall'],
        #     Bedroom = request.POST.get('Bedroom'],
        #     Bathroom = request.POST.get('Bathroom'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedPrice = request.POST.get('ExpectedPrice'],
        #     Description = request.POST.get('Description'],  
        #     Type = 'Resale',      
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # residential.save()
        # residential_resale.save()
        # return redirect('/')

def residential_lease_create(request):
    if request.method == "POST":
        print('l')
        # residential_lease = ResidentialLease(
        #     Email = request.session['email'],
        #     BhkType = request.POST.get('BhkType'],
        #     Floor = request.POST.get('Floor'],
        #     HouseType = request.POST.get('HouseType'],
        #     Parking = request.POST.get('Parking'],
        #     Terrace = request.POST.get('Terrace'],
        #     Hall = request.POST.get('Hall'],
        #     Bedroom = request.POST.get('Bedroom'],
        #     Bathroom = request.POST.get('Bathroom'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedLease = request.POST.get('ExpectedLease'],
        #     ExpectedLeaseDuration = request.POST.get('ExpectedLeaseDuration'],
        #     Maintenance = request.POST.get('Maintenance'],
        #     Terms = request.POST.get('Terms'],
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # residential = Residential(
        #     Email = request.session['email'],
        #     BhkType = request.POST.get('BhkType'],
        #     Floor = request.POST.get('Floor'],
        #     HouseType = request.POST.get('HouseType'],
        #     Parking = request.POST.get('Parking'],
        #     Terrace = request.POST.get('Terrace'],
        #     Hall = request.POST.get('Hall'],
        #     Bedroom = request.POST.get('Bedroom'],
        #     Bathroom = request.POST.get('Bathroom'],
        #     District = request.POST.get('District'],
        #     Town = request.POST.get('Town'],
        #     Street = request.POST.get('Street'],
        #     ExpectedLease = request.POST.get('ExpectedLease'],
        #     ExpectedLeaseDuration = request.POST.get('ExpectedLeaseDuration'],
        #     Maintenance = request.POST.get('Maintenance'],
        #     Type = 'Lease',
        #     Terms = request.POST.get('Terms'],
        #     PrimaryNumber = request.POST.get('PrimaryNumber'],
        #     SecondaryNumber = request.POST.get('SecondaryNumber']
        # )
        # residential.save()
        # residential_lease.save()
        # return redirect('/')

def login(request):
    print('l')
    # login = LoginDetails(
    #     Username = request.POST.get('username'],
    #     Email = request.POST.get('email'],
    #     Password = request.POST.get('password']        
    # )
    # login.save()
    # return redirect('/')

def signup(request):
    print('l')
    # signup = SignupDetails(
    #     Username = request.POST.get('username'],
    #     Email = request.POST.get('email'],
    #     Password = request.POST.get('password']
    # )

def display_data(request):
    # Fetch data from MySQL database
    records = LandResale.objects.all()

    # Render the template with data
    return render(request, 'data_display.html', {'records': records}) 