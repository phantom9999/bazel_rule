set -x
set -e

echo ${OS_ENV};

workspace=`pwd`;

wget https://dl.bintray.com/boostorg/release/1.74.0/source/boost_1_74_0.tar.gz -O boost_1_74_0.tar.gz
tar -xvf boost_1_74_0.tar.gz
cd boost_1_74_0/;

sh bootstrap.sh
./b2 --help

