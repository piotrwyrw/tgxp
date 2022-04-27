#include "tgxpf.h"

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

TGXP_GraphicsPixel TGXP_CreateGraphicsPixel(unsigned char r, unsigned char g, unsigned char b) {
    TGXP_GraphicsPixel px;
    px.r = r;
    px.g = g;
    px.b = b;
    return px;
}

TGXP_GraphicsPixel *
TGXP_CreateSingleColorGraphicsPixelArray(unsigned w, unsigned h, unsigned char r,unsigned  char g, unsigned char b) {
    TGXP_GraphicsPixel *arr = malloc(sizeof(TGXP_GraphicsPixel) * w * h);
    for (unsigned i = 0; i < w * h; i++) {
        arr[i].r = r;
        arr[i].g = g;
        arr[i].b = b;
    }
    return arr;
}

void TGXP_WriteGraphicsPixel(FILE *f, TGXP_GraphicsPixel px) {
    char buff[100];

    // Red component
    sprintf(buff, "%d", px.r);
    fwrite(buff, strlen(buff), 1, f);

    fwrite(" ", 1, 1, f);

    // Green component
    sprintf(buff, "%d", px.g);
    fwrite(buff, strlen(buff), 1, f);

    fwrite(" ", 1, 1, f);

    // Blue component
    sprintf(buff, "%d", px.b);
    fwrite(buff, strlen(buff), 1, f);

    // EOL
    fwrite("\n", 1, 1, f);
}

TGXP_GraphicsFile TGXP_CreateGraphicsFile(unsigned w, unsigned h, TGXP_GraphicsPixel *d) {
    TGXP_GraphicsFile tgxpf;
    tgxpf.w = w;
    tgxpf.h = h;
    tgxpf.d = malloc(sizeof(TGXP_GraphicsPixel) * (w * h));
    for (unsigned i = 0; i < w * h; i++) {
        tgxpf.d[i].r = d[i].r;
        tgxpf.d[i].g = d[i].g;
        tgxpf.d[i].b = d[i].b;
    }
    return tgxpf;
}

TGXP_GraphicsFile TGXP_CreateDummyGraphicsFile() {
    TGXP_GraphicsFile tgxpf;
    tgxpf.w = 0;
    tgxpf.h = 0;
    tgxpf.d = NULL;
    return tgxpf;
}

void TGXP_InitializeDummyGraphicsFile(TGXP_GraphicsFile *g, unsigned w, unsigned h, TGXP_GraphicsPixel p) {
    g->w = w;
    g->h = h;
    g->d = TGXP_CreateSingleColorGraphicsPixelArray(w, h, p.r, p.g, p.b);
}

void TGXP_DestroyGraphicsFile(TGXP_GraphicsFile *f) {
    if (f->d == NULL) return;
    free(f->d);     // Destroy the array
}

void TGXP_WriteGraphicsFile(FILE *f, TGXP_GraphicsFile *gf) {
    // Write magic number
    fwrite("P3\n", 3, 1, f);

    // Write image dimensions; First the width.
    char buff[100];
    sprintf(buff, "%d", gf->w);
    fwrite(buff, strlen(buff), 1, f);

    // Then the height after a whitespace character
    fwrite(" ", 1, 1, f);
    sprintf(buff, "%d", gf->h);
    fwrite(buff, strlen(buff), 1, f);

    // Finish with an EOL
    fwrite("\n", 1, 1, f);

    // Max color (255)
    fwrite("255\n", 4, 1, f);

    for (unsigned x = 0; x < gf->w; x++) {
        for (unsigned y = 0; y < gf->h; y++) {
            TGXP_WriteGraphicsPixel(f, gf->d[y * gf->w + x]);
        }
    }
}

int TGXP_SetPixel(unsigned x, unsigned y, unsigned char r, unsigned char g, unsigned char b, TGXP_GraphicsFile *gf) {
    if (x > gf->w || x < 0 || y > gf->h || y < 0) {
        return 0;
    }
    unsigned i = y * gf->w + x;
    gf->d[i].r = r;
    gf->d[i].g = g;
    gf->d[i].b = b;
    return 1;
}

unsigned char TGXP_ClampRGB(unsigned v) {
    return (v > 255) ? (unsigned char) 255 : (unsigned char) v;
}