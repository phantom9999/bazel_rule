set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/abseil/abseil-cpp/archive/20200923.2.tar.gz -O abseil-cpp-20200923.2.tar.gz
tar -xf abseil-cpp-20200923.2.tar.gz
cd abseil-cpp-20200923.2/
cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DCMAKE_CXX_STANDARD=14 \
    -DCMAKE_CXX_STANDARD_REQUIRED=ON \
    -DCMAKE_CXX_EXTENSIONS=OFF
make install -j4

