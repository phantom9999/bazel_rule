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
        "centos7": "dd20928de69350b6ffeb01c6384a286a0894d810bb2c48ba6b53854ec291ee2b",
        "centos8": "",
    }, 
    "snappy-1.1.8" : {
        "centos7": "939dbe5c6e6df97657680d8f83a0bfe3788ffbc372cc88111954cdd281a32c04",
        "centos8": "",
    }, 
    "leveldb-1.22" : {
        "centos7": "ca17db3d02d80443e671018cc70dc5b8c4d79ea2d14d6d5806605d0d68f2cbcc",
        "centos8": "",
    }, 
    "googletest-release-1.10.0" : {
        "centos7": "24b58681456f924793427ab90c409a8071cc608d3093f483828ce1cd16a3ab42",
        "centos8": "",
    }, 
    "incubator-brpc-0.9.7_beta2" : {
        "centos7": "",
        "centos8": "",
    }, 
}

alias_tag = {
    "incubator-brpc-0.9.7": "incubator-brpc-0.9.7_beta2",
}

def get_package(package, tag, os = "centos7"):
    if package == None or tag == None:
        return
    if package in native.existing_rules():
        print("%s existed" % package)
        return
    tagname = alias_tag.get(tag)
    if tagname == None:
        tagname = tag
    else:
        print("change %s => %s" % (tag, tagname))
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
        build_file = "@com_github_phantom9999_bazel//patch:%s.BUILD" % (package),
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

