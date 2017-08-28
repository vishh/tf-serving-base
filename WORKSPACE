git_repository(
   name = "io_bazel_rules_docker",
   remote = "https://github.com/bazelbuild/rules_docker.git",
   tag = "v0.1.0",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories", "docker_pull"
)
docker_repositories()

docker_pull(
  name = "tf_serving_gpu",
  registry = "gcr.io",
  repository = "vishnuk-cloud/tensorflow-serving",
  tag = "gpu-devel"
)
