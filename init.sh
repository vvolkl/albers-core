export PATH=/afs/cern.ch/sw/lcg/contrib/CMake/2.8.9/Linux-i386/bin:${PATH}
source /afs/cern.ch/sw/lcg/contrib/gcc/4.9.3/x86_64-slc6/setup.sh
source /afs/cern.ch/exp/fcc/sw/0.5/LCG_80/ROOT/6.04.06/x86_64-slc6-gcc49-opt/bin/thisroot.sh

export ALBERS=$PWD/install
export LD_LIBRARY_PATH=$ALBERS/examples:$ALBERS/lib:$LD_LIBRARY_PATH
export PYTHONPATH=$ALBERS/python:$PYTHONPATH
export PATH=$ALBERS/bin:$PATH

