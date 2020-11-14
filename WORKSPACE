#workspace(name = "com_github_demo")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

skylib_version = "0.8.0"
http_archive(
    name = "bazel_skylib",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format (skylib_version, skylib_version),
    sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
)


http_archive(
    name = "com_google_glog",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/glog-0.4.0/output.zip",
    sha256 = "cc6eb031cffc319e9da24a60ef95adadb61edb95f57aa7ee6361ab230358aa7a",
)

http_archive(
    name = "com_google_gflags",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/output.zip",
    sha256 = "56b5af4f60bf1b9e5e1adbcb91092bd17a4be992fd47807a8cf99bf0a4dd6680",
)

http_archive(
    name = "com_google_protobuf",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/protobuf_demo/output.zip",
    sha256 = "3db8761ea3bbcb90ae8a0a99e7ee9870c98dbda00e22725728ea4d79ddd0a835",
)


