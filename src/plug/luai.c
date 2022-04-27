#include "luai.h"
#include "../ufs.h"

#include <string.h>
#include <stdlib.h>

TGXP_Plugin TGXP_CreatePlugin(char *path) {
    TGXP_Plugin plug;
    plug.path = malloc(strlen(path) + 1);
    strcpy(plug.path, path);
    return plug;
}

void TGXP_DestroyPlugin(TGXP_Plugin *plg) {
    free(plg->path);
}

TGXP_PluginSubsystem TGXP_CreatePluginSubsystem(lua_State *s, unsigned mx_ct) {
    TGXP_PluginSubsystem pss;
    pss.state = s;
    pss.plug_ct = 0;
    pss.mx_ct = mx_ct;
    pss.plugins = NULL;
    return pss;
}

void TGXP_DestroyPluginSubsystem(TGXP_PluginSubsystem *pss) {
    for (unsigned i = 0; i < pss->plug_ct; i ++) {
        TGXP_DestroyPlugin(&(pss->plugins[i]));
    }
    if (pss->plugins != NULL) {
        free(pss->plugins);
    }
}


void TGXP_InitPluginSubsystem() {
    TGXP_CreateDirectory("plugins");
}

/**
 * All plugins are stored in their own directories
 * and must contain a 'plugin.lua' file, which returns
 * a table with the following attributes: cmd, author, version, script
 * @param pid
 */
void TGXP_LoadLuaPlugin(char *pid) {

}