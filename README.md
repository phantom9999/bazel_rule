# bazel_rule
find packages by bazel from github.


# example

目录结构:
- WORKSPACE
- BUILD
- main.cc

WORKSPACE文件内容:

```
workspace(name = "com_github_demo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "com_github_phantom9999_bazel",
    remote = "https://github.com/phantom9999/bazel_rule.git",
    branch = "main",
)

load("@com_github_phantom9999_bazel//:package_rule.bzl", "get_package")

os_env = "centos7"

get_package("com_google_gflags", "gflags-2.2.2", os_env)
get_package("com_google_glog", "glog-0.4.0", os_env)
get_package("com_google_protobuf", "protobuf-3.5.0", os_env)
get_package("com_google_leveldb", "leveldb-1.22", "centos7")
get_package("org_apache_brpc", "incubator-brpc-0.9.7", os_env)
```

BUILD文件内容:

```

cc_binary(
    name="demo",
    srcs=["main.cc"],
    deps = [
        "@org_apache_brpc//:brpc",
    ],
)

```

main.cc文件内容:

```
#include <gflags/gflags.h>
#include <butil/logging.h>
#include <brpc/server.h>

DEFINE_bool(echo_attachment, true, "Echo attachment as well");
DEFINE_int32(port, 8000, "TCP Port of this server");
DEFINE_int32(idle_timeout_s, -1, "Connection will be closed if there is no "
             "read/write operations during the last `idle_timeout_s'");

int main(int argc, char* argv[]) {
    google::ParseCommandLineFlags(&argc, &argv, true);
    brpc::Server server;
    brpc::ServerOptions options;
    options.idle_timeout_sec = FLAGS_idle_timeout_s;
    if (server.Start(FLAGS_port, &options) != 0) {
        LOG(ERROR) << "Fail to start EchoServer";
        return -1;
    }

    server.RunUntilAskedToQuit();
    return 0;
}
```




