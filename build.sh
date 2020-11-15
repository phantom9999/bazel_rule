set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

mkdir deps;
cd deps;

wget https://github.com/phantom9999/bazel_rule/releases/download/glog-0.4.0/${OS_ENV}.tar.gz -O glog.tar.gz;
wget https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/${OS_ENV}.tar.gz -O gflags.tar.gz;
wget https://github.com/phantom9999/bazel_rule/releases/download/protobuf-3.5.0/${OS_ENV}.tar.gz -O protobuf.tar.gz;
wget https://github.com/phantom9999/bazel_rule/releases/download/leveldb-1.22/${OS_ENV}.tar.gz -O leveldb.tar.gz;

tar -xf glog.tar.gz;
tar -xf gflags.tar.gz;
tar -xf protobuf.tar.gz;
tar -xf leveldb.tar.gz;
export PATH=`pwd`/bin:$PATH;
export CMAKE_INCLUDE_PATH=`pwd`/include;
export CMAKE_LIBRARY_PATH=`pwd`/lib;

cd ${workspace};
wget https://github.com/apache/incubator-brpc/archive/0.9.7.tar.gz -O incubator-brpc-0.9.7.tar.gz;
tar -xf incubator-brpc-0.9.7.tar.gz;
cd incubator-brpc-0.9.7;

cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DWITH_GLOG=ON \
    -DDOWNLOAD_GTEST=OFF
make install -j4

cd ${workspace};
rm output/lib/libbrpc.so
cp BUILD output/;
cp ${OS_ENV}.WORKSPACE output/;

