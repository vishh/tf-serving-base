package(default_visibility = ["//visibility:public"])

load(
 "@io_bazel_rules_docker//docker:docker.bzl",
 "docker_build",
 "docker_push",
)

docker_build(
    name = "app",
    # References docker_pull from WORKSPACE (above)
    base = "@tf_serving_gpu//image",
    env = {
	"MODEL_DIR": "/models",
	},
    files = ["//models:model"],
    mode = "0655",
    entrypoint = ["/bin/bash", "-c", "/usr/local/bin/tensorflow_model_server --port=9000 --model_base_path=${MODEL_DIR}"],
    ports = ["9000"],
    data_path = ".",
)

docker_push(
    name = "push",
    image = ":app",
    registry = "gcr.io",
    repository = "$(project)/tf-model-server",
    stamp = True,
    tag = "latest",
)