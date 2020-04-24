# Generated by Django 3.0.3 on 2020-04-23 12:09

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0011_update_proxy_permissions'),
    ]

    operations = [
        migrations.CreateModel(
            name='Interest',
            fields=[
                ('label', models.CharField(max_length=30, primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='UserInfo',
            fields=[
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('employment', models.CharField(default='Unspecified', max_length=30)),
                ('location', models.CharField(default='Unspecified', max_length=50)),
                ('birthday', models.DateField(blank=True, null=True)),
                ('friends', models.ManyToManyField(related_name='_userinfo_friends_+', to='social.UserInfo')),
                ('interests', models.ManyToManyField(to='social.Interest')),
            ],
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=280)),
                ('timestamp', models.DateTimeField(auto_now=True)),
                ('likes', models.ManyToManyField(related_name='likes', to='social.UserInfo')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='social.UserInfo')),
            ],
        ),
        migrations.CreateModel(
            name='FriendRequest',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('from_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='from_users', to='social.UserInfo')),
                ('to_user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='to_users', to='social.UserInfo')),
            ],
        ),
    ]
