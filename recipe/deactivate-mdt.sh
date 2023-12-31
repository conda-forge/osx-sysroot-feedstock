if [ -n "${CONDA_SYSROOT_@PLATFORM@_BACKUP_MACOSX_DEPLOYMENT_TARGET}" ]; then
    export MACOSX_DEPLOYMENT_TARGET="${CONDA_SYSROOT_@PLATFORM@_BACKUP_MACOSX_DEPLOYMENT_TARGET}"
    unset CONDA_SYSROOT_@PLATFORM@_BACKUP_MACOSX_DEPLOYMENT_TARGET
else
    unset MACOSX_DEPLOYMENT_TARGET
fi

if [ -n "${CONDA_SYSROOT_@PLATFORM@_BACKUP_CMAKE_ARGS}" ]; then
    export CMAKE_ARGS="${CONDA_SYSROOT_@PLATFORM@_BACKUP_CMAKE_ARGS}"
    unset CONDA_SYSROOT_@PLATFORM@_BACKUP_CMAKE_ARGS
else
    unset CMAKE_ARGS
fi

if [ -n "${CONDA_SYSROOT_@PLATFORM@_BACKUP_CPPFLAGS}" ]; then
    export CPPFLAGS="${CONDA_SYSROOT_@PLATFORM@_BACKUP_CPPFLAGS}"
    unset CONDA_SYSROOT_@PLATFORM@_BACKUP_CPPFLAGS
else
    unset CPPFLAGS
fi
