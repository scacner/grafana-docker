# set .phony
.PHONY: docker stop clean

docker:
	docker-compose pull
	docker-compose build
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down -v
