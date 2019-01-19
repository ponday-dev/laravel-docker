## How to use

### Create project

Build docker image.

```bash
docker-compose build
```

Generate Laravel project.

```bash
docker-compose run app composer create-project --prefer-dist laravel/laravel <app_dir>
```

Open `docker/web/default.conf` and edit configuration `root` as follows.

```
root /var/www/html/<app_dir>/public;
```

`<app_dir>` means Laravel project folder name that input the previous step.

Next, open `.env` and edit after the line 9 as follows.

```
DB_CONNECTION=mysql
DB_HOST=mariadb
DB_PORT=3306
DB_DATABASE=laraveldb
DB_USERNAME=mariadb
DB_PASSWORD=p@ssw0rd
```

### Migrate database

Run the following command.

```bash
docker-compose run app ash -c 'cd <app_dir> && php artisan migrate'
```
