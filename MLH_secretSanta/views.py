from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello World!")


def user(request):
    return HttpResponse("Your on the user page!")