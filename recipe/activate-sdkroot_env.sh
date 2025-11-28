if [ "${SDKROOT:-0}" != "0" ] && [ -d "${SDKROOT:-0}" ]; then
    if [ "${CONDA_BUILD_SYSROOT:-0}" = "0" ] && [ "${CONDA_BUILD:-0}" = "1" ]; then
        _CONDA_BUILD_SYSROOT_ENV_SET=1
        export CONDA_BUILD_SYSROOT="${SDKROOT}"
    fi
    return 0
fi

if [ "${CONDA_BUILD_SYSROOT:-0}" != "0" ] && [ -d "${CONDA_BUILD_SYSROOT:-0}" ]; then
    _CONDA_SDKROOT_ENV_SET=1
    export SDKROOT="${CONDA_BUILD_SYSROOT}"
    return 0
fi

if [ "$(uname)" != "Darwin" ]; then
    echo "Need to set SDKROOT when cross-compiling" >&2
    return 1
fi

_CONDA_SDKROOT_ENV_SET=1
export SDKROOT="$(xcrun --show-sdk-path)"

if [ "${CONDA_BUILD:-0}" = "1" ]; then
  _CONDA_BUILD_SYSROOT_ENV_SET=1
  export CONDA_BUILD_SYSROOT="${SDKROOT}"
fi
