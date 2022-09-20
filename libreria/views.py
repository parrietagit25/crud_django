from django.shortcuts import render
from django.http import HttpResponse
from .models import Pelicula
from .forms import PeliculaForm
# vistas

def inicio(request):
    return render(request, "paginas/inicio.html")

def nosotros(request):
    return render(request, 'paginas/nosotros.html')

def peliculas(request):
    peliculas = Pelicula.objects.all() 
    print(peliculas)
    return render(request, 'peliculas/index.html', {'peliculas':peliculas})

def crear_pelicula(request):
    formulario = PeliculaForm(request.POST or None)
    return render(request, 'peliculas/crear.html', {'formulario': formulario})

def editar_pelicula(request):
    return render(request, 'peliculas/editar.html')