# Blog

This is the repository for [blog.gehtnicht.at](https://blog.gehtnicht.at), maintained with jekyll.

## Run

Start an nginx webserver with Podman compose, hosting directory `_site/`:

```Shell
podman compose up -d web
```

## Build

Build with `jekyll build --watch` in a Podman container:

```Shell
podman compose run --rm build
```

## Bundle Update

Update jekyll bundle in a Podman container:

```Shell
podman compose run --rm bundle-update
```
