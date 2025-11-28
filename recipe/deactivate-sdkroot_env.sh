if [ "${_CONDA_SDKROOT_ENV_SET:-0}" != "0" ]; then
    unset _CONDA_SDKROOT_ENV_SET
    if [ "${SDKROOT:-0}" != "0" ]; then
        unset SDKROOT
    fi
fi
if [ "${_CONDA_BUILD_SYSROOT_ENV_SET:-0}" != "0" ]; then
    unset _CONDA_BUILD_SYSROOT_ENV_SET
    if [ "${CONDA_BUILD_SYSROOT:-0}" != "0" ]; then
        unset CONDA_BUILD_SYSROOT
    fi
fi
