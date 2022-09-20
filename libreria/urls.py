from django.urls import path 
from . import views 

# conf rutas de las imagenes
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.inicio, name="inicio"),
    path('nosotros', views.nosotros, name="nosotros"), 
    path('peliculas', views.peliculas, name="peliculas"),
    path('peliculas/crear', views.crear_pelicula, name="crear"),
    path('peliculas/editar', views.editar_pelicula, name="editar"),

]+ static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT) # conf imagenees