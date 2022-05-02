
# Terminal Graphics Processor
A minimalistic CLI tool for creating and manipulating graphics.

# File Structure

## src
The full TGXP source code.

### src &rarr; tgxpf
A frontend to the PPM file format, which is the main, and the only format
TGXP supports (for now, that is.)

### src &rarr; cmd
All CLI built-in commands are implemented in this directory.

### src &rarr; dms
Dynamic module / plugin support.

### src &rarr; plugins
Temporary plugin development testing folder

### src &rarr; dev
Useful includes for plugin development.
