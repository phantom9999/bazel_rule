load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "gflags",
    srcs = ["lib/libgflags.a"],
    includes = ["include"],
    #hdrs = ["include"],
    linkopts = ["lib/libgflags.a", "-pthread"],
    visibility = ["//visibility:public"],
)


