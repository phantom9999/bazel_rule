load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "glog",
    srcs = ["lib/libglog.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    deps = [
        "@com_google_gflags//:gflags",
    ],
    visibility = ["//visibility:public"],
)
