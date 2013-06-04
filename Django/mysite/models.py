# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class Microposts(models.Model):
    id = models.IntegerField(primary_key=True)
    content = models.CharField(max_length=765, blank=True)
    user_id = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(null=True, blank=True)
    class Meta:
        db_table = u'microposts'

class Relationships(models.Model):
    id = models.IntegerField(primary_key=True)
    follower_id = models.IntegerField(null=True, blank=True)
    followed_id = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(null=True, blank=True)
    class Meta:
        db_table = u'relationships'

class SchemaMigrations(models.Model):
    version = models.CharField(unique=True, max_length=765)
    class Meta:
        db_table = u'schema_migrations'

class Users(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=765, blank=True)
    email = models.CharField(unique=True, max_length=765, blank=True)
    created_at = models.DateTimeField(null=True, blank=True)
    updated_at = models.DateTimeField(null=True, blank=True)
    password_digest = models.CharField(max_length=765, blank=True)
    remember_token = models.CharField(max_length=765, blank=True)
    admin = models.IntegerField(null=True, blank=True)
    class Meta:
        db_table = u'users'

