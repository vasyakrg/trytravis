#!/bin/bash
cd ..
ansible-lint -v -c .ansible-lint `find ansible/playbooks -regex ".*\.\(yml\)"`
