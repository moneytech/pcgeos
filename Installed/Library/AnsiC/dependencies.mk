SCANF.obj \
SCANF.eobj: GEOS.H OBJECT.H GEODE.H LMEM.H FILE.H SYSTEM.H MATH.H \
                ANSI/STRING.H ANSI/STDIO.H
STDIO.obj \
STDIO.eobj: GEOS.H OBJECT.H GEODE.H LMEM.H GRAPHICS.H FONTID.H FONT.H \
                COLOR.H SYSTEM.H ANSI/STRING.H ANSI/STDIO.H
STRING.obj \
STRING.eobj: GEOS.H OBJECT.H GEODE.H LMEM.H ANSI/STRING.H GEOMISC.H \
                LOCALIZE.H ANSI/CTYPE.H TIMEDATE.H FILE.H SLLANG.H
ANSIC.obj \
ANSIC.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF
BCC_RTL.obj \
BCC_RTL.eobj: 
MALLOC_ASM.obj \
MALLOC_ASM.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF
MEMORY_ASM.obj \
MEMORY_ASM.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF \
                PRODUCT.DEF
STDIO_ASM.obj \
STDIO_ASM.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF
STDLIB_ASM.obj \
STDLIB_ASM.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF
STRING_ASM.obj \
STRING_ASM.eobj: ANSICGEODE.DEF GEOS.DEF FILE.DEF HEAP.DEF EC.DEF LMEM.DEF \
                LIBRARY.DEF GEODE.DEF RESOURCE.DEF CHUNKARR.DEF \
                LOCALIZE.DEF SLLANG.DEF ANSIC.DEF ANSICERRORS.DEF

ANSICEC.geo ANSIC.geo : GEOS.LDF MATH.LDF 