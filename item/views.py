from django.shortcuts import render
from django.views.generic.list import ListView
from django.views.generic.detail import DetailView
from .models import Product, Category, Catalog


class CatalogView(ListView):
    """класс для отображения каталога товаров"""
    model = Catalog
    template_name = 'base.html'
    context_object_name = 'catalog'


class CategoryView(ListView):
    """класс для отображения категории товаров в каталоге"""
    model = Category
    template_name = 'category.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data()
        context['category'] = Category.objects.filter(catalog__slug=self.kwargs['catalog_slug'])
        context['catalog'] = Catalog.objects.all()
        return context


class ProductListView(ListView):
    """класс для отображения списка товаров в категории """
    model = Product
    template_name = "product_list.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['products'] = Product.objects.filter(category__slug=self.kwargs['category_slug'], available=True)
        context['catalog'] = Catalog.objects.all()
        context['category'] = Category.objects.get(slug=self.kwargs['category_slug'])
        return context


class ProductDetailView(DetailView):
    """класс для отображения товара"""
    model = Product
    context_object_name = "product"
    template_name = "product_detail.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['catalog'] = Catalog.objects.all()
        return context