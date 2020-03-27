def photon_lib(oname):
  for build in ['debug', 'release']:
    name = oname + "_" + build
    native.alias(
        name = name,
        actual = select({
            "@org_photon//:mac": "@org_photon//macosx:%s" % name,
            "@org_photon//:wasm": "@org_photon//emscripten:%s" % name,
        }),
        )
  
