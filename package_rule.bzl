load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

packages = {
    "gflags-2.2.2" : {
        "centos7": "",
        "centos8": "",
    }, 
    "glog-0.4.0" : {
        "centos7": "",
        "centos8": "",
        "output": "43c674ed07cf50d006a5dd2d97c455108bcc3d15364eb38da0d343c459a46737",
    }, 
    "protobuf-3.5.0" : {
        "centos7": "",
        "centos8": "",
        "output": "3db8761ea3bbcb90ae8a0a99e7ee9870c98dbda00e22725728ea4d79ddd0a835",
    }, 
    "snappy-1.1.8" : {
        "centos7": "",
        "centos8": "",
        "output": "b7be9a8d16947d0373ddc21f92c2e175674da4b0b430fa3840bc20b001bf0d72",
    }, 
    "leveldb-1.22" : {
        "centos7": "",
        "centos8": "",
        "output": "eacf09277f0e1b9f2a62971bb243193edceaf0134bff5ae19921bdc70dcb902c",
    }, 
    "googletest-release-1.10.0" : {
        "centos7": "",
        "centos8": "",
        "output": "b0bf2a49143dc501f635ef4306b7e3478d35ab012e8684e53a091b9463054bb3",
    }, 
    "incubator-brpc-0.9.7_beta" : {
        "centos7": "",
        "centos8": "",
        "output": "b0bf2a49143dc501f635ef4306b7e3478d35ab012e8684e53a091b9463054bb3",
    }, 
}

def get_package(package, tag, os = "centos7"):
    if package == None or tag == None:
        return
    if package in native.existing_rules():
        return
    tag_data = packages.get(tag)
    if tag_data == None:
        return
    
    sha256_data = tag_data.get(os)
    if sha256_data == None:
        return
    print(sha256_data)
    
    http_archive(
        name = package,
        url = "https://github.com/phantom9999/bazel_rule/releases/download/%s/%s.tar.gz" % (tag, os),
        sha256 = sha256_data,
    )


def try_package(package, tag, os = "centos7"):
    if package == None or tag == None:
        return
    if package in native.existing_rules():
        return
    http_archive(
        name = package,
        url = "https://github.com/phantom9999/bazel_rule/releases/download/%s/%s.tar.gz" % (tag, os)
    )

