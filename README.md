# Blog

This is the repository for [blog.gehtnicht.at](https://blog.gehtnicht.at), maintained with jekyll.



## Run

Start an nginx webserver with docker-compose, hosting directory `_site/`:

```bash
docker-compose up -d web
```



## Build

Build with `jekyll build --watch` in a docker container:

```bash
docker-compose run --rm build
```



## Bundle Update

Update jekyll bundle in a docker container:

```bash
docker-compose run --rm bundle-update
```
