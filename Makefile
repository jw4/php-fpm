IMAGE_NAME=docker.w.jw4.us/php7-fpm
IMAGE_FILE=Dockerfile
IMAGE_DIR=.

all: image

image:
	docker build -t $(IMAGE_NAME) -f $(IMAGE_FILE) $(IMAGE_DIR)

push: image
	docker push $(IMAGE_NAME)

.PHONY: all image push
