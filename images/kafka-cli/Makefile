.PHONY: build push

IMAGE = kafka-cli

build:
	docker build -t smo921/$(IMAGE) .

push:
	docker push smo921/$(IMAGE)

run:
	docker run -ti --rm --link zookeeper --link kafka smo921/$(IMAGE)
