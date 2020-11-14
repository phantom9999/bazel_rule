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
    url = "https://github.com/phantom9999/bazel_rule/releases/download/protobuf-3.5.0/output.zip",
    sha256 = "3db8761ea3bbcb90ae8a0a99e7ee9870c98dbda00e22725728ea4d79ddd0a835",
)

http_archive(
    name = "com_google_snappy",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/snappy-1.1.8/output.zip",
    sha256 = "b7be9a8d16947d0373ddc21f92c2e175674da4b0b430fa3840bc20b001bf0d72",
)

http_archive(
    name = "com_google_leveldb",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/leveldb-1.22/output.zip",
    sha256 = "b8f46a4eebd48315b594c65f3f512fc1a95b07693de4c6dac913e64a0ff7c8bf",
)

http_archive(
    name = "com_google_gtest",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/googletest-release-1.10.0/output.zip",
    sha256 = "b0bf2a49143dc501f635ef4306b7e3478d35ab012e8684e53a091b9463054bb3",
)
