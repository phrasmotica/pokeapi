install:
	pip install -r requirements.txt

dev-install:
	pip install -r test-requirements.txt

lint:
	pylint config data pokemon_v2 --load-plugins pylint_django

setup:
	python manage.py migrate --settings=config.pokeplannerweb

wipe_db:
	rm -rf db.sqlite3

serve:
	python manage.py runserver --settings=config.pokeplannerweb

test:
	python manage.py test --settings=config.local

clean:
	find . -type f -name '*.pyc' -delete

make_migrations:
	python manage.py makemigrations --settings=config.pokeplannerweb

merge_migrations:
	python manage.py makemigrations --merge --settings=config.pokeplannerweb

migrate:
	python manage.py migrate --settings=config.pokeplannerweb

shell:
	python manage.py shell --settings=config.pokeplannerweb
