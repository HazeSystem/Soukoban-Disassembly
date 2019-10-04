; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

; Definitions
INCLUDE "code/hardware.inc"
INCLUDE "constants/constants.asm"

; ROM header
INCLUDE "code/header.asm"

; Sources
section "Main", rom0[$0150]
INCLUDE "code/bank0.asm"

section "bank1",romx[$4000],bank[$01]
INCLUDE "code/bank1.asm"