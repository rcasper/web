from django.contrib import admin
from microposts.models import Micropost

class MicropostAdmin(admin.ModelAdmin):
    fields = ['content']

admin.site.register(Micropost, MicropostAdmin)
