; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

; Definitions
include "code/hardware.inc"
include "constants/constants.asm"

; ROM header
include "code/header.asm"

; Sources
section "Main", rom0[$0150]
include "code/bank0.asm"

section "bank1-a",romx[$4000],bank[$01]
incbin "data/bank1-a.bin"

section "bank1-b",romx[$7745],bank[$01]
incbin "data/bank1-b.bin"

; Images
section "Tileset",romx[$61b5],bank[$01]
Tileset::
incbin "gfx/tileset.2bpp"

