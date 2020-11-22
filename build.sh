set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/libevent/libevent/archive/release-2.1.12-stable.tar.gz -O libevent-release-2.1.12-stable.tar.gz
tar -xf libevent-release-2.1.12-stable.tar.gz
cd libevent-release-2.1.12-stable/
cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DEVENT__LIBRARY_TYPE=STATIC

make install -j4

