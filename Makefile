NAME=touch_p
VERSION=latest

build: 
    docker build -t $(NAME):$(VERSION) .

restart: stop start

start: 
		docker run -it \
		-v $(CURDIR):/touch_p \
		--name $(NAME) \
		$(NAME):$(VERSION) bash

stop: 
		docker rm -f $(NAME)

attach:
		docker exec -it $(NAME) /bin/bash

logs:
		docker logs $(NAME)