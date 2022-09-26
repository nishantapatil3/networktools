# Networktools

[![CI Actions status](https://github.com/nishantapatil3/networktools/workflows/CI/badge.svg)](https://github.com/nishantapatil3/networktools/actions/workflows/CI.yml)
[![Docker](https://badgen.net/badge/icon/docker?icon=docker&label)](https://hub.docker.com/r/nishantapatil3/networktools)

Collection of most commonly used network tools in an alpine linux based lightweight container

## Run on
Run on docker desktop
```
docker run --rm -it --entrypoint="/bin/sh" docker.io/nishantapatil3/networktools:latest
```

Run on kubernetes
```
kubectl run networktools --image=nishantapatil3/networktools:latest -n default sleep infinity
```

## Added packages
```
- iputils
- curl
- hey (http traffic generator)
- vim
```

> **_NOTE:_** to add new packages edit `apk_packages` file and add the name of new package, then `make docker-build`
