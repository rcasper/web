from django.contrib import admin
from users.models import User

class UserAdmin(admin.ModelAdmin):
    fieldsets = [
	(None,		{'fields': ['name']}),
	('Email',	{'fields': ['email']}),
    ]

admin.site.register(User, UserAdmin)
