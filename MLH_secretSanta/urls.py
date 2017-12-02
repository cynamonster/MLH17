from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('action-page', views.action_page, name='action_page'),
    path('elfcreate', views.user, name='user')
]