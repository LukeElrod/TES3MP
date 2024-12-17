# Once found, defines:
#  LuaJit_FOUND
#  LuaJit_INCLUDE_DIRS
#  LuaJit_LIBRARIES

include(LibFindMacros)

set(LUAJIT_CUSTOM_INCLUDE_PATH "D:/dev/TES3MP/deps/LuaJIT/src/")
set(LUAJIT_CUSTOM_LIBRARY_PATH "D:/dev/TES3MP/deps/LuaJIT/src/")

libfind_pkg_detect(LuaJit luajit
    FIND_PATH luajit.h
    PATH_SUFFIXES luajit
    HINTS ${LUAJIT_CUSTOM_INCLUDE_PATH}
    FIND_LIBRARY NAMES luajit-5.1 luajit
    HINTS ${LUAJIT_CUSTOM_LIBRARY_PATH}
)

libfind_process(LuaJit)
