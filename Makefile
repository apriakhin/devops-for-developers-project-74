prepare-env:
	[ -f .env ] || cp .env.example .env

setup: prepare-env
	docker compose run --rm app make setup

dev: setup
	docker compose up --build

ci: prepare-env
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app --build 

test: ci
