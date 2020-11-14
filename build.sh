set -x
set -e

workspace=`pwd`;

# 拉取依赖
mkdir -p deps;
cd deps;
wget https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/output.zip
unzip output.zip
ls;

cd ${workspace};
export CMAKE_INCLUDE_PATH=${workspace}/deps/include;
export CMAKE_LIBRARY_PATH=${workspace}/deps/lib:${workspace}/deps/output/lib64;
export gflags_DIR=${workspace}/deps;

# 下载源码
wget https://github.com/google/glog/archive/v0.4.0.tar.gz \
  -O glog-0.4.0.tar.gz
tar -xf glog-0.4.0.tar.gz
cd glog-0.4.0/
cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_CXX_FLAGS=-fPIC \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output 
make install -j4

cd ${workspace};
cp WORKSPACE output/
cp BUILD output/


