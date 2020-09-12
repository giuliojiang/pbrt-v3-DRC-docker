# pbrt-v3-DRC-docker

## Docker from source

Intended for those looking for a 1-step build process for pbrt-v3-DRC

Simply CD into `docker-from-source` and run `./build.sh`

## Docker from pre-built

I use these for a faster dev cycle, as these scripts rely on some external files and already built DRC binaries.

Use `build.sh` in `docker/` to build.

This depends on some external folders and repositories:

* `../pbrt-v3-IILE` which can be cloned from https://github.com/giuliojiang/pbrt-v3-IILE and compiled following https://osr.jstudios.ovh/CompileFromSource
* `supplementary` which can be downloaded from https://github.com/giuliojiang/pbrt-v3-DRC-docker/releases/download/v1/supplementary.tgz

You also need nodejs and npm installed to install dependencies of the integrated server.

A published image is in https://hub.docker.com/repository/docker/giuliojiang/drc

The page also contains instructions to run.