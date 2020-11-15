set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

# 拉取依赖
mkdir -p deps;
cd deps;
if [[ ${OS_ENV} == "centos7" ]]; then
  wget https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/centos7.tar.gz -O gflags.tar.gz
else
  wget https://github.com/phantom9999/bazel_rule/releases/download/gflags-2.2.2/centos8.tar.gz -O gflags.tar.gz
fi

tar -xf gflags.tar.gz
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
cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_CXX_FLAGS=-fPIC \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DCMAKE_INSTALL_LIBDIR=lib
make install -j4

cd ${workspace};
if [[ ${OS_ENV} == "centos7" ]]; then
  cp centos7.WORKSPACE output/WORKSPACE
else
  cp centos8.WORKSPACE output/WORKSPACE
fi

cp BUILD output/


