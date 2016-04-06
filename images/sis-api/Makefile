.PHONY: build push

IMAGE = sis-api
MONGO = $(shell docker ps -f name=local-mongo)

build:
	docker build -t smo921/$(IMAGE) .

push: build
	docker push smo921/$(IMAGE)

shell: build
ifndef MONGO
	docker run -d -P --name local-mongo mongo:2.6
else
	docker start local-mongo
endif
	docker run --name sis-api-shell -ti --rm --link local-mongo smo921/$(IMAGE) /bin/bash

run:
	docker run --name local-mongo mongo:latest
	docker run -ti --rm --name $(IMAGE) --link local-mongo smo921/$(IMAGE)
