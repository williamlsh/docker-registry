REGISTRY_USER ?= test
REGISTRY_PASSWD ?= password


.PHONY: up
up: down
    docker-compose up -d

.PHONY: down
down:
    docker-compose down -v

auth/htpasswd:
	@mkdir auth
	@docker run \
	 --rm \
     --entrypoint htpasswd \
     httpd:2 -Bbn $(REGISTRY_USER) $(REGISTRY_PASSWD) > auth/htpasswd
