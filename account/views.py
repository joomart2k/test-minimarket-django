from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib.auth.views import PasswordChangeDoneView
from django.shortcuts import render, redirect
from django.urls import reverse, reverse_lazy
from django.views.generic import DetailView
from django.views.generic.edit import CreateView, UpdateView
from .forms import UserRegistrationForm, UserEditForm


class ProfileView(DetailView):
    """класс для отображения профиля пользователя """
    model = User
    context_object_name = 'user'
    template_name = 'registration/profile.html'


class RegisterUser(CreateView):
    """класс для регистрации пользователя """
    form_class = UserRegistrationForm
    template_name = 'registration/register.html'
    success_url = reverse_lazy('account:login')


@login_required
def edit(request):
    if request.method == 'POST':
        user_form = UserEditForm(instance=request.user, data=request.POST)
        if user_form.is_valid():
            user_form.save()
            messages.success(request, 'Profile updated successfully')
            return redirect(reverse('account:profile', args=[request.user.pk]))
        else:
            messages.error(request, 'Error updating your profile')
    else:
        user_form = UserEditForm(instance=request.user)
    return render(request, 'registration/edit.html', {'user_form': user_form})


