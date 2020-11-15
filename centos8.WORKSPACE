workspace(name = "com_google_glog")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_phantom9999_bazel",
    remote = "https://github.com/phantom9999/bazel_rule.git",
    branch = "main",
)

load("com_github_phantom9999_bazel:package_rule.bzl", "get_package")

get_package("com_google_gflags", "gflags-2.2.2", "centos8")
