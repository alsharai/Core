.PHONY: install
install:
	poetry install

.PHONY: install-pre-commit
install-pre-commit:
	poetry run pre-commit uninstall; poetry run pre-commit install

.PHONY: lint
lint:
	poetry run pre-commit run --all-files

.PHONY: run-server
run-server:
	poetry run python -m Core.manage runserver

.PHONY: migrate
migrate:
	poetry run python -m Core.manage migrate

.PHONY: migrations
migrations:
	poetry run python -m Core.manage makemigrations

.PHONY: superuser
superuser:
	poetry run python -m Core.manage createsuperuser

.PHONY: update
update: install migrate install-pre-commit ;
