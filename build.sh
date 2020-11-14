set -x
set -e

workspace=`pwd`;

mkdir deps;
cd deps;
wget https://github.com/phantom9999/bazel_rule/releases/download/glog-0.4.0/output.zip -O glog.zip;
wget https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/output.zip -O gflags.zip;
wget https://github.com/phantom9999/bazel_rule/releases/download/protobuf-3.5.0/output.zip -O protobuf.zip;
wget https://github.com/phantom9999/bazel_rule/releases/download/leveldb-1.22/output.zip -O leveldb.zip;
unzip -n glog.zip;
unzip -n gflags.zip;
unzip -n protobuf.zip;
unzip -n leveldb.zip;
export PATH=`pwd`/bin:$PATH;
export CMAKE_INCLUDE_PATH=`pwd`/include;
export CMAKE_LIBRARY_PATH=`pwd`/lib;

cd ${workspace};
wget https://github.com/apache/incubator-brpc/archive/0.9.7.tar.gz -O incubator-brpc-0.9.7.tar.gz;
tar -xf incubator-brpc-0.9.7.tar.gz;
cd incubator-brpc-0.9.7;

cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DWITH_GLOG=ON \
    -DDOWNLOAD_GTEST=OFF
make install -j4

cd ${workspace};
cp BUILD output/;
cp workspace output/;
