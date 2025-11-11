#!/bin/bash

find "${RECIPE_DIR}" -name "activate-sdkroot-env.sh" -exec cp {} . \;
find "${RECIPE_DIR}" -name "deactivate-sdkroot-env.sh" -exec cp {} . \;

find . -name "activate-sdkroot_env.sh" -exec sed -i.bak "s|@MACOSX_DEPLOYMENT_TARGET@|${_MACOSX_DEPLOYMENT_TARGET_}|g" "{}" \;
find . -name "activate-sdkroot_env.sh" -exec sed -i.bak "s|@PLATFORM@|${cross_target_platform//-/_}|g" "{}" \;
find . -name "activate-sdkroot_env.sh.bak" -exec rm "{}" \;

mkdir -p "${PREFIX}"/etc/conda/{de,}activate.d/
cp "${SRC_DIR}"/activate-sdkroot_env.sh "${PREFIX}"/etc/conda/activate.d/activate_"${PKG_NAME}".sh
cp "${SRC_DIR}"/deactivate-sdkroot_env.sh "${PREFIX}"/etc/conda/deactivate.d/deactivate_"${PKG_NAME}".sh
