# Terminal Graphics Processor
A minimalistic CLI tool for creating and manipulating graphics.

# File Structure

## src
Contains the full C source code.

## src &rarr; tgxpf
A frontend to the PPM file format, which is the main, and the only format
TGXP supports (for now, that is.)

## src &rarr; cmd
All CLI commands are implemented in this directory.

## src &rarr; plug
Code for interfacing with LUA plugins.
This feature is still under heavy development.

## plugins
This directory will be used to store user made extensions to the TGXP
in the future. For now, it is used for development purposes.
