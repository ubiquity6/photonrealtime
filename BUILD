package(
    default_visibility = ["//visibility:public"],
)

load(":photon_lib.bzl", "photon_lib")

config_setting(
    name = "mac",
    values = {"cpu": "darwin"},
)

config_setting(
    name = "wasm",
    values = { "cpu": "wasm" }
)


photon_lib("LoadBalancing-cpp")
