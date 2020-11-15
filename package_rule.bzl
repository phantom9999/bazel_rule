load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

packages = {
    "gflags-2.2.2" : {
        "centos7": "3c8cb88947fbb42062e956992e18287779e43244e13cc7bd3872446f8052ec81",
        "centos8": "4ce1b75b2b15f646ad3e0fe859d2ea74e94f435a913ec0538da65e66c6b6d8cb",
    }, 
    "glog-0.4.0" : {
        "centos7": "f376954d2ded538b1861d1f2bdc1f97420649c635d00c257d0635742f9a4738e",
        "centos8": "b48dda89dfb015f72610a040870d8a752e688db74b94d1d33edb8a861fa9e74b",
    }, 
    "protobuf-3.5.0" : {
        "centos7": "",
        "centos8": "",
    }, 
    "snappy-1.1.8" : {
        "centos7": "",
        "centos8": "",
    }, 
    "leveldb-1.22" : {
        "centos7": "",
        "centos8": "",
    }, 
    "googletest-release-1.10.0" : {
        "centos7": "",
        "centos8": "",
    }, 
    "incubator-brpc-0.9.7_beta" : {
        "centos7": "",
        "centos8": "",
    }, 
}

alias_tag = {
    "incubator-brpc-0.9.7": "incubator-brpc-0.9.7_beta",
}

def get_package(package, tag, os = "centos7"):
    if package == None or tag == None:
        return
    if package in native.existing_rules():
        return
    tagname = alias_tag.get(tag)
    if tagname == None:
        tagname = tag
    tag_data = packages.get(tagname)
    if tag_data == None:
        return
    
    sha256_data = tag_data.get(os)
    if sha256_data == None:
        return
    print(sha256_data)
    
    http_archive(
        name = package,
        url = "https://github.com/phantom9999/bazel_rule/releases/download/%s/%s.tar.gz" % (tagname, os),
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

