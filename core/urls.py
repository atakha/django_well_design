from django.views.generic import TemplateView
from django.urls import path

app_name = 'core' # for namespace

urlpatterns = [
    path('', TemplateView.as_view(template_name='core/index.html'), name='home')
]