#!/bin/bash
set -x
project=$1
bazel build --define project=${project} :all
docker-credential-gcr gcr-login
bazel run --define project=${project} :push
docker-credential-gcr gcr-logout
