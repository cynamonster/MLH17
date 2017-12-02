from django.shortcuts import render

# Create your views here.
from django.http import response

def index(request):
    return HttpResponse("Hello World!")