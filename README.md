# Docker registry

A self-hosted Docker registry. The TLS certificates for the domain will be auto-renewed by LetsEncrypt in case of expiry.

## How to run this registry?

Generating valid TLS certs with certbot:

```bash
./init-certificate.sh <DOMAIN>
```

Installing `just` to execute `justfile` commands, see [installation guide](https://github.com/casey/just#installation).

Generating registry credentials:

```bash
just REGISTRY_USER=<REGISTRY_USER> REGISTRY_PASSWD=<REGISTRY_PASSWD> htpasswd
```

Starting services:

```bash
just up
```

## How to use this registry?

Using the credentials generated above to login:

```sh
docker login -u <REGISTRY_USER> <DOMAIN>
```
