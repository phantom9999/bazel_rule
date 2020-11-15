workspace(name = "com_github_phantom9999_bazel")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@//:package_rule.bzl", "try_package", "get_package")


skylib_version = "0.8.0"
http_archive(
    name = "bazel_skylib",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format (skylib_version, skylib_version),
    sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
)

os_env = "centos7"
get_package("com_google_gflags", "gflags-2.2.2", os_env)
get_package("com_google_glog", "glog-0.4.0", os_env)
get_package("com_google_protobuf", "protobuf-3.5.0", os_env)
get_package("com_google_snappy", "snappy-1.1.8", os_env)
get_package("com_google_leveldb", "leveldb-1.22", "centos7")
get_package("com_google_gtest", "googletest-release-1.10.0", os_env)
get_package("org_apache_brpc", "incubator-brpc-0.9.7", os_env)
