# set .phony
.PHONY: docker stop clean

docker:
	docker-compose build --pull
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down -v
