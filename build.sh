set -x
set -e

workspace=`pwd`;

wget https://github.com/google/leveldb/archive/1.22.tar.gz -O leveldb-1.22.tar.gz
tar -xf leveldb-1.22.tar.gz;
cd leveldb-1.22;

cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output \
    -DCMAKE_CXX_FLAGS=-fPIC \
    -DLEVELDB_BUILD_TESTS=OFF \
    -DLEVELDB_BUILD_BENCHMARKS=OFF 
make install -j4

cd ${workspace};
cp BUILD output/
cp WORKSPACE output/
