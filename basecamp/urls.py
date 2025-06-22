from django.urls import path, include
from . import views


urlpatterns = [
    path('about_me/', views.about_me),
    path('terms/', views.terms),
    path('privacy/', views.privacy),
    path('', views.index),
]
