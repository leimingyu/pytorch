// {{header1}}
// {{header2}}

extern "C" {
    #include "lua.h"
    #include "lauxlib.h"
    #include "lualib.h"
}

#ifndef _WIN32
    #include <dlfcn.h>
#endif

#include <iostream>
#include <stdexcept>

#include "luaT.h"
#include "THTensor.h"
#include "THStorage.h"
#include "LuaHelper.h"
#include "nnWrapper.h"

using namespace std;

lua_State *luaInit() {
    #ifndef _WIN32
    #ifdef USE_LUAJIT
        #define LUALIBNAME "libluajit"
    #else
        #define LUALIBNAME "libPyTorchLua"
    #endif
    void *hdl = dlopen(LUALIBNAME ".so", RTLD_NOW | RTLD_GLOBAL);
    if(hdl == 0) {
        hdl = dlopen(LUALIBNAME ".dylib", RTLD_NOW | RTLD_GLOBAL);
    }
    if(hdl == 0) {
        cout << "Failed to load both " LUALIBNAME ".so and " LUALIBNAME ".dylib, fatal" << endl;
        cout << dlerror() << endl;
        throw runtime_error(string("Couldnt load " LUALIBNAME ".so or " LUALIBNAME ".dylib") + dlerror());
    } else {
    }

    #endif

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);

    lua_getglobal(L, "require");
    lua_pushstring(L, "torch");
    lua_call(L, 1, 0);
//    lua_setglobal(L, "torch");

    lua_getglobal(L, "require");
    lua_pushstring(L, "nn");
    lua_call(L, 1, 1);
    lua_setglobal(L, "nn");

    return L;
}
//void luaRequire(lua_State *L, const char *libName) {
//    lua_getglobal(L, "require");
//    lua_pushstring(L, libName);
//    lua_call(L, 1, 1);
//    lua_setglobal(L, libName);
//}
void luaClose(lua_State *L) {
    lua_close(L);
}
void collectGarbage(lua_State *L) {
    pushGlobal(L, "collectgarbage");
    lua_call(L, 0, 0);
}

{% for typedict in types %}
{% set Real = typedict['Real'] %}
{% set real = typedict['real'] %}
int TH{{Real}}Storage_getRefCount(TH{{Real}}Storage *self) {
    return self->refcount;
}
int TH{{Real}}Tensor_getRefCount(TH{{Real}}Tensor *self) {
    return self->refcount;
}
{% endfor %}

long pointerAsInt(void *ptr) {
    return (long)ptr;
}

