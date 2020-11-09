set -x
set -e

workspace=`pwd`;

wget https://github.com/gflags/gflags/archive/v2.2.2.tar.gz -O gflags-2.2.2.tar.gz
tar -xf gflags-2.2.2.tar.gz
cd gflags-2.2.2/
cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DGFLAGS_NAMESPACE=google
make install -j4

