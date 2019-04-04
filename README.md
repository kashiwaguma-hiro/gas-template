# GAS Template

Environment for development GoogleAppScript on your machine.

# Requirement
name | version
-- | -- 
[Docker Desktop](https://www.docker.com/products/docker-desktop) | version 1.23.2, build 1110ad01
[NodeJS](https://nodejs.org/en/) | v11.13.0
[google/clasp](https://github.com/google/clasp) | 2.1.0

# Usage

## build docker image(only once)

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
root@34cd6de71f2d:/app# clasp login --no-localhost
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

## Development for existing Google App Script

```
root@34cd6de71f2d:/app# clasp list
hogehoge     – https://script.google.com/d/XXXXXX/edit
hugahuga     – https://script.google.com/d/YYYYYY/edit
```

select a project and check out

```e.g. hogehoge
root@34cd6de71f2d:/app# clasp clone https://script.google.com/d/XXXXXX/edit
```

editing code. apply GoogleAppScript code.
```
root@34cd6de71f2d:/app# clasp push
```

or deploy new version.

```
root@34cd6de71f2d:/app# clasp deploy --description <descripton ener here!>
Created version 4.
- AKfycbytqkQOGyXWTaXYrclwu6UUSOHXO8Zdzo2Gs3PY-NQqpoFEg8QjdTdT1AIc_cY9-axv @4.

root@34cd6de71f2d:/app# clasp deployments
4 Deployments.
- AKfycbwWScAoTbQ6kyUUUPHcZyCEo5VfY8P9UwvbnYyBHXM @HEAD 
- AKfycbx82ARY8F2eGLcg916xwM96di9tQ4hYYZNBP-X-0kErR9imvzmSUXNMvEmVX2O4s7Xp @2 
- AKfycbzGs8UZpRTgy570CZL2IGnLmBI-2ewAMkoJr0W7MKsgxsPSYojzafMmwaVRJBmwukOd @3 
- AKfycbytqkQOGyXWTaXYrclwu6UUSOHXO8Zdzo2Gs3PY-NQqpoFEg8QjdTdT1AIc_cY9-axv @4 
```

rollback deployment
```
root@34cd6de71f2d:/app# clasp undeploy
Undeployed AKfycbytqkQOGyXWTaXYrclwu6UUSOHXO8Zdzo2Gs3PY-NQqpoFEg8QjdTdT1AIc_cY9-axv.

root@34cd6de71f2d:/app# clasp deployments
3 Deployments.
- AKfycbwWScAoTbQ6kyUUUPHcZyCEo5VfY8P9UwvbnYyBHXM @HEAD 
- AKfycbx82ARY8F2eGLcg916xwM96di9tQ4hYYZNBP-X-0kErR9imvzmSUXNMvEmVX2O4s7Xp @2 
- AKfycbzGs8UZpRTgy570CZL2IGnLmBI-2ewAMkoJr0W7MKsgxsPSYojzafMmwaVRJBmwukOd @3 
```

## Other operation
see offical document. https://github.com/google/clasp