if [ "${_CONDA_SDKROOT_ENV_SET:-0}" != "0" ]; then
    unset _CONDA_SDKROOT_ENV_SET
    if [ "${SDKROOT:-0}" != "0" ]; then
        unset SDKROOT
    fi
fi
