if [ "$(uname)" != "Darwin" ]; then
    echo "sdkroot-env_@PLATFORM@ is only available on macOS" >&2
    exit 1
fi

if [ "${SDKROOT:-0}" != "0" ] && [ -d "${SDKROOT:-0}" ]; then
    exit 0
fi

export _CONDA_SDKROOT_ENV_SET=1

if [ "${CONDA_BUILD_SYSROOT:-0}" != "0" ] && [ -d "${CONDA_BUILD_SYSROOT:-0}" ]; then
    export SDKROOT="${CONDA_BUILD_SYSROOT}"
    exit 0
fi

export SDKROOT="$(xcrun --show-sdk-path)"
