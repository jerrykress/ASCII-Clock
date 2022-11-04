# clone TUI library
git clone https://github.com/jerrykress/Xcurse

# make build dir
mkdir build && cd build

# run cmake
cmake -DCMAKE_BUILD_TYPE=Release ..

# compile all
make

echo "Build success! Run ./Clock to start!"
echo "For more information please read the git repo page: https://github.com/jerrykress/ASCII-Clock."