from django.forms import ModelForm
from django import forms
from perpusapp.models import Buku

class FormBuku(ModelForm):
    class Meta :
        model = Buku
        fields = '__all__'
# fields = ['judul', 'penulis', 'kelompok_id'] Memilih Untuk ditampilkan
# fields ='__all__' untuk semua 
# exclude =['penerbit'] Terkecuali
        widgets = {
        'judul' : forms.TextInput({'class':'form-control'}),
        'penulis' : forms.TextInput({'class':'form-control'}),
        'penerbit' : forms.TextInput({'class':'form-control'}),
        'jumlah' : forms.NumberInput({'class':'form-control'}),
        'kelompok_id' : forms.Select({'class':'form-control'}),
        }