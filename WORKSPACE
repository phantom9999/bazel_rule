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
    sha256 = "43c674ed07cf50d006a5dd2d97c455108bcc3d15364eb38da0d343c459a46737",
)

http_archive(
    name = "com_google_gflags",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/output.zip",
    sha256 = "8c3dfac258d7d182f507e33312582bb63e174e3f0e726a90aee98bebe8b43c5d",
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
    sha256 = "eacf09277f0e1b9f2a62971bb243193edceaf0134bff5ae19921bdc70dcb902c",
)

http_archive(
    name = "com_google_gtest",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/googletest-release-1.10.0/output.zip",
    sha256 = "b0bf2a49143dc501f635ef4306b7e3478d35ab012e8684e53a091b9463054bb3",
)

http_archive(
    name = "com_apache_brpc",
    url = "https://github.com/phantom9999/bazel_rule/releases/download/incubator-brpc-0.9.7_beta/output.zip",
    #sha256 = "b0bf2a49143dc501f635ef4306b7e3478d35ab012e8684e53a091b9463054bb3",
)
