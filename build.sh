set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/catchorg/Catch2/archive/v2.13.3.tar.gz -O Catch2-2.13.3.tar.gz
tar -xf Catch2-2.13.3.tar.gz
cd Catch2-2.13.3/
mkdir build/;
cd build;
cmake3 .. -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DCATCH_BUILD_TESTING=OFF
make install -j4

