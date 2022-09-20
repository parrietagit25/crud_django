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
    path('eliminar/<int:id>', views.eliminar_pelicula, name="eliminar"), # eliminar se pasa un parametro
    path('peliculas/editar/<int:id>', views.editar_pelicula, name="editar"), # editar se pasa un parametro

]+ static(settings.MEDIA_URL, document_root = settings.MEDIA_ROOT) # conf imagenees