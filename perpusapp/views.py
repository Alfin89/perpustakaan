from django.shortcuts import render, redirect, HttpResponse
from perpusapp.models import Buku
from perpusapp.forms import FormBuku
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.contrib.auth.forms import UserCreationForm
from perpusapp.resource import BukuResource

def export_xls(request):
    buku = BukuResource()
    dataset = buku.export()
    response = HttpResponse(dataset.xls, content_type='application/vnd.ms-excel')
    response['Content-Disposisition'] = 'attachment; filename=Laporan buku.xls'
    return response

@login_required(login_url=settings.LOGIN_URL)
def signup(request):
    if request.POST:
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'User berhasil dibuat')
            return redirect('signup')
        else:
            messages.error(request, 'Terjadi Kesalahan')
            return redirect('signup')
    else:
        form = UserCreationForm()
        context = {
            'form': form,
        }
    return render(request, 'signup.html', context)

@login_required(login_url=settings.LOGIN_URL)
def hapus(request, id_buku):
    buku = Buku.objects.filter(id=id_buku)
    buku.delete()
    messages.success(request, 'Data Berhasil Dihapus')
    return redirect('buku')

@login_required(login_url=settings.LOGIN_URL)
def ubah_buku(request, id_buku):
    buku = Buku.objects.get(id=id_buku)
    templates =  'ubah-buku.html'
    if request.POST:
        form = FormBuku(request.POST, request.FILES, instance=buku)
        if form.is_valid:
            form.save()
            messages.success(request, "Data Berhasil Diperbarui")
            return redirect('ubah_buku', id_buku=id_buku)
    else:
        form = FormBuku(instance=buku)
        konteks = {
            'form':form,
            'buku':buku,
        }
    return render(request, templates, konteks)


@login_required(login_url=settings.LOGIN_URL)
def buku(request):
    books = Buku.objects.all()

    context = {
        'books': books,       
    }
    return render(request,"buku.html",context)
def penerbit(request):
    context = {
        "judul": "penerbit"
    }
    return render(request,"penerbit.html",context)


@login_required(login_url=settings.LOGIN_URL)
def tambah_buku(request):
    if request.POST:
        form = FormBuku(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            form = FormBuku()
            pesan = "Data Berhasil Disimpan"

            
            context = {
                'form' : form,
                'pesan': pesan,
            }
            return render(request, 'tambah_buku.html', context)
    else:
        form = FormBuku()

        context = {
            'form': form,
        }
        return render(request, 'tambah_buku.html',context)
        
@login_required(login_url=settings.LOGIN_URL)
def penerbit(request):
    return render(request, 'penerbit.html')

