app=

.PHONY: create-project
create-project:
	docker-compose run app composer create-project laravel/laravel ${app} --prefer-dist
	sed -i '' -e s/{{app\_dir}}/${app}/ docker/web/default.conf
	sed -i '' -e s/{{app\_dir}}/${app}/ docker-compose.yml
