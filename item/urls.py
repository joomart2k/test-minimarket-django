from django.urls import path

from . import views

app_name = 'item'

urlpatterns = [
    path('', views.CatalogView.as_view(), name='catalog'),
    path('<int:id>/<slug:slug>/', views.ProductDetailView.as_view(), name='product_detail'),
    path('<slug:catalog_slug>/', views.CategoryView.as_view(), name='category'),
    path('<slug:catalog_slug>/<slug:category_slug>/', views.ProductListView.as_view(), name='product_list'),
]
