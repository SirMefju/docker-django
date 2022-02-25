from django.contrib import admin
from django.urls import path, include
from django.conf.urls import handler404, handler500

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('application.urls'))
]

handler404 = 'application.views.error404'
handler500 = 'application.views.error500'