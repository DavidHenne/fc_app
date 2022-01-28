.PHONY=build
build:
	docker-compose up -d --build

.PHONY=migrate
migrate:
	docker-compose exec web python manage.py migrate

.PHONY=flush
flush:
	docker-compose exec web python manage.py flush --no-input

.PHONY=start
start:
	docker-compose up

.PHONY=build_prod
build_prod:
	docker-compose -f docker-compose.prod.yml up -d --build

.PHONY=migrate_prod
migrate_prod:
	docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --no-input

.PHONY=start_prod
start_prod:
	docker-compose -f docker-compose.prod.yml up

.PHONY=db_cli
db_cli:
	@echo \\l will list the databases
	@echo \\c fc_dev will connect to db
	@echo \\dt will list relations
	@echo \\q to quit
	
	docker-compose exec db psql --username=admin --dbname=fc_dev