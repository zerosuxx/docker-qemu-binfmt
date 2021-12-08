# docker-qemu-binfmt

## build and push for multi arch
```bash
$ docker buildx build --platform linux/amd64,linux/arm64 -t zerosuxx/qemu-binfmt --push .
```

## enable
```bash
$ docker run --rm --privileged zerosuxx/qemu-binfmt
```

## disable
```bash
$ docker run --rm --privileged --entrypoint="/bin/bash" zerosuxx/qemu-binfmt -c "update-binfmts --enable && update-binfmts --disable"
```
