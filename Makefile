up:
	@docker compose up

bash:
	@docker compose run app bash

build: install
	@docker compose build

build-up:
	@docker compose up --build

createsuperuser:
	@docker compose run app python manage.py createsuperuser

down:
	@docker compose down --remove-orphans

flush-db:
	@docker compose run app python manage.py flush
	@make down

install:
	@pipenv install

migrations:
	@pipenv run python manage.py makemigrations
	@make build

migrate:
	@docker compose run app python manage.py migrate

shell:
	@docker compose run app python manage.py shell

stop:
	@docker compose stop

up-d:
	@docker compose up -d