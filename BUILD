load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "brpc",
    srcs = ["lib/libbrpc.a"],
    includes = ["include"],
    hdrs = glob(["include/**/*.h"]),
    deps = [
        "@com_google_leveldb//:leveldb",
        "@com_google_protobuf//:protobuf",
        "@com_google_glog//:glog",
        "@com_google_gflags//:gflags",
    ],
    linkopts = ["-pthread"],
    visibility = ["//visibility:public"],
)