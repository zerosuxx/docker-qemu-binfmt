FROM debian:latest

RUN apt-get update && apt-get install -y qemu-user-static binfmt-support

ENTRYPOINT ["update-binfmts", "--enable"]
