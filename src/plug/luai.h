// A frontend for TGXP LUA plugins

#ifndef TGXP_LUAI_H
#define TGXP_LUAI_H

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

typedef struct {
    char *path;
} TGXP_Plugin;

TGXP_Plugin TGXP_CreatePlugin(char *);
void TGXP_DestroyPlugin(TGXP_Plugin *);

typedef struct {
    lua_State *state;
    TGXP_Plugin *plugins;
    unsigned plug_ct;
    unsigned mx_ct;
} TGXP_PluginSubsystem;

TGXP_PluginSubsystem TGXP_CreatePluginSubsystem(lua_State *, unsigned);
void TGXP_DestroyPluginSubsystem(TGXP_PluginSubsystem *);

void TGXP_InitPluginSubsystem();
void TGXP_LoadLuaPlugin(char *);

#endif