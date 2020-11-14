load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "protobuf",
    srcs = ["lib/libprotobuf.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    linkopts = ["-pthread", "-lz"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "protobuf-lite",
    srcs = ["lib/libprotobuf-lite.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    linkopts = ["-pthread", "-lz"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "protoc",
    srcs = ["lib/libprotoc.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    deps = [
        "@//:protobuf"
    ],
    linkopts = ["-pthread", "-lz"],
    visibility = ["//visibility:public"],
)
