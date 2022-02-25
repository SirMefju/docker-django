from django.shortcuts import render


# home
def home(request):
    return render(request, 'home.html', {})

# handling errors
def error404(request, exception):
    return render(request, '404.html', {})

def error500(request):
    return render(request, '500.html', {})