from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.contrib.auth.models import User
from django import forms


class UserRegistrationForm(UserCreationForm):
    """форма для ввода регистрации пользователя"""
    username = forms.CharField(label='Login', widget=forms.TextInput)
    email = forms.EmailField(label='Email', widget=forms.EmailInput)
    first_name = forms.CharField(widget=forms.TextInput)
    last_name = forms.CharField(widget=forms.TextInput)
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Repeat password', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ('username', 'email', 'first_name', 'last_name', 'password1', 'password2')


class UserEditForm(forms.ModelForm):
    """форма для редактирования данных пользователя класса User"""

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email')
