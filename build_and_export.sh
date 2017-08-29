#!/bin/bash
set -x
project=$1
docker-credential-gcr gcr-login
PATH=/usr/bin:$PATH bazel build --define project=${project} :all
PATH=/usr/bin:$PATH bazel run --define project=${project} :push
docker-credential-gcr gcr-logout
