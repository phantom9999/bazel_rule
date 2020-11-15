load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "gmock",
    srcs = ["lib/libgmock.a"],
    includes = ["include"],
    hdrs = glob(["include/gmock/**/*.h"]),
    linkopts = ["-pthread"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gmock_main",
    srcs = ["lib/libgmock_main.a"],
    deps = [
        ":gmock",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gtest",
    srcs = ["lib/libgtest.a"],
    includes = ["include"],
    hdrs = glob(["include/gtest/**/*.h"]),
    linkopts = ["-pthread"],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gtest_main",
    srcs = ["lib/libgtest_main.a"],
    deps = [
        ":gtest",
    ],
    visibility = ["//visibility:public"],
)
