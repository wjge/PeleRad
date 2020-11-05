#!/bin/bash

cmake \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
      -DCMAKE_PREFIX_PATH="$BOOST_DIR" \
      -DPELERAD_DIM=3 \
      -DPELERAD_ENABLE_MPI=OFF \
      -DPELERAD_ENABLE_OPENOMP=OFF \
      -DPELERAD_ENABLE_AMREX_EB=OFF \
      -DPELERAD_ENABLE_PARTICLES=OFF \
      -DPELERAD_ENABLE_CUDA=ON \
      -DPELERAD_ENABLE_TESTS=ON \
      -DPELERAD_ENABLE_FCOMPARE=OFF \
      -DAMREX_HOME_DIR=${AMREX_HOME} \
      -DPELE_PHYSICS_HOME_DIR=${PELE_PHYSICS_HOME} \
      ..
