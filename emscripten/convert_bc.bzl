def convert_bc(src):
  native.genrule(
      name = src + "_converter",
      outs = [src.replace('.bc', '.o')],
      srcs = [src],
      cmd = "cp $(location %s) $@" % src
      )


def photon_emscripten_lib(name, deps = []):
  for build in ['debug', 'release']:
    native.cc_library(
        name = name + "_" + build,
        srcs = [
            "%s/lib/%s_%s_emscripten_Emscripten.o" % (name, name, build)
        ],
        hdrs = native.glob([
            "%s/inc/**/*.h" % name
        ]),
        includes = [
            ".",
        ],
        deps = ["%s_%s" % (dep, build) for dep in deps],
        )
  
