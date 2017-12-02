from django.db import models

# Create your models here.

class Elf(models.Model):
    elf_id = models.IntegerField(default=10)
    elf_phone = models.IntegerField(max_length=10)
    elf_fname = models.CharField(max_length=20)
    elf_lname = models.CharField(max_length=30)
    elf_list = models.CharField(max_length=255)
    elf_child = models.BooleanField(default=False)
    elf_coal = models.IntegerField(max_length=10)

class Elf_Match(models.Model):
    elf_id = models.IntegerField(default=10)
    mth_phone = models.IntegerField(max_length=10)
    mth_fname = models.CharField(max_length=20)
    mth_lname = models.CharField(max_length=30)
    mth_list = models.CharField(max_length=255)
    mth_child = models.BooleanField(default=False)


