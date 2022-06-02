#!/bin/bash
export SRC_PATH=/opt/liveResume
export NODE_MODULE_DIR=/opt/node_modules

function cpModule() {
    if [[ -d ${NODE_MODULE_DIR} ]] ; then
        if [[ -d ${SRC_PATH}/node_modules ]] ; then
            echo "Removing existing node_modules from ${SRC_PATH}"
            rm -rf ${SRC_PATH}/node_modules
        fi
        echo "Copying node_modules to ${SRC_PATH}"
        cp -r ${NODE_MODULE_DIR} ${SRC_PATH}
        echo "${SRC_PATH} updated with latest node_modules files"
    else
        echo "NODE_MODULE_DIR : ${NODE_MODULE_DIR}; directory doesn't exists"
        exit 1
    fi
}

function createArt() {
    if [[ -d ${SRC_PATH} ]] ; then
        if [[ ! ${BUILD_ENV} ]] ; then
            export BUILD_ENV="liveResume"
        fi
        echo "Choosing BUILD_ENV = ${BUILD_ENV}"
        cpModule
        cd ${SRC_PATH}
        if [[ -d ./dist ]] ; then
            rm -rf ./dist
        fi
        npm run build-locale:${BUILD_ENV} --prod --aot
        cd -
    else
        echo "SRC_PATH : ${SRC_PATH}; directory doesn't exists"
        exit 1
    fi
}



createArt