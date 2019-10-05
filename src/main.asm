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

section "bank0-data",rom0[$2dc3]
include "data/bank0-data.asm"

section "bank1-a",romx[$4000],bank[$01]
include "data/bank1-a.asm"
Tileset::
incbin "gfx/tileset.2bpp"
include "data/bank1-b.asm"

