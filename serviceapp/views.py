from django.shortcuts import render

# Create your views here.
def services(request):
    
    context = {
        'halaman' : 'INI Halaman Services'
    }
    return render(request,'services.html',context)