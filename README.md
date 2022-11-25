# Phoronix Test Suite in Docker

This is Dockerized version of [Phoronix Test Suite](https://www.phoronix-test-suite.com/).

### Inspired
Inspired by [Quickly & Easily Running Benchmarks On Docker With "phoronix/pts"](https://www.phoronix.com/review/docker-phoronix-pts), docker hub reference [phoronix/pts](https://hub.docker.com/r/phoronix/pts).
This is currently not working - due to missing dependencies, for more info see: [https://gist.github.com/torx-cz/2f60aac73c4033039a446bdc3be37707](https://gist.github.com/torx-cz/2f60aac73c4033039a446bdc3be37707)

## Official Docker image
Official Docker image at Docker Hub: [https://hub.docker.com/r/torxcz/phoronix-test-suite](https://hub.docker.com/r/torxcz/phoronix-test-suite)


## Prerequisites
For building and running there has to be installed:
```
git
docker
```


## Build
Follow steps bellow:
```bash
git clone https://github.com/torx-cz/phoronix-test-suite-in-docker.git
cd phoronix-test-suite-in-docker

docker build -t phoronix-test-suite:latest
```

If you want to build different version of `phoronix test suite` see `Dockerfile`.


## Running
Follow steps bellow to run `phoronix-test-suite` in interactive shell:
```bash
docker run -it phoronix-test-suite:latest
```


For running `bash` inside of container use:
```bash
docker run -it phoronix-test-suite:latest bash
```
Phoronix Test Suite is located in `/phoronix-test-suite` inside container.


## Note
Test are installed under `/var/lib/phoronix-test-suite` inside of container.

So if you want to test different disk / mount point use `volume`:
```bash
docker run -it -v /path/to/pts_test_data:/var/lib/phoronix-test-suite phoronix-test-suite:latest
```


## TODO
- [X] ~~Upload image to DockerHub~~
- [ ] Document using of environment variable `PTS_TEST_INSTALL_ROOT_PATH`
- [ ] Automatic builds and pushes to DockerHub (using GitHub actions) - when new version is released
