#ifndef TGXP_DMS_H
#define TGXP_DMS_H

#define TGXP_DMS_ENTRY "DMS_Entry"
#define TGXP_DMS_CALL "DMS_Call"

typedef struct {
    char *name;
    char *cwd;
    void *handle;
    int enable;
} TGXP_DynamicModule;

typedef struct {
    TGXP_DynamicModule *dm;
    unsigned len;
    unsigned xlen;
} TGXP_ModuleManager;

TGXP_DynamicModule TGXP_CreateDynamicModule(char *, char *);
void TGXP_DestroyDynamicModule(TGXP_DynamicModule *);

int TGXP_CallDynamicModuleEntryPoint(TGXP_ModuleManager *, TGXP_DynamicModule *);

TGXP_ModuleManager TGXP_CreateModuleManager(unsigned);
void TGXP_DestroyModuleManager(TGXP_ModuleManager *);
int TGXP_RegisterModule(TGXP_ModuleManager *, TGXP_DynamicModule *);
TGXP_DynamicModule *TGXP_GetModuleByName(TGXP_ModuleManager *, char *);
TGXP_DynamicModule *TGXP_GetModuleByCommandWord(TGXP_ModuleManager *, char *);
int TGXP_EnableModule(TGXP_ModuleManager *, char *);
int TGXP_DisableModule(TGXP_ModuleManager *, char *);
void TGXP_CallAllEntries(TGXP_ModuleManager *);

#endif