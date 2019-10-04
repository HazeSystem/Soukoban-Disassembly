; Interrupts setup
section "RST 0x0000", rom0 [$0000]
    jp   TableJump

; Debug Mode (see debug.asm)
; Uncomment to enable
;section "Enable debug tools", rom0 [$0003]
;    db   01

section "Interrupt VBlank", rom0 [$0040]
    jp   InterruptVBlank

section "Interrupt LCD Stat", rom0 [$0048]
    reti

section "Interrupt Timer", rom0 [$0050]
    jp	 InterruptTimer

section "Interrupt Serial", rom0 [$0058]
    reti

section "Interrupt Joypad", rom0 [$0060]
    reti

section "Entry", rom0 [$100]
	; This is the entry point to the program.
	nop
	jp Start

section "Header", rom0 [$104]
	; The header is created by rgbfix.
	; The space here is allocated as a placeholder.
	ds $150 - $104