
stopAll:
	docker stop $$(docker ps -aq)

removeAll:
	docker rm $$(docker ps -aq)

clean: stopAll removeAll

build:
	docker build -t verademo --no-cache .

run:
	docker run -p 8080:8080 --platform linux/amd64 -it verademo

restart: clean build run