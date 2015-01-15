albers-core
===========

core albers library 

Before compiling or using on lxplus, set up your environment:

    source init.sh

Before compiling or using on mac os, install ROOT and make sure your environment is correctly set to use ROOT and compile programs based on ROOT. Then, set up your environment:

    source init_macos.sh 
    
Compile:



    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX=../install ..
    make -j 4 install
    cd ..

Test:

    ./install/bin/albers-write
    ./install/bin/albers-read
    
