package(
    default_visibility = ["//visibility:public"],
)

load(":convert_bc.bzl", "convert_bc", "photon_emscripten_lib")

TO_CONVERT = [
  "Common-cpp/lib/Common-cpp_debug_emscripten_Emscripten.bc",
  "Common-cpp/lib/Common-cpp_release_emscripten_Emscripten.bc",
  "Photon-cpp/lib/Photon-cpp_debug_emscripten_Emscripten.bc",
  "Photon-cpp/lib/Photon-cpp_release_emscripten_Emscripten.bc",
  "LoadBalancing-cpp/lib/LoadBalancing-cpp_debug_emscripten_Emscripten.bc",
  "LoadBalancing-cpp/lib/LoadBalancing-cpp_release_emscripten_Emscripten.bc",
]

[convert_bc(fp) for fp in TO_CONVERT]

photon_emscripten_lib("Common-cpp")
photon_emscripten_lib("Photon-cpp", ["Common-cpp"])
photon_emscripten_lib("LoadBalancing-cpp", ["Common-cpp", "Photon-cpp"])
photon_emscripten_lib("Chat-cpp")
