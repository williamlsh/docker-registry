# Docker registry

A self-hosted Docker registry. The TLS certificates for the domain will be auto-renewed by LetsEncrypt in case of expiry.

# How to use this registry?

```sh
docker login -u <USERNAME> <HOST>
```
