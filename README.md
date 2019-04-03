# gas-template

Environment for developing GoogleAppScript on your computer.

# Spec
- [Docker Desktop](https://www.docker.com/products/docker-desktop): latest
- [node](https://nodejs.org/en/): latest
- [google/clasp](https://github.com/google/clasp): latest

# How to use
## build docker image

```shell
$ docker-compose build
```

## enter to container

```shell
$ docker-compose up -d
$ docker exec -it gas-template_node_1 bash
```

## Authentication for your Google Account(only once)

```shell
$ clasp login --no-localhost
Logging in globally...
🔑 Authorize clasp by visiting this url:
https://accounts.google.com/o/oauth2/v2/auth?access_type=offline&XXXXXXXXXXXXXXXXX ...
```

Copy url and past for web browser.  
Approve and copy credential.

```
Enter the code from that page here: <Past here!>

Authorization successful.

Default credentials saved to: ~/.clasprc.json (/root/.clasprc.json).
```

## fetch existing Google App Script

```
$ clasp list
hogehoge     – https://script.google.com/d/XXXXXX/edit
hugahuga     – https://script.google.com/d/YYYYYY/edit
```

Choose target project and checkout project.

```e.g. hogehoge
$ mkdir hogehoge
$ cd hogehoge
$ clasp clone https://script.google.com/d/XXXXXX/edit
```

Editing code. deploy new version.

```
$ clasp deploy
```

## Other operation
see offical document. https://github.com/google/clasp#undeploy