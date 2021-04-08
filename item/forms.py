from django.forms import ModelForm
from .models import Product, Category


class ProductCreateForm(ModelForm):
    class Meta:
        model = Product
        fields = ['name', 'category', 'price', 'description', 'image']


class CategoryCreateForm(ModelForm):
    class Meta:
        model = Category
        fields = ['name']
