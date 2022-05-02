#include "dms.h"
#include "../msg.h"

#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>

TGXP_DynamicModule TGXP_CreateDynamicModule(char *name, char *so) {
    TGXP_DynamicModule dmod;
    dmod.name = malloc(strlen(name) + 1);
    strcpy(dmod.name, name);
    dmod.handle = dlopen(so, RTLD_NOW);
    dmod.enable = 1;
    if (!dmod.handle) {
        TGXP_FEEDBACK("Error: %s: %s\n", "Could not open shared object", dlerror());
        dmod.enable = 0;
    }
    dmod.cwd = malloc(101);
    return dmod;
}

void TGXP_DestroyDynamicModule(TGXP_DynamicModule *dm) {
    free(dm->name);
    if (!dm->handle) return;
    dlclose(dm->handle);
    free(dm->cwd);
}

int TGXP_CallDynamicModuleEntryPoint(TGXP_ModuleManager *mm, TGXP_DynamicModule *dm) {
    if (dm->handle == NULL || dm->name == NULL) {
        return 0;
    }
    char *(*entry)() = dlsym(dm->handle, TGXP_DMS_ENTRY);
    if (entry == NULL) {
        TGXP_FEEDBACK(TGXP_DMS_ERROR_ENTRY, TGXP_DMS_ENTRY, dm->name);
        return 0;
    }
    char *cwd = (*entry)();
    if (!cwd) {
        TGXP_FEEDBACK(TGXP_DMS_ENTRY_FAIL, dm->name);
        return 0;
    }
    TGXP_DynamicModule *cmod = TGXP_GetModuleByCommandWord(mm, cwd);
    if (cmod) {
        TGXP_FEEDBACK(TGXP_DMS_ENTRY_CONFLICT, cwd, dm->name, cmod->name);
        return 0;
    }
    strcpy(dm->cwd, cwd);
    TGXP_FEEDBACK(TGXP_DMS_ENTRY_OK, dm->name, cwd);
    return 1;
}

TGXP_ModuleManager TGXP_CreateModuleManager(unsigned xlen) {
    TGXP_ModuleManager mm;
    mm.dm = malloc(sizeof(TGXP_ModuleManager) * xlen);
    mm.len = 0;
    mm.xlen = xlen;
    return mm;
}

void TGXP_DestroyModuleManager(TGXP_ModuleManager *mm) {
    for (unsigned i = 0; i < mm->len; i++) {
        TGXP_DestroyDynamicModule(&(mm->dm[i]));
    }
    free(mm->dm);
}

int TGXP_RegisterModule(TGXP_ModuleManager *mm, TGXP_DynamicModule *dm) {
    if (mm->len + 1 >= mm->xlen) {
        return 0;
    }
    mm->dm[mm->len].name = malloc(strlen(dm->name) + 1);
    strcpy(mm->dm[mm->len].name, dm->name);
    mm->dm[mm->len].handle = dm->handle;
    mm->dm[mm->len].enable = dm->enable;
    mm->dm[mm->len].cwd = malloc(strlen(dm->cwd) + 1);
    strcpy(mm->dm[mm->len].cwd, dm->cwd);
    mm->len ++;
    return 1;
}

TGXP_DynamicModule *TGXP_GetModuleByName(TGXP_ModuleManager *mm, char *name) {
    for (unsigned i  = 0; i < mm->len; i ++) {
        if (!strcmp(mm->dm[i].name, name)) {
            return &(mm->dm[i]);
        }
    }
    return NULL;
}

TGXP_DynamicModule *TGXP_GetModuleByCommandWord(TGXP_ModuleManager *mm, char *cwd) {
    for (unsigned i  = 0; i < mm->len; i ++) {
        if (!strcmp(mm->dm[i].cwd, cwd)) {
            return &(mm->dm[i]);
        }
    }
    return NULL;
}


int TGXP_EnableModule(TGXP_ModuleManager *mm, char *name) {
    TGXP_DynamicModule *dmod = TGXP_GetModuleByName(mm, name);
    if (!dmod) {
        return 0;
    }
    dmod->enable = 0;
    return 1;
}

int TGXP_DisableModule(TGXP_ModuleManager *mm, char *name) {
    TGXP_DynamicModule *dmod = TGXP_GetModuleByName(mm, name);
    if (!dmod) {
        return 0;
    }
    dmod->enable = 1;
    return 1;
}

void TGXP_CallAllEntries(TGXP_ModuleManager *mm) {
    for (unsigned i = 0; i < mm->len; i ++) {
        if (mm->dm[i].handle == NULL) {
            continue;
        }
        TGXP_CallDynamicModuleEntryPoint(mm, &(mm->dm[i]));
    }
}