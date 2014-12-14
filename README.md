albers-core
===========

core albers library 

Before compiling or using on lxplus:

    source init.sh

Before compiling or using on mac os: 

    source init_macos.sh

Compilation:

    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX=../install ..
    make -j 4 install
    cd ..

Test:

    ./install/bin/write
    ./install/bin/read
    

