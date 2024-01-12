from django.http import request
from django.shortcuts import render

def index(request):
    return render(request,'index.html')

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact.html')

def team(request):
    return render(request,'team.html')

def projects(request):
    return render(request,'projects.html')

def work(request):
    return render(request,'work.html')

