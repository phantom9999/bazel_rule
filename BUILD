load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "gflags",
    srcs = ["lib/libgflags.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    linkopts = ["-pthread"],
    visibility = ["//visibility:public"],
)