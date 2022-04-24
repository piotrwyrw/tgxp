/**
 * Interface to the TXFP Graphics File Format
 */

#ifndef TGXP_TGXPF_H
#define TGXP_TGXPF_H

#include <stdio.h>

#define PIXEL_COMPONENTS(gfpx) \
        (gfpx.r), (gfpx.g), (gfpx.b)

typedef struct {
    unsigned char r, g, b;
} TGXP_GraphicsPixel;

TGXP_GraphicsPixel TGXP_CreateGraphicsPixel(unsigned char, unsigned char, unsigned char);

TGXP_GraphicsPixel *
TGXP_CreateSingleColorGraphicsPixelArray(unsigned, unsigned, unsigned char, unsigned char, unsigned char);

void TGXP_WriteGraphicsPixel(FILE *, TGXP_GraphicsPixel);

typedef struct {
    unsigned w, h;
    TGXP_GraphicsPixel *d;
} TGXP_GraphicsFile;

TGXP_GraphicsFile TGXP_CreateGraphicsFile(unsigned, unsigned, TGXP_GraphicsPixel *);

TGXP_GraphicsFile TGXP_CreateDummyGraphicsFile();

void TGXP_InitializeDummyGraphicsFile(TGXP_GraphicsFile *, unsigned, unsigned, TGXP_GraphicsPixel);

void TGXP_DestroyGraphicsFile(TGXP_GraphicsFile *);

void TGXP_WriteGraphicsFile(FILE *, TGXP_GraphicsFile *);

int TGXP_SetPixel(unsigned, unsigned, unsigned char, unsigned char, unsigned char, TGXP_GraphicsFile *);

unsigned char TGXP_ClampRGB(unsigned);

#endif