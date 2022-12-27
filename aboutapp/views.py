from django.shortcuts import render

# Create your views here.
def about(request):
    
    context = {
        'halaman' : 'INI Halaman about'
    }
    return render(request,'about.html',context)