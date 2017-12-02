from django.contrib import admin

# Register your models here.
from django.contrib import admin

from .models import Elf
from .models import Elf_Match

admin.site.register(Elf)
admin.site.register(Elf_Match)