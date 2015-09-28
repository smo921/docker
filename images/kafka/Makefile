.PHONY: build push

IMAGE = kafka

build:
	docker build -t smo921/$(IMAGE) .

push:
	docker push smo921/$(IMAGE)

run:
	docker run -ti --rm --name kafka --link zookeeper smo921/$(IMAGE)
