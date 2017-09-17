Dockerfile for flatCore-CMS
====

Overview

## Description

Dockerfile for flatCore-CMS (https://github.com/flatCore/flatCore-CMS)

## Install & RUN

1. Build and run docker image.
```
$ docker build -t local/flatcore .
$ docker run --privileged -d --rm -p 8080:80 --name flatcore local/flatcore /sbin/init
```
2. Access to install page
http://localhost:8080/flatCore/install

If you'd like to run extra commands:
```
$ docker exec -it flatcore /bin/bash
```

## Stop

```
docker kill flatcore
```

## Author

[harupu](https://github.com/harupu)
