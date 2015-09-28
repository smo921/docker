.PHONY: build push

IMAGE = zookeeper

build:
	docker build -t smo921/$(IMAGE) .

push:
	docker push smo921/$(IMAGE)

run:
	docker run -ti --rm --name $(IMAGE) smo921/$(IMAGE)
