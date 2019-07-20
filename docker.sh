#!/bin/bash
GROUP=2019-05
BRANCH=${TRAVIS_PULL_REQUEST_BRANCH:-$TRAVIS_BRANCH}
TRAVISTEST_RUN="cd travis/ && sh ./run.sh"
#REPO=https://github.com/vasyakrg/infra-tests.git
DOCKER_IMAGE=vasyakrg/infratest:0.1
DOCKER_NAME=infratest

	echo "Run tests"
	# Prepare network & run container
	docker network create infratest-net
	docker run -d -v $(pwd):/srv -v /var/run/docker.sock:/tmp/docker.sock \
		-e DOCKER_HOST=unix:///tmp/docker.sock --cap-add=NET_ADMIN -p 33433:22 --privileged \
		--device /dev/net/tun --name $DOCKER_NAME --network infratest-net $DOCKER_IMAGE
	# Show versions & run tests
	docker exec $DOCKER_NAME bash -c 'echo -=Get versions=-; ansible --version; ansible-lint --version; packer version; terraform version; tflint --version; docker version; docker-compose --version'
	#docker exec -e USER=appuser -e BRANCH=$BRANCH $DOCKER_NAME $TRAVISTEST_RUN
	docker exec -e USER=appuser infratest bash -c "ls -a"
	docker exec -e USER=appuser infratest bash -c "cd travis/ && sh ./run.sh"
