init:
	sh ./init.env.sh

up:
	docker-compose up -d

down:
	docker-compose down

burn-it:
	docker-compose down --volumes