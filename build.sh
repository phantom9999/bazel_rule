set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/gflags/gflags/archive/v2.2.2.tar.gz -O gflags-2.2.2.tar.gz
tar -xf gflags-2.2.2.tar.gz
cd gflags-2.2.2/
cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DGFLAGS_NAMESPACE=google
make install -j4

