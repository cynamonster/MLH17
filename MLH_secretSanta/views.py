from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse
from django.template import loader
from django.http import Http404

def index(request):
    template = loader.get_template('MLH_secretSanta/index.html')
    context = {}
    return HttpResponse(template.render(context, request))


def user(request):
    return HttpResponse("Your on the user page!")

def action_page(request):
    template = loader.get_template('MLH_secretSanta/action-page.html')
    context = {}
    return HttpResponse(template.render(context, request))