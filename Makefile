# build docker image from application
build-docker:
	docker build . -t livechat-backend:latest

# re-/builds docker image from application and runs it with docker-compose along with the database
build-and-run-docker:
	docker-compose up -d --build

# uses existing app build and runs it on docker-compose along with the database
run-docker:
	docker-compose up -d