set -x
set -e

workspace=`pwd`;

wget https://github.com/protocolbuffers/protobuf/archive/v3.5.0.tar.gz \
    -O protobuf-3.5.0.tar.gz;
tar -xf protobuf-3.5.0.tar.gz;
cd protobuf-3.5.0;
sh autogen.sh;
./configure --with-pic=yes \
    --enable-shared=no \
    --prefix=${workspace}/output

make install -j4

cd ${workspace};
cp BUILD output/;
cp WORKSPACE output/;

