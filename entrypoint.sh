#!/bin/bash
export SRC_PATH=/opt/liveResume
export NODE_MODULE_DIR=/opt/node_modules

function cpModule() {
    if [[ -d ${NODE_MODULE_DIR} ]] ; then
        cp -r ${NODE_MODULE_DIR} ${SRC_PATH}
    else
        echo "NODE_MODULE_DIR : ${NODE_MODULE_DIR}; directory doesn't exists"
    fi
}

function createArt() {
    if [[ -d ${SRC_PATH} ]] ; then
        cpModule
        if [[ ! -z ${BASE_HREF} ]] ; then
            cd ${SRC_PATH}
            if [[ -d ./dist ]] ; then
                rm -rf ./dist
            fi
            npm run build-locale:en --prod --aot --base-href "${BASE_HREF}"
            cd -
        else
            echo "Need to pass BASE_HREF"
        fi
    else
        echo "SRC_PATH : ${SRC_PATH}; directory doesn't exists"
    fi
}



createArt