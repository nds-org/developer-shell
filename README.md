# NDS Development Environment (NDSDEV)

This image contains tooling to develop against the NDSLabs source code at https://github.com/nds-org from within docker,
no installation required.

# Prerequisites
  * A linux amd64 architecture based Docker environment to run a development container based on this image.
  ** A Docker 1.9+ system
  ** Docker Machine (https://docs.docker.com/machine/)
  ** A provisioned CoreOS instance in NDSLabs (https://coreos.com/)

# Usage
  * This image has a volume on /nds/src.  You may map a host path (-v <hostpath>:/nds/src), setup a data container using this image (docker create --name ndssrc ...  && run with --volumes-from ndssrc), or let docker create a volume for your development container for you (no volume args to docker)
  * Print usage information contained in the image "docker run --rm -it ndslabs/developer-shell usage"
  ** The usage command has arguments to emit a canonical docker run command for various environments
  * The developer shell requires mapping the docker socket: docker run ... -v /var/run/docker/sock:/var/run/docker.sock
  * Check proper setup from within you developer container:  check-setup

# Author Config
  * Please config git with your name and email. Pull requests without author information will be rejected.
  ** git config --global user.name
  ** git config --global user.email
  * Git clone the source code your wish to develop against under /nds/src

# Building
  * This images includes Makefile support for developers.
  * TODO:  make documentation

# Please submit pull-requests

We welcome pull-requests.    Please submit properly authored, bounded-scope PR's to help us review and accept your contributions.
