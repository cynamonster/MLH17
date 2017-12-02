from django.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
]