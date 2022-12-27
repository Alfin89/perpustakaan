from django.contrib import admin
from django.urls import path, include
from perpusapp.views import *
from django.contrib.auth.views import LoginView, LogoutView
from django.conf.urls.static import static


urlpatterns = [
    path('', LoginView.as_view(), name='masuk'),
    path('service/', include('serviceapp.urls'), name='service'),
    path('about/', include('aboutapp.urls'), name='about'),
    path('admin/', admin.site.urls),
    path('buku/', buku, name='buku'),
    path('penerbit/', penerbit, name='penerbit'),
    path('tambah_buku/', tambah_buku, name='tambah_buku'),
    path('buku/ubah/<int:id_buku>', ubah_buku, name='ubah_buku'),
    path('hapus/buku/<int:id_buku>', hapus, name='hapus'),
    path('keluar/', LogoutView.as_view(next_page='masuk'), name='keluar'),
    path('signup/', signup, name='signup'),
    path('export/xls/', export_xls, name='export_xls'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)