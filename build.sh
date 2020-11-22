set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/fmtlib/fmt/archive/7.1.2.tar.gz -O fmt-7.1.2.tar.gz
tar -xf fmt-7.1.2.tar.gz
cd fmt-7.1.2/
cmake3 . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output
make install -j4

