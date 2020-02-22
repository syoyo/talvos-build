curdir=`pwd`

SPIRV_HEADERS_DIR=`pwd`/externals/SPIRV-Headers
BULD_DIR=`pwd`/build
DIST_DIR=`pwd`/dist

rm -rf ${BULD_DIR}
mkdir ${BULD_DIR}

# Cmake build
cd ${BULD_DIR} && cmake -G Ninja -DCMAKE_INSTALL_PREFIX=${DIST_DIR} \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DSPIRV_INCLUDE_DIR=${SPIRV_HEADERS_DIR}/include \
  -DSPIRV_TOOLS_INCLUDE_DIR=${DIST_DIR}/include \
  -DSPIRV_TOOLS_LIBRARY_DIR=${DIST_DIR}/lib \
  ../talvos


