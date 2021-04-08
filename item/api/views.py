from rest_framework.permissions import IsAuthenticated
from .serializers import CatalogSerializer, ProductSerializer, CategorySerializer
from rest_framework import generics
from ..models import Catalog, Product, Category


class CatalogView(generics.ListAPIView):
    queryset = Catalog.objects.all()
    serializer_class = CatalogSerializer
    permission_class = IsAuthenticated


class CategoryView(generics.ListAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer
    permission_class = IsAuthenticated


class ProductDetailView(generics.RetrieveAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    permission_class = IsAuthenticated
