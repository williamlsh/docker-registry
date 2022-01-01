REGISTRY_USER := "test"
REGISTRY_PASSWD := "password"

up: down
    docker-compose up -d

down:
    docker-compose down -v

htpasswd:
    @mkdir auth
    @docker run \
    --rm \
    --entrypoint htpasswd \
    httpd:2 -Bbn {{REGISTRY_USER}} {{REGISTRY_PASSWD}} > auth/htpasswd
