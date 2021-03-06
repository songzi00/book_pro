# Generated by Django 3.0.5 on 2020-05-26 07:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=30)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='MOVIE',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('m_id', models.CharField(db_column='M_id', max_length=50)),
                ('titles', models.CharField(max_length=100)),
                ('release_time', models.CharField(max_length=50)),
                ('director', models.CharField(max_length=50)),
                ('times', models.CharField(max_length=50)),
                ('tags', models.CharField(max_length=200)),
                ('gerne', models.CharField(max_length=50)),
                ('score', models.CharField(max_length=40)),
                ('score_numbers', models.CharField(max_length=50)),
                ('comments_num', models.CharField(max_length=50)),
                ('five_stars', models.CharField(max_length=50)),
                ('four_stars', models.CharField(max_length=50)),
                ('three_stars', models.CharField(max_length=50)),
                ('two_stars', models.CharField(max_length=50)),
                ('one_star', models.CharField(max_length=50)),
                ('region', models.CharField(max_length=50)),
                ('jpg_url', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'myauth_movie',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='movie_info',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('book_name', models.CharField(blank=True, max_length=50, null=True)),
                ('movie_poster', models.CharField(blank=True, max_length=100, null=True)),
                ('movie_description', models.TextField(blank=True, null=True)),
                ('movie_director', models.CharField(blank=True, max_length=50, null=True)),
                ('movie_starring', models.CharField(blank=True, db_column='movie_Starring', max_length=100, null=True)),
                ('movie_type', models.CharField(blank=True, max_length=50, null=True)),
                ('movie_point', models.FloatField(blank=True, null=True)),
                ('movie_address', models.CharField(blank=True, max_length=50, null=True)),
            ],
            options={
                'db_table': 'myauth_movie_info',
            },
        ),
        migrations.CreateModel(
            name='User_evaluation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_id', models.FloatField()),
                ('movie_id', models.FloatField()),
                ('score', models.FloatField()),
            ],
            options={
                'db_table': 'myauth_user_evaluation',
                'unique_together': {('id', 'user_id', 'movie_id'), ('user_id', 'movie_id')},
            },
        ),
        migrations.CreateModel(
            name='commuser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nikname', models.CharField(max_length=50)),
                ('birthday', models.DateField(blank=True, null=True)),
                ('user', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='myauth.AuthUser')),
            ],
            options={
                'db_table': 'myauth_commuser',
            },
        ),
    ]
