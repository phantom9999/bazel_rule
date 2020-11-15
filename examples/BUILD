load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name="brpc_demo",
    srcs=["brpc_demo/main.cc"],
    deps = [
        "@org_apache_brpc//:brpc",
    ],
)

cc_binary(
    name="gflags_demo",
    srcs=["gflags_demo/main.cc"],
    deps = [
        "@com_google_gflags//:gflags",
    ],
)

cc_binary(
    name="glog_demo",
    srcs=["glog_demo/main.cc"],
    deps = [
        "@com_google_gflags//:gflags",
        "@com_google_glog//:glog",
    ],
)

cc_binary(
    name="gtest_demo",
    srcs=["gtest_demo/main.cc"],
    deps = [
        "@com_google_gtest//:gtest",
        "@com_google_gtest//:gtest_main",
    ],
)

cc_binary(
    name="leveldb_demo",
    srcs=["leveldb_demo/main.cc"],
    deps = [
        "@com_google_leveldb//:leveldb",
    ],
)

cc_binary(
    name="protobuf_demo",
    srcs=["protobuf_demo/main.cc"],
    deps = [
        "@com_google_protobuf//:protobuf",
    ],
)

cc_binary(
    name="snappy_demo",
    srcs=["snappy_demo/main.cc"],
    deps = [
        "@com_google_snappy//:snappy",
    ],
)
