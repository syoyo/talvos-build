
curdir=`pwd`

BULD_DIR=`pwd`/build-externals
DIST_DIR=`pwd`/dist

rm -rf ${BULD_DIR}
mkdir ${BULD_DIR}

#
# Build SPIRV-Tools
#

# checkout dependencies
(cd ../externals/SPIRV-Tools; ./utils/git-sync-repos)

# Cmake build
cd ${BULD_DIR} && cmake -G Ninja -DCMAKE_INSTALL_PREFIX=${DIST_DIR} -DCMAKE_BUILD_TYPE=RelWithDebInfo ../externals/SPIRV-Tools && cd ${BULD_DIR} && ninja && ninja install
