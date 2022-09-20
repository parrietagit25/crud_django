from django.shortcuts import render, redirect
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
    formulario = PeliculaForm(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save() # se guardan los datoss
        return redirect('peliculas')
    return render(request, 'peliculas/crear.html', {'formulario': formulario})

def editar_pelicula(request, id):
    pelicula = Pelicula.objects.get(id=id)
    formulario = PeliculaForm(request.POST or None, request.FILES or None, instance=pelicula)
    if formulario.is_valid and request.POST:
        formulario.save()
        return redirect('peliculas')
    return render(request, 'peliculas/editar.html', {'formulario': formulario})

def eliminar_pelicula(request, id):
    pelicula = Pelicula.objects.get(id=id)
    pelicula.delete() # se borra la pelicula
    return redirect('peliculas')