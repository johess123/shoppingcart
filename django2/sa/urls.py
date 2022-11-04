"""django2 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from . import views
urlpatterns = [
    path('mainPage', views.mainPage, name="mainPage"),
    path('regist', views.regist, name="regist"),
    path('login', views.login, name="login"),
    path('addGoods', views.addGoods, name="addGoods"),
    path('listMyGoods', views.listMyGoods, name="listMyGoods"),
    path('updateGoods', views.updateGoods, name="updateGoods"),
    path('delGoods', views.delGoods, name="delGoods"),
    path('delCart', views.delCart, name="delCart"),
    path('pay', views.pay, name="pay"),
    path('deliver', views.deliver, name="deliver"),
    path('addgood', views.addgood, name="addgood"),
    path('logout', views.logout, name="logout"),

]
