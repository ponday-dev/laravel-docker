app=

.PHONY: create-project
create-project:
	docker-compose run app composer create-project laravel/laravel ${app} --prefer-dist
	sed -i '' -e s/{{app\_dir}}/${app}/ docker/web/default.conf
	sed -i '' -e s/{{app\_dir}}/${app}/ docker-compose.yml
	sed -i '' -e s/{{app\_dir}}/${app}/ Makefile

.PHONY: configure-database
configure-database:
	sed -i '' -e s/^DB_CONNECTION=.*/DB_CONNECTION=mysql/ {{app_dir}}/.env
	sed -i '' -e s/^DB_HOST=.*/DB_HOST=mariadb/ {{app_dir}}/.env
	sed -i '' -e s/^DB_PORT=.*/DB_PORT=3306/ {{app_dir}}/.env
	sed -i '' -e s/^DB_DATABASE=.*/DB_DATABASE=laraveldb/ {{app_dir}}/.env
	sed -i '' -e s/^DB_USERNAME=.*/DB_USERNAME=mariadb/ {{app_dir}}/.env
	sed -i '' -e s/^DB_PASSWORD=.*/DB_PASSWORD=p@ssw0rd/ {{app_dir}}/.env
