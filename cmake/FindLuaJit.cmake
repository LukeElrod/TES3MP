# Once found, defines:
#  LuaJit_FOUND
#  LuaJit_INCLUDE_DIRS
#  LuaJit_LIBRARIES

include(LibFindMacros)

set(LUA_CUSTOM_INCLUDE_PATH "D:/dev/TES3MP/deps/LuaJIT/src/")
set(LUA_CUSTOM_LIBRARY_PATH "D:/dev/TES3MP/deps/LuaJIT/src/")

libfind_pkg_detect(LuaJit lua
    FIND_PATH lua.h
    PATH_SUFFIXES lua
    HINTS ${LUA_CUSTOM_INCLUDE_PATH}
    FIND_LIBRARY NAMES lua51
    HINTS ${LUA_CUSTOM_LIBRARY_PATH}
)

libfind_process(LuaJit)
