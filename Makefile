setup:
	docker-compose run --rm app make setup

dev:
	docker-compose up --build

test:
	docker-compose -f docker-compose.yml up --build --abort-on-container-exit --exit-code-from app
