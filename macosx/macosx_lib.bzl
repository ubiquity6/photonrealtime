def photon_macosx_lib(name, deps = []):
  for build in ['debug', 'release']:
    native.cc_library(
        name = name + "_" + build,
        srcs = [
            "%s/lib/lib%s_%s_macosx.a" % (name, name, build)
        ],
        hdrs = native.glob([
            "%s/inc/**/*.h" % name
        ]),
        includes = [
            ".",
        ],
        deps = ["%s_%s" % (dep, build) for dep in deps],
        )
  
