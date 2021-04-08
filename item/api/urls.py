from django.urls import path
from django.urls import include
from . import views
from rest_framework.authtoken.views import obtain_auth_token


urlpatterns =[
    path('catalog/', views.CatalogView.as_view(), name='catalog'),
    path('category/', views.CategoryView.as_view(), name='category'),
    path('product/<int:pk>/', views.ProductDetailView.as_view(), name='product'),
    path('auth/', include('djoser.urls')),
    path('auth/token', obtain_auth_token, name='token'),
]
