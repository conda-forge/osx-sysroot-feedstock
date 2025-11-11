if [ "${SDKROOT:-0}" != "0" ] && [ -d "${SDKROOT:-0}" ]; then
    exit 0
fi

if [ "${CONDA_BUILD_SYSROOT:-0}" != "0" ] && [ -d "${CONDA_BUILD_SYSROOT:-0}" ]; then
    export _CONDA_SDKROOT_ENV_SET=1
    export SDKROOT="${CONDA_BUILD_SYSROOT}"
    exit 0
fi

if [ "$(uname)" != "Darwin" ]; then
    echo "Need to set SDKROOT when cross-compiling" >&2
    exit 1
fi

export _CONDA_SDKROOT_ENV_SET=1
export SDKROOT="$(xcrun --show-sdk-path)"
