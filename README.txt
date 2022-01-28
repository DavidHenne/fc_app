# About:

Django app using postgres db, some production setup with nginx and gunicorn


# development

make build
make migrate
make start

docker-compose down -v

# prod

make build_prod
make migrate_prod
make start_prod

docker-compose -f docker-compose.prod.yml down -v

# Roadmap:

TODO lol