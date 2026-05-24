prepare-env:
	[ -f .env ] || cp .env.example .env

ci: prepare-env
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app --build 
