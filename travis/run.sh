#!/bin/bash

export GOOGLE_APPLICATION_CREDENTIALS=/srv/travis/docker.json
tests/terraform.sh
tests/packer.sh
tests/ansible.sh
