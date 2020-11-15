set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://github.com/google/googletest/archive/release-1.10.0.tar.gz -O googletest-release-1.10.0.tar.gz
tar -xf googletest-release-1.10.0.tar.gz;
cd googletest-release-1.10.0;

cmake . -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_INSTALL_PREFIX=${workspace}/output;
make install -j4

cd ${workspace};
cp BUILD output/;
cp WORKSPACE output/;
