set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/google/snappy/archive/1.1.8.tar.gz \
    -O snappy-1.1.8.tar.gz
tar -xf snappy-1.1.8.tar.gz;
cd snappy-1.1.8;
cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DSNAPPY_BUILD_TESTS=OFF

make install -j4

cd ${workspace};
cp BUILD output/
cp WORKSPACE output/
