include "constants/vram.asm"
include "constants/wram.asm"

P1_ARROWS EQU P1F_5 ; Arrow keys
P1_BUTTON EQU P1F_4 ; A/B/Start/Select 

; Gameplay modes
G_EDITOR  EQU $02
G_TITLE   EQU $04

; Key equates
K_A       EQU %00000001
K_B       EQU %00000010
K_SELECT  EQU %00000100
K_START   EQU %00001000
K_RIGHT   EQU %00010000
K_LEFT    EQU %00100000
K_UP      EQU %01000000
K_DOWN    EQU %10000000

; High RAM variables
hKeys     EQU $8B
hVBlankState EQU $91 ; 1 = busy
