package(
    default_visibility = ["//visibility:public"],
)

load(":macosx_lib.bzl", "photon_macosx_lib")

photon_macosx_lib("Common-cpp")
photon_macosx_lib("Photon-cpp", ["Common-cpp"])
photon_macosx_lib("LoadBalancing-cpp", ["Common-cpp", "Photon-cpp"])
photon_macosx_lib("Chat-cpp")
