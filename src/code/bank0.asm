; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

Start::
	ld a, G_TITLE                                 ; Start off at title screen
	ld [wGameplayType], a                         ; 
	ld a, $06                                     ; $0155: $3e $06
	ld [wGameplaySubtype], a                      ; $0157: $ea $f0 $c2
	ld hl, $411a                                  ; $015a: $21 $1a $41
	ld de, wC398                                  ; $015d: $11 $98 $c3
	ld bc, $0007                                  ; $0160: $01 $07 $00
	call CopyData                                 ; $0163: $cd $5b $21
	call Call_000_217c                            ; $0166: $cd $7c $21
	ld a, TACF_16KHZ                              ; Set timer to 16khz
	ldh [rTAC], a                                 ; 
	ld a, TACF_START + TACF_16KHZ                 ; Start timer
	ldh [rTAC], a                                 ; 
	ld a, $02                                     ; $0171: $3e $02
	ld [wC385], a                                 ; $0173: $ea $85 $c3
	xor a                                         ; $0176: $af
	ld [wC2EE], a                                 ; $0177: $ea $ee $c2
	ld [wC2EF], a                                 ; $017a: $ea $ef $c2
	ld a, $10                                     ; $017d: $3e $10
	ld [wC2D7], a                                 ; $017f: $ea $d7 $c2
	ld [wC2D9], a                                 ; $0182: $ea $d9 $c2
	call Call_000_0c04                            ; $0185: $cd $04 $0c
	call Call_000_1793                            ; $0188: $cd $93 $17
	ld b, $03                                     ; $018b: $06 $03
	ld hl, wC38C                                  ; $018d: $21 $8c $c3
.loop::                                               ; Load $00, $9B 3 times at $C38C
	xor a                                         ; $0190: $af
	ld [hl+], a                                   ; $0191: $22
	ld a, $9b                                     ; $0192: $3e $9b
	ld [hl+], a                                   ; $0194: $22
	dec b                                         ; $0195: $05
	 jr nz, .loop                                 ; $0196: $20 $f8

Jump_000_0198::
	call Call_000_0c0d                            ; $0198: $cd $0d $0c
	ld a, IEF_TIMER                               ; 
	ldh [rIE], a                                  ; Enable timer interrupts
	xor a                                         ; 
	ld [wTimerSeconds], a                         ; Clear out game's timer
	call LCDOff                                   ; $01a3: $cd $2c $21
	ld sp, $fffe                                  ; $01a6: $31 $fe $ff	
	call WriteDMACodeToHRAM                            ; $01a9: $cd $b5 $20
	
	ld hl, Tileset                                ; $01ac: $21 $b5 $61
	ld de, vTiles0                                ; $01af: $11 $b0 $87
	ld bc, $0dd0                                  ; $01b2: $01 $d0 $0d	
	call CopyData                                 ; $01b5: $cd $5b $21
	
	ld hl, Tileset+$5d0                           ; $01b8: $21 $85 $67
	ld de, vTiles2                                ; $01bb: $11 $00 $90
	ld bc, $06d0                                  ; $01be: $01 $d0 $06	
	call CopyData                                 ; $01c1: $cd $5b $21
	
	ld hl, Tileset+$8d0                           ; Alphabet
	ld de, vTiles1                                ; 
	ld bc, $0140                                  ; $01ca: $01 $40 $01	
	call CopyData                                 ; $01cd: $cd $5b $21
	
	ld a, [wGameplayType]                         ; $01d0: $fa $ec $c2
	cp $04                                        ; $01d3: $fe $04
	 jr nz, jr_000_01e3                           ; $01d5: $20 $0c

	ld hl, $6d55                                  ; $01d7: $21 $55 $6d
	ld de, $8800                                  ; Second Tile Pattern Table in VRAM ($8800 - $97FF)
	ld bc, $0530                                  ; $01dd: $01 $30 $05
	call CopyData                                 ; $01e0: $cd $5b $21

jr_000_01e3::
	call Call_000_2c8a                            ; $01e3: $cd $8a $2c
	call ClearBGMap                            ; $01e6: $cd $4c $21
	ld b, $a0                                     ; $01e9: $06 $a0
	ld a, $00                                     ; $01eb: $3e $00
	ld hl, WORK_RAM                                  ; $01ed: $21 $00 $c0

.clearRAMLoop::
	ld [hl+], a                                   ; $01f0: $22
	dec b                                         ; $01f1: $05
	 jr nz, .clearRAMLoop                         ; $01f2: $20 $fc

	; load palettes
	ld a, $e4                                     ; $01f4: $3e $e4
	ldh [rBGP], a                                 ; $01f6: $e0 $47
	ldh [rOBP0], a                                ; $01f8: $e0 $48
	ldh [rOBP1], a                                ; $01fa: $e0 $49
	call DrawTitleScreen                                  ; $01fc: $cd $91 $13
	call Call_000_12db                            ; $01ff: $cd $db $12
	call Call_000_0b33                            ; $0202: $cd $33 $0b
	call Call_000_0384                            ; $0205: $cd $84 $03
	call Call_000_2c35                            ; $0208: $cd $35 $2c
	call Call_000_2cbd                            ; $020b: $cd $bd $2c
	call Jump_000_0ab1                            ; $020e: $cd $b1 $0a
	call Call_000_1f34                            ; $0211: $cd $34 $1f
	call Call_000_1b56                            ; $0214: $cd $56 $1b
	ld a, $c3                                     ; $0217: $3e $c3
	ldh [rLCDC], a                                ; $0219: $e0 $40
	ld a, $05                                     ; $021b: $3e $05
	ldh [rIE], a                                  ; $021d: $e0 $ff
	ldh [$93], a                                  ; $021f: $e0 $93
	ei                                            ; $0221: $fb

GameLoop::
	ld a, [wFrameCounter]                                 ; A counter
	inc a                                         ; $0225: $3c
	ld [wFrameCounter], a                                 ; $0226: $ea $a4 $c0
	call Call_000_2691                            ; $0229: $cd $91 $26
	xor a                                         ; $022c: $af
	ldh [hKeys], a                                  ; $022d: $e0 $8b
	call ReadJoypad                            ; $022f: $cd $84 $20
	ld a, [wGameplayType]                         ; $0232: $fa $ec $c2
	and $f0                                       ; $0235: $e6 $f0
	 jr nz, jr_000_0288                           ; $0237: $20 $4f

	ld a, [wGameplayType]                         ; $0239: $fa $ec $c2
	cp $01                                        ; 1 = Sample gameplay
	 jr z, SampleGameplay                         ; Runs a little animation showing a sample of the game playing
	cp G_EDITOR                                   ; 2 = Map editor
	 jr z, Editor                                 ; 
	cp $03                                        ; 3 = 
	 jr z, jr_000_028d                            ; 
	cp $04                                        ; 4 = Title screen
	 jr z, TitleScreen                            ; Shows the title screen
	cp $05                                        ; 5 = 
	 jr z, jr_000_0292                            ; 
	cp $06                                        ; 6 = 
	 jr z, jr_000_029e                            ; 

	cp $08                                        ; $0254: $fe $08
	jr z, jr_000_02a3                             ; $0256: $28 $4b

	call Jump_000_0340                            ; $0258: $cd $40 $03
	ld a, [wKeyState]                                 ; $025b: $fa $fd $c0
	and $09                                       ; $025e: $e6 $09
	jr nz, Jump_000_0277                          ; $0260: $20 $15

	ldh a, [hKeys]                                  ; $0262: $f0 $8b
	and $08                                       ; $0264: $e6 $08
	jp z, Jump_000_0277                           ; $0266: $ca $77 $02

	ld a, $30                                     ; $0269: $3e $30
	ld [wGameplayType], a                         ; $026b: $ea $ec $c2
	xor a                                         ; $026e: $af
	ld [wC385], a                                 ; $026f: $ea $85 $c3
	ld a, $07                                     ; $0272: $3e $07
	ld [wC384], a                                 ; $0274: $ea $84 $c3

Jump_000_0277::
	ldh a, [hKeys]                                  ; $0277: $f0 $8b
	ld [wKeyState], a                                 ; $0279: $ea $fd $c0
	jr AwaitVBlank                                ; $027c: $18 $76

SampleGameplay::
	call Call_000_1616                            ; $027e: $cd $16 $16
	jr AwaitVBlank                                ; $0281: $18 $71

Editor::
	call RunEditor                            ; $0283: $cd $10 $10
	jr AwaitVBlank                                ; $0286: $18 $6c

jr_000_0288::
	call Call_000_1bfe                            ; $0288: $cd $fe $1b
	jr jr_000_0295                                ; $028b: $18 $08

jr_000_028d::
	call Call_000_16af                            ; $028d: $cd $af $16
	jr AwaitVBlank                                ; $0290: $18 $62

jr_000_0292::
	call Call_000_17bf                            ; $0292: $cd $bf $17

jr_000_0295::
	ld a, [wC0FE]                                 ; $0295: $fa $fe $c0
	and a                                         ; $0298: $a7
	 jp nz, Jump_000_0198                         ; $0299: $c2 $98 $01

	jr AwaitVBlank                                ; $029c: $18 $56

jr_000_029e::
	call Call_000_2828                            ; $029e: $cd $28 $28
	jr AwaitVBlank                                ; $02a1: $18 $51

jr_000_02a3::
	call Call_000_2d1c                            ; $02a3: $cd $1c $2d
	jr AwaitVBlank                                ; $02a6: $18 $4c

TitleScreen::
	call Call_000_13de                            ; $02a8: $cd $de $13
	ld a, [wHasWon]                                 ; $02ab: $fa $a3 $c0
	and a                                         ; $02ae: $a7
	 jr nz, AwaitVBlank                           ; $02af: $20 $43

	ldh a, [hKeys]                                ; Check if start was pressed
	cp K_START                                    ; 
	 jr nz, .checkCreditKeys                      ; 
	    ld a, $10                                 ; $02b7: $3e $10
	    ld [wGameplayType], a                     ; $02b9: $ea $ec $c2
	    ld a, $08                                 ; $02bc: $3e $08
	    ld [wC384], a                             ; $02be: $ea $84 $c3
	    jp Jump_000_0198                          ; $02c1: $c3 $98 $01
.checkCreditKeys::
	ldh a, [hKeys]                                ; Check for "secret" keypress
	cp K_A + K_B + K_SELECT + K_UP                ; A + B + Select + Up
	 jr nz, jr_000_02d8                           ; $02c8: $20 $0e
	ld [wHasWon], a                                 ; $02ca: $ea $a3 $c0
Jump_000_02cd::
	ld a, $04                                     ; $02cd: $3e $04
	ld [wGameplayType], a                         ; $02cf: $ea $ec $c2
	ld [wC0D7], a                                 ; $02d2: $ea $d7 $c0
	jp Jump_000_0198                              ; $02d5: $c3 $98 $01


jr_000_02d8::
	ld a, [wTimerSeconds]                                 ; $02d8: $fa $f2 $c0
	cp $05                                        ; $02db: $fe $05
	jr c, AwaitVBlank                             ; $02dd: $38 $15

	xor a                                         ; $02df: $af
	ld [wC100], a                                 ; $02e0: $ea $00 $c1
	ldh [rSCY], a                                 ; $02e3: $e0 $42
	inc a                                         ; $02e5: $3c
	ld [wC2ED], a                                 ; $02e6: $ea $ed $c2
	ld [wGameplayType], a                         ; $02e9: $ea $ec $c2
	ld a, $18                                     ; $02ec: $3e $18
	ld [wC2D9], a                                 ; $02ee: $ea $d9 $c2
	jp Jump_000_0198                              ; $02f1: $c3 $98 $01


AwaitVBlank::
	db $76                                        ; $02f4: halt
	ldh a, [hVBlankState]                         ; Wait for VBlank (will be set to $01 when VBlank interrupt/OAM DMA have finished)
	and a                                         ; $02f7: $a7
	 jr z, AwaitVBlank                            ; $02f8: $28 $fa

	xor a                                         ; Reset VBlank flag
	ldh [hVBlankState], a                         ; $02fb: $e0 $91
	jp GameLoop                                   ; $02fd: $c3 $22 $02


InterruptVBlank::
	push af                                       ; $0300: $f5
	push bc                                       ; $0301: $c5
	push de                                       ; $0302: $d5
	push hl                                       ; $0303: $e5
	ld a, [wGameplayType]                         ; $0304: $fa $ec $c2
	and $f0                                       ; $0307: $e6 $f0
	 jr nz, .skipDMA                               ; $0309: $20 $12

; DMA routine
	call $ff80                                    ; $030b: Run DMA routine, stored in high RAM
	xor a                                         ; $030e: $af
	ld [wC0F5], a                                 ; $030f: $ea $f5 $c0

.waitVBlankLoop::
	ldh a, [rSTAT]                                ; $0312: $f0 $41
	and $03                                       ; Strip out everything but bits 0/1 (Mode Flag)
	cp $01                                        ; $01 = In V-Blank
	 jr nz, .waitVBlankLoop                       ; Repeat until VBlank is complete
	call Call_000_053d                            ; $031a: $cd $3d $05
.skipDMA::
	xor a                                         ; $031d: $af
	ld [wC0AB], a                                 ; $031e: $ea $ab $c0
	call Call_000_1bdb                            ; $0321: $cd $db $1b
	ld a, $01                                     ; $0324: $3e $01
	ldh [hVBlankState], a                                  ; $0326: $e0 $91
	pop hl                                        ; $0328: $e1
	pop de                                        ; $0329: $d1
	pop bc                                        ; $032a: $c1
	pop af                                        ; $032b: $f1
	reti                                          ; $032c: $d9


InterruptTimer::
	push af                                       ; $032d: $f5
	push bc                                       ; $032e: $c5
	push de                                       ; $032f: $d5
	push hl                                       ; $0330: $e5
	call UpdateTimer                            ; $0331: $cd $7d $12
	call Call_000_218e                            ; $0334: $cd $8e $21
	ld a, $01                                     ; $0337: $3e $01
	ldh [$97], a                                  ; $0339: $e0 $97
	pop hl                                        ; $033b: $e1
	pop de                                        ; $033c: $d1
	pop bc                                        ; $033d: $c1
	pop af                                        ; $033e: $f1
	reti                                          ; $033f: $d9


Jump_000_0340::
	ldh a, [hKeys]                                  ; $0340: $f0 $8b
	and a                                         ; $0342: $a7
	jr nz, jr_000_035f                            ; $0343: $20 $1a

	ld a, [wTimerSeconds]                                 ; $0345: $fa $f2 $c0
	cp $3c                                        ; $0348: $fe $3c
	jr nz, jr_000_0363                            ; $034a: $20 $17

	ld a, [wC0F1]                                 ; $034c: $fa $f1 $c0
	and a                                         ; $034f: $a7
	jr nz, jr_000_0363                            ; $0350: $20 $11

	ld [wC0D0], a                                 ; $0352: $ea $d0 $c0
	ld a, $04                                     ; $0355: $3e $04
	ld [wC385], a                                 ; $0357: $ea $85 $c3
	ld [wC0F1], a                                 ; $035a: $ea $f1 $c0
	jr jr_000_0363                                ; $035d: $18 $04

jr_000_035f::
	xor a                                         ; $035f: $af
	ld [wTimerSeconds], a                         ; $0360: $ea $f2 $c0

jr_000_0363::
	call Call_000_06a8                            ; $0363: $cd $a8 $06
	ld a, [wC0F1]                                 ; $0366: $fa $f1 $c0
	and a                                         ; $0369: $a7
	ret z                                         ; $036a: $c8

	ld a, [wTimerSeconds]                                 ; $036b: $fa $f2 $c0
	and $01                                       ; $036e: $e6 $01
	jr z, jr_000_0375                             ; $0370: $28 $03

	call jr_000_0cd6                              ; $0372: $cd $d6 $0c

jr_000_0375::
	ldh a, [hKeys]                                  ; $0375: $f0 $8b
	and $f0                                       ; $0377: $e6 $f0
	ret z                                         ; $0379: $c8

	xor a                                         ; $037a: $af
	ld [wC0F1], a                                 ; $037b: $ea $f1 $c0
	ld a, $03                                     ; $037e: $3e $03
	ld [wC385], a                                 ; $0380: $ea $85 $c3
	ret                                           ; $0383: $c9


; Draw Tilemap
Call_000_0384::
	ld a, [wGameplayType]                         ; $0384: $fa $ec $c2
	cp $04                                        ; $0387: $fe $04
	 ret nc                                       ; $0389: $d0

	call Call_000_1f7e                            ; $038a: $cd $7e $1f
	ld a, [wC0CE]                                 ; $038d: $fa $ce $c0
	ld [wC0D7], a                                 ; $0390: $ea $d7 $c0
	call Call_000_0572                            ; $0393: $cd $72 $05
	ld a, [wC0DD]                                 ; $0396: $fa $dd $c0
	ld l, a                                       ; $0399: $6f
	ld a, [wTileMap]                                 ; $039a: $fa $de $c0
	ld h, a                                       ; $039d: $67
	ld de, wC87A                                  ; $039e: $11 $7a $c8

Jump_000_03a1::
	ld a, l                                       ; $03a1: $7d
	ldh [$90], a                                  ; $03a2: $e0 $90
	ld a, h                                       ; $03a4: $7c
	ldh [$8f], a                                  ; $03a5: $e0 $8f
	xor a                                         ; $03a7: $af
	ld [wC0E3], a                                 ; $03a8: $ea $e3 $c0
	push bc                                       ; $03ab: $c5
	push de                                       ; $03ac: $d5
	push hl                                       ; $03ad: $e5
	ld a, [de]                                    ; $03ae: $1a
	and a                                         ; $03af: $a7
	ld [wC0E3], a                                 ; $03b0: $ea $e3 $c0
	jr z, jr_000_03bb                             ; $03b3: $28 $06

	call Call_000_04b0                            ; $03b5: $cd $b0 $04
	call DrawTile                            ; $03b8: $cd $4c $05

jr_000_03bb::
	call Call_000_04f3                            ; $03bb: $cd $f3 $04
	and a                                         ; $03be: $a7
	ld c, a                                       ; $03bf: $4f
	jr z, jr_000_03d3                             ; $03c0: $28 $11

	ld a, [wC0E3]                                 ; $03c2: $fa $e3 $c0
	sla a                                         ; $03c5: $cb $27
	ld b, a                                       ; $03c7: $47
	ld a, $02                                     ; $03c8: $3e $02
	add b                                         ; $03ca: $80
	push bc                                       ; $03cb: $c5
	call Call_000_04b0                            ; $03cc: $cd $b0 $04
	call DrawTile                            ; $03cf: $cd $4c $05
	pop bc                                        ; $03d2: $c1

jr_000_03d3::
	ld a, [wC0E3]                                 ; $03d3: $fa $e3 $c0
	and c                                         ; $03d6: $a1
	ld [wC0E3], a                                 ; $03d7: $ea $e3 $c0
	call Call_000_04f3                            ; $03da: $cd $f3 $04
	and a                                         ; $03dd: $a7
	jr z, jr_000_0416                             ; $03de: $28 $36

	ld a, [wC0E3]                                 ; $03e0: $fa $e3 $c0
	and a                                         ; $03e3: $a7
	jr z, jr_000_040e                             ; $03e4: $28 $28

	ld a, [wC0E6]                                 ; $03e6: $fa $e6 $c0
	and a                                         ; $03e9: $a7
	jr z, jr_000_040e                             ; $03ea: $28 $22

	call Call_000_20fa                            ; $03ec: $cd $fa $20
	ldh a, [$8d]                                  ; $03ef: $f0 $8d
	and $f8                                       ; $03f1: $e6 $f8
	ld [wC0A9], a                                 ; $03f3: $ea $a9 $c0
	ldh a, [$8e]                                  ; $03f6: $f0 $8e
	and $f8                                       ; $03f8: $e6 $f8
	ld [wC0AA], a                                 ; $03fa: $ea $aa $c0
	call Call_000_0b2a                            ; $03fd: $cd $2a $0b
	xor a                                         ; $0400: $af
	ld [wC0E6], a                                 ; $0401: $ea $e6 $c0
	ld a, $d4                                     ; $0404: $3e $d4
	ld [wC0AC], a                                 ; $0406: $ea $ac $c0
	call DrawTile                            ; $0409: $cd $4c $05
	jr jr_000_0416                                ; $040c: $18 $08

jr_000_040e::
	ld a, $03                                     ; $040e: $3e $03
	call Call_000_04b0                            ; $0410: $cd $b0 $04
	call DrawTile                            ; $0413: Draw Tile

jr_000_0416::
	xor a                                         ; $0416: $af
	ld [wC0E3], a                                 ; $0417: $ea $e3 $c0
	pop hl                                        ; $041a: $e1
	call Call_000_0500                            ; $041b: $cd $00 $05
	pop de                                        ; $041e: $d1
	ld a, [wC0D7]                                 ; $041f: $fa $d7 $c0
	and a                                         ; $0422: $a7
	jr z, jr_000_0428                             ; $0423: $28 $03

	inc de                                        ; $0425: $13
	jr jr_000_0439                                ; $0426: $18 $11

jr_000_0428::
	or a                                          ; $0428: $b7
	ld a, [wC0CE]                                 ; $0429: $fa $ce $c0
	ld b, a                                       ; $042c: $47
	ld a, $14                                     ; $042d: $3e $14
	sub b                                         ; $042f: $90
	add e                                         ; $0430: $83
	ld e, a                                       ; $0431: $5f
	ld a, d                                       ; $0432: $7a
	adc $00                                       ; $0433: $ce $00
	ld d, a                                       ; $0435: $57
	pop bc                                        ; $0436: $c1
	jr jr_000_043b                                ; $0437: $18 $02

jr_000_0439::
	pop bc                                        ; $0439: $c1
	dec bc                                        ; $043a: $0b

jr_000_043b::
	ld a, c                                       ; $043b: $79
	or b                                          ; $043c: $b0
	jp nz, Jump_000_03a1                          ; $043d: $c2 $a1 $03

	call Call_000_1fb9                            ; $0440: $cd $b9 $1f
	ld a, $01                                     ; $0443: $3e $01
	ld [wC0E7], a                                 ; $0445: $ea $e7 $c0
	ld a, [wGameplayType]                         ; $0448: $fa $ec $c2
	cp G_EDITOR                                        ; $044b: $fe $02
	ret z                                         ; $044d: $c8

	ld a, [wC2EE]                                 ; $044e: $fa $ee $c2
	and a                                         ; $0451: $a7
	jr nz, jr_000_045b                            ; $0452: $20 $07

	xor a                                         ; $0454: $af
	ld [wC0A1], a                                 ; $0455: $ea $a1 $c0
	jp Call_000_11f2                              ; $0458: $c3 $f2 $11


jr_000_045b::
	call Call_000_047a                            ; $045b: $cd $7a $04
	call Call_000_0b2a                            ; $045e: $cd $2a $0b
	xor a                                         ; $0461: $af
	ld [wC0E6], a                                 ; $0462: $ea $e6 $c0
	ld a, [wC2EF]                                 ; $0465: $fa $ef $c2
	sla a                                         ; $0468: $cb $27
	ld e, a                                       ; $046a: $5f
	ld d, $00                                     ; $046b: $16 $00
	ld hl, wC392                                  ; $046d: $21 $92 $c3
	add hl, de                                    ; $0470: $19
	ld a, [hl+]                                   ; $0471: $2a
	ld [wC0C2], a                                 ; $0472: $ea $c2 $c0
	ld a, [hl]                                    ; $0475: $7e
	ld [wC0C3], a                                 ; $0476: $ea $c3 $c0
	ret                                           ; $0479: $c9


Call_000_047a::
	ld a, [wC2EF]                                 ; $047a: $fa $ef $c2
	sla a                                         ; $047d: $cb $27
	ld hl, wC38C                                  ; $047f: $21 $8c $c3
	ld e, a                                       ; $0482: $5f
	ld d, $00                                     ; $0483: $16 $00
	add hl, de                                    ; $0485: $19
	ld a, [hl+]                                   ; $0486: $2a
	ldh [$90], a                                  ; $0487: $e0 $90
	ld a, [hl]                                    ; $0489: $7e
	ldh [$8f], a                                  ; $048a: $e0 $8f
	call Call_000_20fa                            ; $048c: $cd $fa $20
	ldh a, [$8d]                                  ; $048f: $f0 $8d
	and $f8                                       ; $0491: $e6 $f8
	ld [wC0A9], a                                 ; $0493: $ea $a9 $c0
	ldh a, [$8e]                                  ; $0496: $f0 $8e
	and $f8                                       ; $0498: $e6 $f8
	ld [wC0AA], a                                 ; $049a: $ea $aa $c0
	ret                                           ; $049d: $c9


Call_000_049e::
	ld a, [wC0D3]                                 ; $049e: $fa $d3 $c0
	call Call_000_04b0                            ; $04a1: $cd $b0 $04

Jump_000_04a4::
	ld a, $01                                     ; $04a4: $3e $01
	ld [wC0AB], a                                 ; $04a6: $ea $ab $c0

jr_000_04a9::
	ld a, [wC0AB]                                 ; $04a9: $fa $ab $c0
	and a                                         ; $04ac: $a7
	jr nz, jr_000_04a9                            ; $04ad: $20 $fa

	ret                                           ; $04af: $c9


Call_000_04b0::
	push hl                                       ; $04b0: $e5
	push de                                       ; $04b1: $d5
	cp $02                                        ; $04b2: $fe $02
	jr nz, Jump_000_04d0                          ; $04b4: $20 $1a

	ld a, [wC0E7]                                 ; $04b6: $fa $e7 $c0
	and a                                         ; $04b9: $a7
	ld a, $02                                     ; $04ba: $3e $02
	jr z, Jump_000_04d0                           ; $04bc: $28 $12

	ld a, [wC0C6]                                 ; $04be: $fa $c6 $c0
	ld e, a                                       ; $04c1: $5f
	ld a, [wC0C7]                                 ; $04c2: $fa $c7 $c0
	ld d, a                                       ; $04c5: $57
	ld hl, wC87A                                  ; $04c6: $21 $7a $c8

Jump_000_04c9::
	call Jump_000_2164                            ; $04c9: $cd $64 $21
	sla a                                         ; $04cc: $cb $27
	add $02                                       ; $04ce: $c6 $02

Jump_000_04d0::
	ld e, a                                       ; $04d0: $5f
	ld a, [wTileSize]                             ; $04d1: $fa $d1 $c0
	cp $10                                        ; $04d4: $fe $10
	jr z, jr_000_04dd                             ; $04d6: $28 $05

	ld hl, $04ee                                  ; $04d8: $21 $ee $04
	jr jr_000_04e0                                ; $04db: $18 $03

jr_000_04dd::
	ld hl, $04e9                                  ; $04dd: $21 $e9 $04

jr_000_04e0::
	call Jump_000_216e                            ; $04e0: $cd $6e $21
	ld [wC0AC], a                                 ; $04e3: $ea $ac $c0
	pop de                                        ; $04e6: $d1
	pop hl                                        ; $04e7: $e1
	ret                                           ; $04e8: $c9


	call nc, $a4a0                                ; $04e9: $d4 $a0 $a4
	xor b                                         ; $04ec: $a8
	xor h                                         ; $04ed: $ac
	call nc, $b9b8                                ; $04ee: $d4 $b8 $b9
	cp d                                          ; $04f1: $ba
	cp e                                          ; $04f2: $bb

Call_000_04f3::
	or a                                          ; $04f3: $b7
	ld a, [wC2D0]                                 ; $04f4: $fa $d0 $c2
	add e                                         ; $04f7: $83
	ld e, a                                       ; $04f8: $5f
	ld a, [wC2D1]                                 ; $04f9: $fa $d1 $c2
	adc d                                         ; $04fc: $8a
	ld d, a                                       ; $04fd: $57
	ld a, [de]                                    ; $04fe: $1a
	ret                                           ; $04ff: $c9


Call_000_0500::
	ld a, [wC0CE]                                 ; $0500: $fa $ce $c0
	ld e, a                                       ; $0503: $5f
	ld a, [wTileSize]                             ; $0504: $fa $d1 $c0
	cp $08                                        ; $0507: $fe $08
	jr nz, jr_000_0518                            ; $0509: $20 $0d

	ld a, [wC0D7]                                 ; $050b: $fa $d7 $c0
	and a                                         ; $050e: $a7

Call_000_050f::
	jr z, jr_000_0514                             ; $050f: $28 $03

	inc hl                                        ; $0511: $23
	jr jr_000_0535                                ; $0512: $18 $21

jr_000_0514::
	ld a, $20                                     ; $0514: $3e $20
	jr jr_000_0526                                ; $0516: $18 $0e

jr_000_0518::
	ld a, [wC0D7]                                 ; $0518: $fa $d7 $c0
	and a                                         ; $051b: $a7
	jr z, jr_000_0522                             ; $051c: $28 $04

	inc hl                                        ; $051e: $23
	inc hl                                        ; $051f: $23
	jr jr_000_0535                                ; $0520: $18 $13

jr_000_0522::
	sla e                                         ; $0522: $cb $23
	ld a, $40                                     ; $0524: $3e $40

jr_000_0526::
	sub e                                         ; $0526: $93
	or a                                          ; $0527: $b7
	add l                                         ; $0528: $85
	ld l, a                                       ; $0529: $6f
	ld a, h                                       ; $052a: $7c
	adc $00                                       ; $052b: $ce $00
	ld h, a                                       ; $052d: $67
	ld a, [wC0CE]                                 ; $052e: $fa $ce $c0
	ld [wC0D7], a                                 ; $0531: $ea $d7 $c0
	ret                                           ; $0534: $c9


jr_000_0535::
	ld a, [wC0D7]                                 ; $0535: $fa $d7 $c0
	dec a                                         ; $0538: $3d
	ld [wC0D7], a                                 ; $0539: $ea $d7 $c0
	ret                                           ; $053c: $c9


Call_000_053d::
	ld a, [wGameplayType]                         ; $053d: $fa $ec $c2
	and $f0                                       ; $0540: $e6 $f0
	ret nz                                        ; $0542: $c0

	ld a, [wC0F3]                                 ; $0543: $fa $f3 $c0
	and a                                         ; $0546: $a7
	 jr z, DrawTile                               ; $0547: $28 $03
	jp RenderText                                 ; $0549: $c3 $e1 $1b


; Copy a 16x16 tile to VRAM
; Inputs:
;   $FF8F-90 = VRAM address (2 bytes) 
DrawTile::
	ldh a, [$90]                                  ; $054c: VRAM low
	ld l, a                                       ; $054e: $6f
	ldh a, [$8f]                                  ; $054f: VRAM high
	ld h, a                                       ; HL = position in VRAM to draw tile
	ld a, [wC0AC]                                 ; A = Tile to draw 
; Sprite 1
	ld [hl+], a                                   ; Copy to VRAM
	inc a                                         ; Next sprite
	push af                                       ; 
	  ld a, [wTileSize]                               ; A = tile size
	  cp $08                                      ; If tile size == 8, we only need to draw one tile
	   jr z, DrawTile.abort                       ; 
	pop af                                        ; $055f: $f1
; Sprite 2
	ld [hl], a                                    ; $0560: $77
	push af                                       ; $0561: $f5
	  ld a, $1f                                     ; $0562: $3e $1f
	  add l                                         ; $0564: $85
	  ld l, a                                       ; $0565: $6f
	  ld a, h                                       ; $0566: $7c
	  adc $00                                       ; $0567: $ce $00
	  ld h, a                                       ; $0569: $67
	pop af                                        ; $056a: $f1
	inc a                                         ; $056b: $3c
; Sprite 3
	ld [hl+], a                                   ; $056c: $22
	inc a                                         ; $056d: $3c
; Sprite 4
	ld [hl], a                                    ; $056e: $77
	ret                                           ; $056f: $c9

DrawTile.abort::
	pop af                                        ; $0570: $f1
	ret                                           ; $0571: $c9


Call_000_0572::
	ld hl, $0168                                  ; $0572: $21 $68 $01
	ld a, l                                       ; $0575: $7d
	ld [wC2D0], a                                 ; $0576: $ea $d0 $c2
	ld c, a                                       ; $0579: $4f
	ld a, h                                       ; $057a: $7c
	ld [wC2D1], a                                 ; $057b: $ea $d1 $c2
	ld b, a                                       ; $057e: $47
	push bc                                       ; $057f: $c5
	pop de                                        ; $0580: $d1
	ret                                           ; $0581: $c9


Call_000_0582::
	call Call_000_0627                            ; $0582: $cd $27 $06
	and a                                         ; $0585: $a7
	ret nz                                        ; $0586: $c0

	ld a, [wC0F4]                                 ; $0587: $fa $f4 $c0
	and a                                         ; $058a: $a7
	jr z, Jump_000_05b3                           ; $058b: $28 $26

	ld a, $05                                     ; $058d: $3e $05
	ld [wC384], a                                 ; $058f: $ea $84 $c3
	xor a                                         ; $0592: $af
	ld [wC385], a                                 ; $0593: $ea $85 $c3
	ld hl, $3e94                                  ; $0596: $21 $94 $3e
	call Call_000_2736                            ; $0599: $cd $36 $27
	call jr_000_26cc                              ; $059c: $cd $cc $26
	call Jump_000_1f4a                            ; $059f: $cd $4a $1f
	call Call_000_0650                            ; $05a2: $cd $50 $06
	call Jump_000_04a4                            ; $05a5: $cd $a4 $04
	call jr_000_26d3                              ; $05a8: $cd $d3 $26
	ld a, $06                                     ; $05ab: $3e $06
	ld [wC384], a                                 ; $05ad: $ea $84 $c3
	call jr_000_26cc                              ; $05b0: $cd $cc $26

Jump_000_05b3::
	ld a, [wTimerSeconds]                                 ; $05b3: $fa $f2 $c0
	ld b, a                                       ; $05b6: $47

jr_000_05b7::
	ld a, [wTimerSeconds]                                 ; $05b7: $fa $f2 $c0
	sub b                                         ; $05ba: $90
	cp $02                                        ; $05bb: $fe $02
	jr z, jr_000_05b7                             ; $05bd: $28 $f8

	ld a, [wC2EE]                                 ; $05bf: $fa $ee $c2
	and a                                         ; $05c2: $a7
	jr z, jr_000_05cd                             ; $05c3: $28 $08

Jump_000_05c5::
	ld a, $70                                     ; $05c5: $3e $70
	ld [wGameplayType], a                         ; $05c7: $ea $ec $c2
	jp Jump_000_0198                              ; $05ca: $c3 $98 $01


jr_000_05cd::
	call Call_000_05d8                            ; $05cd: $cd $d8 $05
	ld a, $40                                     ; $05d0: $3e $40
	ld [wGameplayType], a                         ; $05d2: $ea $ec $c2
	jp Jump_000_0198                              ; $05d5: $c3 $98 $01


Call_000_05d8::
	call Call_000_061c                            ; $05d8: $cd $1c $06
	ld hl, wC121                                  ; $05db: $21 $21 $c1
	ld a, [wC2EF]                                 ; $05de: $fa $ef $c2
	cp $05                                        ; $05e1: $fe $05
	jr nc, jr_000_05e8                            ; $05e3: $30 $03

	ld a, [hl]                                    ; $05e5: $7e
	jr jr_000_05ea                                ; $05e6: $18 $02

jr_000_05e8::
	inc hl                                        ; $05e8: $23
	ld a, [hl]                                    ; $05e9: $7e

jr_000_05ea::
	or b                                          ; $05ea: $b0
	and $1f                                       ; $05eb: $e6 $1f
	ld [hl], a                                    ; $05ed: $77
	ld a, [wC121]                                 ; $05ee: $fa $21 $c1
	cp $1f                                        ; $05f1: $fe $1f
	jr nz, jr_000_061b                            ; $05f3: $20 $26

	ld a, [wC122]                                 ; $05f5: $fa $22 $c1
	cp $1f                                        ; $05f8: $fe $1f
	jr nz, jr_000_061b                            ; $05fa: $20 $1f

	ld a, [wC120]                                 ; $05fc: $fa $20 $c1
	add $01                                       ; $05ff: $c6 $01
	ld [wC120], a                                 ; $0601: $ea $20 $c1
	xor a                                         ; $0604: $af
	ld [wC121], a                                 ; $0605: $ea $21 $c1
	ld [wC122], a                                 ; $0608: $ea $22 $c1
	ld [wC2EF], a                                 ; $060b: $ea $ef $c2
	ld a, $01                                     ; $060e: $3e $01
	ld [wC0E9], a                                 ; $0610: $ea $e9 $c0
	ld a, $06                                     ; $0613: $3e $06
	ld [wGameplayType], a                         ; $0615: $ea $ec $c2
	jp Jump_000_0198                              ; $0618: $c3 $98 $01


jr_000_061b::
	ret                                           ; $061b: $c9


Call_000_061c::
	call Call_000_0c9c                            ; $061c: $cd $9c $0c
	xor a                                         ; $061f: $af
	scf                                           ; $0620: $37

jr_000_0621::
	rla                                           ; $0621: $17
	dec b                                         ; $0622: $05
	jr nz, jr_000_0621                            ; $0623: $20 $fc

	ld b, a                                       ; $0625: $47
	ret                                           ; $0626: $c9


Call_000_0627::
	call Call_000_0572                            ; $0627: $cd $72 $05
	xor a                                         ; $062a: $af
	ld [wC0F4], a                                 ; $062b: $ea $f4 $c0
	ld hl, wC87A                                  ; $062e: $21 $7a $c8

jr_000_0631::
	ld a, [hl]                                    ; $0631: $7e
	and a                                         ; $0632: $a7
	jr z, jr_000_0646                             ; $0633: $28 $11

	push bc                                       ; $0635: $c5
	ld b, a                                       ; $0636: $47
	ld a, [wC0F4]                                 ; $0637: $fa $f4 $c0
	or b                                          ; $063a: $b0
	ld [wC0F4], a                                 ; $063b: $ea $f4 $c0
	pop bc                                        ; $063e: $c1
	push hl                                       ; $063f: $e5
	add hl, de                                    ; $0640: $19
	ld a, [hl]                                    ; $0641: $7e
	and a                                         ; $0642: $a7
	pop hl                                        ; $0643: $e1
	jr z, jr_000_064d                             ; $0644: $28 $07

jr_000_0646::
	inc hl                                        ; $0646: $23
	dec bc                                        ; $0647: $0b
	ld a, c                                       ; $0648: $79
	or b                                          ; $0649: $b0
	jr nz, jr_000_0631                            ; $064a: $20 $e5

	ret                                           ; $064c: $c9


jr_000_064d::
	ld a, $01                                     ; $064d: $3e $01
	ret                                           ; $064f: $c9


Call_000_0650::
	ld hl, wC002                                  ; $0650: $21 $02 $c0
	ld a, [wTileSize]                                 ; $0653: $fa $d1 $c0
	cp $08                                        ; $0656: $fe $08
	jr z, jr_000_065e                             ; $0658: $28 $04

	ld a, $7b                                     ; $065a: $3e $7b
	jr jr_000_0660                                ; $065c: $18 $02

jr_000_065e::
	ld a, $7f                                     ; $065e: $3e $7f

jr_000_0660::
	call SetSpriteId                            ; $0660: $cd $59 $12

Call_000_0663::
	ld hl, wC003                                  ; $0663: $21 $03 $c0
	xor a                                         ; $0666: $af
	ld b, $04                                     ; $0667: $06 $04
	call jr_000_1275                              ; $0669: $cd $75 $12
	jp Call_000_1236                              ; $066c: $c3 $36 $12


Call_000_066f::
	ld hl, WORK_RAM                                  ; $066f: $21 $00 $c0
	ld a, [wTileSize]                                 ; $0672: $fa $d1 $c0
	ld c, a                                       ; $0675: $4f
	ld a, [wC0D0]                                 ; $0676: $fa $d0 $c0
	cp $00                                        ; $0679: $fe $00
	jr z, jr_000_0690                             ; $067b: $28 $13

	cp $01                                        ; $067d: $fe $01
	jr z, jr_000_0698                             ; $067f: $28 $17

	cp $02                                        ; $0681: $fe $02
	jr z, jr_000_06a0                             ; $0683: $28 $1b

	cp $03                                        ; $0685: $fe $03
	ret nz                                        ; $0687: $c0

	ld a, [hl+]                                   ; $0688: $2a
	add c                                         ; $0689: $81
	ldh [$8d], a                                  ; $068a: $e0 $8d
	ld a, [hl]                                    ; $068c: $7e
	ldh [$8e], a                                  ; $068d: $e0 $8e
	ret                                           ; $068f: $c9


jr_000_0690::
	ld a, [hl+]                                   ; $0690: $2a
	ldh [$8d], a                                  ; $0691: $e0 $8d
	ld a, [hl]                                    ; $0693: $7e
	add c                                         ; $0694: $81
	ldh [$8e], a                                  ; $0695: $e0 $8e
	ret                                           ; $0697: $c9


jr_000_0698::
	ld a, [hl+]                                   ; $0698: $2a
	ldh [$8d], a                                  ; $0699: $e0 $8d
	ld a, [hl]                                    ; $069b: $7e
	sub c                                         ; $069c: $91
	ldh [$8e], a                                  ; $069d: $e0 $8e
	ret                                           ; $069f: $c9


jr_000_06a0::
	ld a, [hl+]                                   ; $06a0: $2a
	sub c                                         ; $06a1: $91
	ldh [$8d], a                                  ; $06a2: $e0 $8d
	ld a, [hl]                                    ; $06a4: $7e
	ldh [$8e], a                                  ; $06a5: $e0 $8e
	ret                                           ; $06a7: $c9


Call_000_06a8::
	ld a, [wTileSize]                                 ; $06a8: $fa $d1 $c0
	cp $10                                        ; $06ab: $fe $10
	jr z, jr_000_06bc                             ; $06ad: $28 $0d

	call Jump_000_04a4                            ; $06af: $cd $a4 $04
	ld a, [wFrameCounter]                                 ; $06b2: $fa $a4 $c0
	and $01                                       ; $06b5: $e6 $01
	jr nz, jr_000_06bc                            ; $06b7: $20 $03

	call Jump_000_04a4                            ; $06b9: $cd $a4 $04

jr_000_06bc::
	ld hl, WORK_RAM                                  ; $06bc: $21 $00 $c0
	ld a, [wC0CF]                                 ; $06bf: $fa $cf $c0
	and a                                         ; $06c2: $a7
	jp nz, jr_000_07f9                            ; $06c3: $c2 $f9 $07

	ld [wC0CC], a                                 ; $06c6: $ea $cc $c0
	ld a, [wTileSize]                                 ; $06c9: $fa $d1 $c0
	ld [wC0CF], a                                 ; $06cc: $ea $cf $c0
	ld a, [wGameplayType]                         ; $06cf: $fa $ec $c2
	and a                                         ; $06d2: $a7
	jr nz, jr_000_06f7                            ; $06d3: $20 $22

	ld a, [wC0E1]                                 ; $06d5: $fa $e1 $c0
	and a                                         ; $06d8: $a7
	jr z, jr_000_06f7                             ; $06d9: $28 $1c

	ld hl, wC0C2                                  ; $06db: $21 $c2 $c0
	ld de, wC0CA                                  ; $06de: $11 $ca $c0
	ld a, [hl+]                                   ; $06e1: $2a
	ld c, a                                       ; $06e2: $4f
	ld a, [de]                                    ; $06e3: $1a
	inc de                                        ; $06e4: $13
	cp c                                          ; $06e5: $b9
	jr nz, jr_000_06f0                            ; $06e6: $20 $08

	ld a, [hl]                                    ; $06e8: $7e
	ld c, a                                       ; $06e9: $4f
	ld a, [de]                                    ; $06ea: $1a
	cp c                                          ; $06eb: $b9
	jr nz, jr_000_06f0                            ; $06ec: $20 $02

	jr jr_000_06f7                                ; $06ee: $18 $07

jr_000_06f0::
	ldh a, [hKeys]                                  ; $06f0: $f0 $8b
	cp $01                                        ; $06f2: $fe $01
	jp z, Jump_000_0884                           ; $06f4: $ca $84 $08

jr_000_06f7::
	call Call_000_0582                            ; $06f7: $cd $82 $05
	call Call_000_093e                            ; $06fa: $cd $3e $09
	cp $ff                                        ; $06fd: $fe $ff
	jp z, Jump_000_085b                           ; $06ff: $ca $5b $08

	call Call_000_10c8                            ; $0702: $cd $c8 $10
	and a                                         ; $0705: $a7
	jp nz, Jump_000_085b                          ; $0706: $c2 $5b $08

	xor a                                         ; $0709: $af
	ld [wC0D5], a                                 ; $070a: $ea $d5 $c0
	ld a, $02                                     ; $070d: $3e $02
	ld [wC0D2], a                                 ; $070f: $ea $d2 $c0
	call Call_000_0973                            ; $0712: $cd $73 $09
	cp $01                                        ; $0715: $fe $01
	ld [wC0E2], a                                 ; $0717: $ea $e2 $c0
	jp z, Jump_000_085b                           ; $071a: $ca $5b $08

	ld a, $01                                     ; $071d: $3e $01
	ld [wC0D2], a                                 ; $071f: $ea $d2 $c0
	call Call_000_0973                            ; $0722: $cd $73 $09
	ld hl, wC0D4                                  ; $0725: $21 $d4 $c0
	ld a, [hl+]                                   ; $0728: $2a
	and [hl]                                      ; $0729: $a6
	jp nz, Jump_000_085b                          ; $072a: $c2 $5b $08

	ld a, [wC0D4]                                 ; $072d: $fa $d4 $c0

Jump_000_0730::
	ld [wC0E2], a                                 ; $0730: $ea $e2 $c0
	ld [wC0E1], a                                 ; $0733: $ea $e1 $c0
	call Call_000_0a68                            ; $0736: $cd $68 $0a
	ld a, [wC0CC]                                 ; $0739: $fa $cc $c0
	and a                                         ; $073c: $a7
	jr nz, jr_000_077c                            ; $073d: $20 $3d

	call Call_000_0a19                            ; $073f: $cd $19 $0a
	ld a, [wC0C2]                                 ; $0742: $fa $c2 $c0
	ld [wC0CA], a                                 ; $0745: $ea $ca $c0
	ld a, [wC0C3]                                 ; $0748: $fa $c3 $c0
	ld [wC0CB], a                                 ; $074b: $ea $cb $c0
	ld a, [wC0C4]                                 ; $074e: $fa $c4 $c0
	ld [wC0C2], a                                 ; $0751: $ea $c2 $c0
	ld e, a                                       ; $0754: $5f
	ld a, [wC0C5]                                 ; $0755: $fa $c5 $c0
	ld [wC0C3], a                                 ; $0758: $ea $c3 $c0
	ld d, a                                       ; $075b: $57
	xor a                                         ; $075c: $af
	call Jump_000_2169                            ; $075d: $cd $69 $21
	ld a, [wC0D4]                                 ; $0760: $fa $d4 $c0
	and a                                         ; $0763: $a7
	jr z, jr_000_078d                             ; $0764: $28 $27

	ld a, [wC0C8]                                 ; $0766: $fa $c8 $c0
	ld [wC0C6], a                                 ; $0769: $ea $c6 $c0
	ld e, a                                       ; $076c: $5f
	ld a, [wC0C9]                                 ; $076d: $fa $c9 $c0
	ld [wC0C7], a                                 ; $0770: $ea $c7 $c0
	ld d, a                                       ; $0773: $57
	ld a, $01                                     ; $0774: $3e $01
	call Jump_000_2169                            ; $0776: $cd $69 $21
	call Call_000_08f4                            ; $0779: $cd $f4 $08

jr_000_077c::
	ld hl, wC87A                                  ; $077c: $21 $7a $c8
	ld a, [wC0C6]                                 ; $077f: $fa $c6 $c0
	ld e, a                                       ; $0782: $5f
	ld a, [wC0C7]                                 ; $0783: $fa $c7 $c0
	ld d, a                                       ; $0786: $57
	call Jump_000_2164                            ; $0787: $cd $64 $21
	call Call_000_0912                            ; $078a: $cd $12 $09

jr_000_078d::
	ld a, [wGameplayType]                         ; $078d: $fa $ec $c2
	cp $01                                        ; $0790: $fe $01
	jr z, jr_000_07f9                             ; $0792: $28 $65

	ld a, [wC0CC]                                 ; $0794: $fa $cc $c0
	and a                                         ; $0797: $a7
	jr nz, jr_000_07b8                            ; $0798: $20 $1e

	call Call_000_0867                            ; $079a: $cd $67 $08
	call Call_000_0eea                            ; $079d: $cd $ea $0e
	ld a, [wC2D7]                                 ; $07a0: $fa $d7 $c2
	add $01                                       ; $07a3: $c6 $01
	ld [wC2D7], a                                 ; $07a5: $ea $d7 $c2
	ld [wC2D9], a                                 ; $07a8: $ea $d9 $c2
	ld a, [wC2D8]                                 ; $07ab: $fa $d8 $c2
	adc $00                                       ; $07ae: $ce $00
	ld [wC2D8], a                                 ; $07b0: $ea $d8 $c2
	ld [wC2DA], a                                 ; $07b3: $ea $da $c2
	jr jr_000_07f6                                ; $07b6: $18 $3e

jr_000_07b8::
	ld a, [wC101]                                 ; $07b8: $fa $01 $c1
	and a                                         ; $07bb: $a7
	jr z, jr_000_07c4                             ; $07bc: $28 $06

	dec a                                         ; $07be: $3d
	ld [wC101], a                                 ; $07bf: $ea $01 $c1
	jr jr_000_07da                                ; $07c2: $18 $16

jr_000_07c4::
	ld a, [wC102]                                 ; $07c4: $fa $02 $c1
	ld h, a                                       ; $07c7: $67
	ld a, [wC103]                                 ; $07c8: $fa $03 $c1
	ld l, a                                       ; $07cb: $6f
	dec hl                                        ; $07cc: $2b
	ld a, h                                       ; $07cd: $7c
	ld [wC102], a                                 ; $07ce: $ea $02 $c1
	ld a, l                                       ; $07d1: $7d
	ld [wC103], a                                 ; $07d2: $ea $03 $c1
	ld a, $03                                     ; $07d5: $3e $03
	ld [wC101], a                                 ; $07d7: $ea $01 $c1

jr_000_07da::
	ld a, [wC0A5]                                 ; $07da: $fa $a5 $c0
	ld [wC107], a                                 ; $07dd: $ea $07 $c1
	ld a, [wC2D7]                                 ; $07e0: $fa $d7 $c2
	sub $01                                       ; $07e3: $d6 $01
	ld [wC2D7], a                                 ; $07e5: $ea $d7 $c2
	ld [wC2D9], a                                 ; $07e8: $ea $d9 $c2
	ld a, [wC2D8]                                 ; $07eb: $fa $d8 $c2
	sbc $00                                       ; $07ee: $de $00
	ld [wC2D8], a                                 ; $07f0: $ea $d8 $c2
	ld [wC2DA], a                                 ; $07f3: $ea $da $c2

jr_000_07f6::
	call Call_000_1f7e                            ; $07f6: $cd $7e $1f

jr_000_07f9::
	xor a                                         ; $07f9: $af
	ld [wC0D5], a                                 ; $07fa: $ea $d5 $c0
	ld hl, WORK_RAM                                  ; $07fd: $21 $00 $c0

Call_000_0800::
	ld a, [wC0D0]                                 ; $0800: $fa $d0 $c0
	cp $00                                        ; $0803: $fe $00
	jr z, jr_000_0818                             ; $0805: $28 $11

	cp $01                                        ; $0807: $fe $01
	jr z, jr_000_081d                             ; $0809: $28 $12

	cp $02                                        ; $080b: $fe $02
	jr z, jr_000_0822                             ; $080d: $28 $13

	cp $03                                        ; $080f: $fe $03
	jp nz, Jump_000_0cc5                          ; $0811: $c2 $c5 $0c

	ld c, $01                                     ; $0814: $0e $01
	jr jr_000_0824                                ; $0816: $18 $0c

jr_000_0818::
	inc hl                                        ; $0818: $23
	ld c, $01                                     ; $0819: $0e $01
	jr jr_000_0824                                ; $081b: $18 $07

jr_000_081d::
	inc hl                                        ; $081d: $23
	ld c, $ff                                     ; $081e: $0e $ff
	jr jr_000_0824                                ; $0820: $18 $02

jr_000_0822::
	ld c, $ff                                     ; $0822: $0e $ff

jr_000_0824::
	push hl                                       ; $0824: $e5
	pop de                                        ; $0825: $d1
	ld a, [wC0CC]                                 ; $0826: $fa $cc $c0
	and a                                         ; $0829: $a7
	jr z, jr_000_0832                             ; $082a: $28 $06

	ld a, c                                       ; $082c: $79
	xor $ff                                       ; $082d: $ee $ff
	or $01                                        ; $082f: $f6 $01
	ld c, a                                       ; $0831: $4f

jr_000_0832::
	ld b, $04                                     ; $0832: $06 $04

jr_000_0834::
	ld a, [hl]                                    ; $0834: $7e
	add c                                         ; $0835: $81
	ld [hl+], a                                   ; $0836: $22
	ld a, [wTileSize]                                 ; $0837: $fa $d1 $c0
	cp $08                                        ; $083a: $fe $08
	jr z, jr_000_0851                             ; $083c: $28 $13

	inc hl                                        ; $083e: $23
	inc hl                                        ; $083f: $23
	inc hl                                        ; $0840: $23
	dec b                                         ; $0841: $05
	jr nz, jr_000_0834                            ; $0842: $20 $f0

jr_000_0844::
	call Call_000_0a32                            ; $0844: $cd $32 $0a
	ld a, [wC0CF]                                 ; $0847: $fa $cf $c0
	dec a                                         ; $084a: $3d
	ld [wC0CF], a                                 ; $084b: $ea $cf $c0
	jp Jump_000_0cc5                              ; $084e: $c3 $c5 $0c


jr_000_0851::
	ld a, $0f                                     ; $0851: $3e $0f
	add l                                         ; $0853: $85
	ld l, a                                       ; $0854: $6f
	ld a, h                                       ; $0855: $7c
	adc $00                                       ; $0856: $ce $00
	ld h, a                                       ; $0858: $67
	jr jr_000_0844                                ; $0859: $18 $e9

Jump_000_085b::
	ld a, $01                                     ; $085b: $3e $01
	ld [wC0E2], a                                 ; $085d: $ea $e2 $c0
	xor a                                         ; $0860: $af
	ld [wC0CF], a                                 ; $0861: $ea $cf $c0
	jp Jump_000_0cc5                              ; $0864: $c3 $c5 $0c


Call_000_0867::
	ld a, [wC2D8]                                 ; $0867: $fa $d8 $c2
	cp $13                                        ; $086a: $fe $13
	ret c                                         ; $086c: $d8

	ld a, [wC2D7]                                 ; $086d: $fa $d7 $c2
	cp $88                                        ; $0870: $fe $88
	ret c                                         ; $0872: $d8

	xor a                                         ; $0873: $af
	ld [wC2D7], a                                 ; $0874: $ea $d7 $c2
	ld [wC2D8], a                                 ; $0877: $ea $d8 $c2
	ld [wC2D9], a                                 ; $087a: $ea $d9 $c2
	ld [wC2DA], a                                 ; $087d: $ea $da $c2
	ld [wC0FF], a                                 ; $0880: $ea $ff $c0
	ret                                           ; $0883: $c9


Jump_000_0884::
	ld [wC0CC], a                                 ; $0884: $ea $cc $c0
	call Call_000_08da                            ; $0887: $cd $da $08
	ld hl, wC9E2                                  ; $088a: $21 $e2 $c9
	ld a, [wC0C6]                                 ; $088d: $fa $c6 $c0
	ld e, a                                       ; $0890: $5f
	ld a, [wC0C7]                                 ; $0891: $fa $c7 $c0
	ld d, a                                       ; $0894: $57
	call Jump_000_2164                            ; $0895: $cd $64 $21
	ld c, a                                       ; $0898: $4f
	xor a                                         ; $0899: $af
	call Jump_000_2169                            ; $089a: $cd $69 $21
	ld a, c                                       ; $089d: $79
	and a                                         ; $089e: $a7
	jr z, jr_000_08ae                             ; $089f: $28 $0d

	ld a, [wC0C2]                                 ; $08a1: $fa $c2 $c0
	ld e, a                                       ; $08a4: $5f
	ld a, [wC0C3]                                 ; $08a5: $fa $c3 $c0
	ld d, a                                       ; $08a8: $57
	ld a, $01                                     ; $08a9: $3e $01
	call Jump_000_2169                            ; $08ab: $cd $69 $21

jr_000_08ae::
	ld a, [wC0CA]                                 ; $08ae: $fa $ca $c0
	ld [wC0C2], a                                 ; $08b1: $ea $c2 $c0
	ld a, [wC0CB]                                 ; $08b4: $fa $cb $c0
	ld [wC0C3], a                                 ; $08b7: $ea $c3 $c0
	ld a, $01                                     ; $08ba: $3e $01
	ld [wC0D2], a                                 ; $08bc: $ea $d2 $c0
	call Call_000_0973                            ; $08bf: $cd $73 $09
	ld a, [wC0C4]                                 ; $08c2: $fa $c4 $c0
	ld [wC0C6], a                                 ; $08c5: $ea $c6 $c0
	ld [wC0C8], a                                 ; $08c8: $ea $c8 $c0
	ld a, [wC0C5]                                 ; $08cb: $fa $c5 $c0
	ld [wC0C7], a                                 ; $08ce: $ea $c7 $c0
	ld [wC0C9], a                                 ; $08d1: $ea $c9 $c0
	ld a, [wC0D4]                                 ; $08d4: $fa $d4 $c0
	jp Jump_000_0730                              ; $08d7: $c3 $30 $07


Call_000_08da::
	call Call_000_066f                            ; $08da: $cd $6f $06
	call CopyBGMapAddressToHRAM                            ; $08dd: $cd $cd $20
	ld hl, wC87A                                  ; $08e0: $21 $7a $c8
	ld a, [wC0C6]                                 ; $08e3: $fa $c6 $c0
	ld e, a                                       ; $08e6: $5f
	ld a, [wC0C7]                                 ; $08e7: $fa $c7 $c0
	ld d, a                                       ; $08ea: $57
	call Jump_000_2164                            ; $08eb: $cd $64 $21
	ld [wC0D3], a                                 ; $08ee: $ea $d3 $c0
	jp Call_000_049e                              ; $08f1: $c3 $9e $04


Call_000_08f4::
	call Call_000_066f                            ; $08f4: $cd $6f $06
	call CopyBGMapAddressToHRAM                            ; $08f7: $cd $cd $20
	xor a                                         ; $08fa: $af
	ld [wC0D2], a                                 ; $08fb: $ea $d2 $c0
	call Call_000_0a19                            ; $08fe: $cd $19 $0a
	ld a, [wC0C2]                                 ; $0901: $fa $c2 $c0
	ld e, a                                       ; $0904: $5f
	ld a, [wC0C3]                                 ; $0905: $fa $c3 $c0
	ld d, a                                       ; $0908: $57
	call Jump_000_2164                            ; $0909: $cd $64 $21
	ld [wC0D3], a                                 ; $090c: $ea $d3 $c0
	jp Call_000_049e                              ; $090f: $c3 $9e $04


Call_000_0912::
	and a                                         ; $0912: $a7
	jr z, jr_000_092b                             ; $0913: $28 $16

	push hl                                       ; $0915: $e5
	ld hl, wC012                                  ; $0916: $21 $12 $c0
	ld a, [wTileSize]                                 ; $0919: $fa $d1 $c0
	cp $08                                        ; $091c: $fe $08
	jr z, jr_000_0924                             ; $091e: $28 $04

	ld a, $ac                                     ; $0920: $3e $ac
	jr jr_000_0926                                ; $0922: $18 $02

jr_000_0924::
	ld a, $bb                                     ; $0924: $3e $bb

jr_000_0926::
	call SetSpriteId                            ; $0926: $cd $59 $12
	pop hl                                        ; $0929: $e1
	ret                                           ; $092a: $c9


jr_000_092b::
	push hl                                       ; $092b: $e5
	ld hl, wC012                                  ; $092c: $21 $12 $c0
	ld a, [wTileSize]                                 ; $092f: $fa $d1 $c0
	cp $08                                        ; $0932: $fe $08
	jr z, jr_000_093a                             ; $0934: $28 $04

	ld a, $a4                                     ; $0936: $3e $a4
	jr jr_000_0926                                ; $0938: $18 $ec

jr_000_093a::
	ld a, $b9                                     ; $093a: $3e $b9
	jr jr_000_0926                                ; $093c: $18 $e8

Call_000_093e::
	ld a, [wGameplayType]                         ; $093e: $fa $ec $c2
	and $01                                       ; $0941: $e6 $01
	ret nz                                        ; $0943: $c0

	ldh a, [hKeys]                                  ; $0944: $f0 $8b
	and $f0                                       ; $0946: $e6 $f0
	jr z, jr_000_095a                             ; $0948: $28 $10

	cp $10                                        ; $094a: $fe $10
	jr z, jr_000_0961                             ; $094c: $28 $13

	cp $20                                        ; $094e: $fe $20
	jr z, jr_000_0965                             ; $0950: $28 $13

	cp $40                                        ; $0952: $fe $40
	jr z, jr_000_0969                             ; $0954: $28 $13

	cp $80                                        ; $0956: $fe $80
	jr z, jr_000_095d                             ; $0958: $28 $03

jr_000_095a::
	ld a, $ff                                     ; $095a: $3e $ff
	ret                                           ; $095c: $c9


jr_000_095d::
	ld a, $03                                     ; $095d: $3e $03
	jr jr_000_096b                                ; $095f: $18 $0a

jr_000_0961::
	ld a, $00                                     ; $0961: $3e $00
	jr jr_000_096b                                ; $0963: $18 $06

jr_000_0965::
	ld a, $01                                     ; $0965: $3e $01
	jr jr_000_096b                                ; $0967: $18 $02

jr_000_0969::
	ld a, $02                                     ; $0969: $3e $02

jr_000_096b::
	ld [wC0D0], a                                 ; $096b: $ea $d0 $c0
	xor a                                         ; $096e: $af
	ld [wC0E1], a                                 ; $096f: $ea $e1 $c0
	ret                                           ; $0972: $c9


Call_000_0973::
	ld a, [wC0D0]                                 ; $0973: $fa $d0 $c0
	and $02                                       ; $0976: $e6 $02
	jr z, jr_000_097f                             ; $0978: $28 $05

	ld a, $14                                     ; $097a: $3e $14
	ld c, a                                       ; $097c: $4f
	jr jr_000_0981                                ; $097d: $18 $02

jr_000_097f::
	ld c, $01                                     ; $097f: $0e $01

jr_000_0981::
	ld b, $00                                     ; $0981: $06 $00
	push bc                                       ; $0983: $c5
	ld a, c                                       ; $0984: $79
	call Call_000_0a19                            ; $0985: $cd $19 $0a
	ld a, [wC0D0]                                 ; $0988: $fa $d0 $c0
	cp $01                                        ; $098b: $fe $01
	jr z, jr_000_09a8                             ; $098d: $28 $19

	cp $02                                        ; $098f: $fe $02
	jr z, jr_000_09a8                             ; $0991: $28 $15

	or a                                          ; $0993: $b7
	ld a, [wC0C2]                                 ; $0994: $fa $c2 $c0
	add c                                         ; $0997: $81
	ld c, a                                       ; $0998: $4f
	ld a, [wC0C3]                                 ; $0999: $fa $c3 $c0
	adc $00                                       ; $099c: $ce $00
	ld b, a                                       ; $099e: $47
	add hl, bc                                    ; $099f: $09
	ld a, [hl]                                    ; $09a0: $7e
	ld [wC0D4], a                                 ; $09a1: $ea $d4 $c0
	pop bc                                        ; $09a4: $c1
	add hl, bc                                    ; $09a5: $09
	jr jr_000_09c1                                ; $09a6: $18 $19

jr_000_09a8::
	or a                                          ; $09a8: $b7
	ld a, [wC0C2]                                 ; $09a9: $fa $c2 $c0
	sub c                                         ; $09ac: $91
	ld c, a                                       ; $09ad: $4f
	ld a, [wC0C3]                                 ; $09ae: $fa $c3 $c0
	sbc $00                                       ; $09b1: $de $00
	ld b, a                                       ; $09b3: $47
	add hl, bc                                    ; $09b4: $09
	ld a, [hl]                                    ; $09b5: $7e
	ld [wC0D4], a                                 ; $09b6: $ea $d4 $c0
	pop bc                                        ; $09b9: $c1
	ld a, l                                       ; $09ba: $7d
	sub c                                         ; $09bb: $91
	ld l, a                                       ; $09bc: $6f
	ld a, h                                       ; $09bd: $7c
	sbc $00                                       ; $09be: $de $00
	ld h, a                                       ; $09c0: $67

jr_000_09c1::
	ld a, [wC0D0]                                 ; $09c1: $fa $d0 $c0
	cp $01                                        ; $09c4: $fe $01
	jr z, jr_000_09ee                             ; $09c6: $28 $26

	cp $02                                        ; $09c8: $fe $02
	jr z, jr_000_09ee                             ; $09ca: $28 $22

	or a                                          ; $09cc: $b7
	ld a, [wC0C2]                                 ; $09cd: $fa $c2 $c0
	add c                                         ; $09d0: $81
	ld [wC0C4], a                                 ; $09d1: $ea $c4 $c0
	ld a, [wC0C3]                                 ; $09d4: $fa $c3 $c0
	adc $00                                       ; $09d7: $ce $00
	ld [wC0C5], a                                 ; $09d9: $ea $c5 $c0
	or a                                          ; $09dc: $b7
	ld a, [wC0C4]                                 ; $09dd: $fa $c4 $c0
	add c                                         ; $09e0: $81
	ld [wC0C8], a                                 ; $09e1: $ea $c8 $c0
	ld a, [wC0C5]                                 ; $09e4: $fa $c5 $c0
	adc $00                                       ; $09e7: $ce $00
	ld [wC0C9], a                                 ; $09e9: $ea $c9 $c0
	jr jr_000_0a0e                                ; $09ec: $18 $20

jr_000_09ee::
	or a                                          ; $09ee: $b7
	ld a, [wC0C2]                                 ; $09ef: $fa $c2 $c0
	sub c                                         ; $09f2: $91
	ld [wC0C4], a                                 ; $09f3: $ea $c4 $c0
	ld a, [wC0C3]                                 ; $09f6: $fa $c3 $c0
	sbc $00                                       ; $09f9: $de $00
	ld [wC0C5], a                                 ; $09fb: $ea $c5 $c0
	or a                                          ; $09fe: $b7
	ld a, [wC0C4]                                 ; $09ff: $fa $c4 $c0
	sub c                                         ; $0a02: $91
	ld [wC0C8], a                                 ; $0a03: $ea $c8 $c0
	ld a, [wC0C5]                                 ; $0a06: $fa $c5 $c0
	sbc $00                                       ; $0a09: $de $00
	ld [wC0C9], a                                 ; $0a0b: $ea $c9 $c0

jr_000_0a0e::
	ld a, [wC0D5]                                 ; $0a0e: $fa $d5 $c0
	or [hl]                                       ; $0a11: $b6
	ld [wC0D5], a                                 ; $0a12: $ea $d5 $c0
	ld a, [wC0D4]                                 ; $0a15: $fa $d4 $c0
	ret                                           ; $0a18: $c9


Call_000_0a19::
	ld hl, wC87A                                  ; $0a19: $21 $7a $c8
	ld a, [wC0D2]                                 ; $0a1c: $fa $d2 $c0
	and a                                         ; $0a1f: $a7
	ret z                                         ; $0a20: $c8

	ld a, [wC2D0]                                 ; $0a21: $fa $d0 $c2
	ld e, a                                       ; $0a24: $5f
	ld a, [wC2D1]                                 ; $0a25: $fa $d1 $c2
	ld d, a                                       ; $0a28: $57
	add hl, de                                    ; $0a29: $19
	ld a, [wC0D2]                                 ; $0a2a: $fa $d2 $c0
	cp $01                                        ; $0a2d: $fe $01
	ret z                                         ; $0a2f: $c8

	add hl, de                                    ; $0a30: $19
	ret                                           ; $0a31: $c9


Call_000_0a32::
	ld a, [wC0E1]                                 ; $0a32: $fa $e1 $c0
	and a                                         ; $0a35: $a7
	jr z, jr_000_0a67                             ; $0a36: $28 $2f

	ld b, $04                                     ; $0a38: $06 $04
	ld a, [wTileSize]                                 ; $0a3a: $fa $d1 $c0
	ld c, a                                       ; $0a3d: $4f
	cp $08                                        ; $0a3e: $fe $08
	jr nz, jr_000_0a44                            ; $0a40: $20 $02

	ld b, $01                                     ; $0a42: $06 $01

jr_000_0a44::
	ld a, [wC0D0]                                 ; $0a44: $fa $d0 $c0
	cp $00                                        ; $0a47: $fe $00
	jr z, jr_000_0a56                             ; $0a49: $28 $0b

	cp $01                                        ; $0a4b: $fe $01
	jr z, jr_000_0a5a                             ; $0a4d: $28 $0b

	cp $02                                        ; $0a4f: $fe $02
	jr z, jr_000_0a5a                             ; $0a51: $28 $07

	cp $03                                        ; $0a53: $fe $03
	ret nz                                        ; $0a55: $c0

jr_000_0a56::
	ld a, [de]                                    ; $0a56: $1a
	add c                                         ; $0a57: $81
	jr jr_000_0a5c                                ; $0a58: $18 $02

jr_000_0a5a::
	ld a, [de]                                    ; $0a5a: $1a
	sub c                                         ; $0a5b: $91

jr_000_0a5c::
	ld [hl+], a                                   ; $0a5c: $22
	inc hl                                        ; $0a5d: $23
	inc hl                                        ; $0a5e: $23
	inc hl                                        ; $0a5f: $23
	inc de                                        ; $0a60: $13
	inc de                                        ; $0a61: $13
	inc de                                        ; $0a62: $13
	inc de                                        ; $0a63: $13
	dec b                                         ; $0a64: $05
	jr nz, jr_000_0a44                            ; $0a65: $20 $dd

jr_000_0a67::
	ret                                           ; $0a67: $c9


Call_000_0a68::
	ld a, [wC0CC]                                 ; $0a68: $fa $cc $c0
	and a                                         ; $0a6b: $a7
	jr nz, jr_000_0a86                            ; $0a6c: $20 $18

	ld de, wC010                                  ; $0a6e: $11 $10 $c0
	ld a, [de]                                    ; $0a71: $1a
	ldh [$8d], a                                  ; $0a72: $e0 $8d
	and a                                         ; $0a74: $a7
	jr z, jr_000_0a86                             ; $0a75: $28 $0f

	inc de                                        ; $0a77: $13
	ld a, [de]                                    ; $0a78: $1a
	ldh [$8e], a                                  ; $0a79: $e0 $8e
	call CopyBGMapAddressToHRAM                            ; $0a7b: $cd $cd $20
	ld a, $02                                     ; $0a7e: $3e $02
	ld [wC0D3], a                                 ; $0a80: $ea $d3 $c0
	call Call_000_049e                            ; $0a83: $cd $9e $04

jr_000_0a86::
	ld a, [wC0E1]                                 ; $0a86: $fa $e1 $c0
	and a                                         ; $0a89: $a7
	jr z, jr_000_0aa2                             ; $0a8a: $28 $16

	ld hl, WORK_RAM                                  ; $0a8c: $21 $00 $c0
	ld de, wC010                                  ; $0a8f: $11 $10 $c0
	ld b, $04                                     ; $0a92: $06 $04

jr_000_0a94::
	ld a, [hl+]                                   ; $0a94: $2a
	ld [de], a                                    ; $0a95: $12
	inc de                                        ; $0a96: $13
	ld a, [hl+]                                   ; $0a97: $2a
	ld [de], a                                    ; $0a98: $12
	inc hl                                        ; $0a99: $23
	inc hl                                        ; $0a9a: $23
	inc de                                        ; $0a9b: $13
	inc de                                        ; $0a9c: $13
	inc de                                        ; $0a9d: $13
	dec b                                         ; $0a9e: $05
	jr nz, jr_000_0a94                            ; $0a9f: $20 $f3

	ret                                           ; $0aa1: $c9


jr_000_0aa2::
	ld de, wC010                                  ; $0aa2: $11 $10 $c0
	ld b, $04                                     ; $0aa5: $06 $04
	xor a                                         ; $0aa7: $af

jr_000_0aa8::
	ld [de], a                                    ; $0aa8: $12
	inc de                                        ; $0aa9: $13
	inc de                                        ; $0aaa: $13
	inc de                                        ; $0aab: $13
	inc de                                        ; $0aac: $13
	dec b                                         ; $0aad: $05
	jr nz, jr_000_0aa8                            ; $0aae: $20 $f8

	ret                                           ; $0ab0: $c9


Jump_000_0ab1::
	ld hl, wC002                                  ; $0ab1: $21 $02 $c0
	ld a, [wTileSize]                                 ; $0ab4: $fa $d1 $c0
	cp $10                                        ; $0ab7: $fe $10
	jr z, jr_000_0ac6                             ; $0ab9: $28 $0b

	ld a, $b0                                     ; $0abb: $3e $b0
	ld [hl], a                                    ; $0abd: $77
	ld hl, wC012                                  ; $0abe: $21 $12 $c0
	ld a, $b9                                     ; $0ac1: $3e $b9
	ld [hl], a                                    ; $0ac3: $77
	jr jr_000_0ad3                                ; $0ac4: $18 $0d

jr_000_0ac6::
	ld a, $80                                     ; $0ac6: $3e $80
	call SetSpriteId                            ; $0ac8: $cd $59 $12
	ld hl, wC012                                  ; $0acb: $21 $12 $c0
	ld a, $a4                                     ; $0ace: $3e $a4
	call SetSpriteId                            ; $0ad0: $cd $59 $12

jr_000_0ad3::
	ld hl, wC020                                  ; $0ad3: $21 $20 $c0
	ld a, [wGameplayType]                         ; $0ad6: $fa $ec $c2
	cp G_EDITOR                                   ; $0ad9: $fe $02
	jr z, jr_000_0ae9                             ; $0adb: $28 $0c

	xor a                                         ; $0add: $af
	ld b, $04                                     ; $0ade: $06 $04

jr_000_0ae0::
	ld [hl+], a                                   ; $0ae0: $22
	inc hl                                        ; $0ae1: $23
	inc hl                                        ; $0ae2: $23
	inc hl                                        ; $0ae3: $23
	dec b                                         ; $0ae4: $05
	jr nz, jr_000_0ae0                            ; $0ae5: $20 $f9

	jr jr_000_0b29                                ; $0ae7: $18 $40

jr_000_0ae9::
	call Call_000_047a                            ; $0ae9: $cd $7a $04
	call Call_000_0b2a                            ; $0aec: $cd $2a $0b
	ld a, $40                                     ; $0aef: $3e $40
	ld [wC0A9], a                                 ; $0af1: $ea $a9 $c0
	ld a, $48                                     ; $0af4: $3e $48
	ld [wC0AA], a                                 ; $0af6: $ea $aa $c0
	ld hl, wC020                                  ; $0af9: $21 $20 $c0

jr_000_0afc::
	ld b, $00                                     ; $0afc: $06 $00

jr_000_0afe::
	ld a, [wC0A9]                                 ; $0afe: $fa $a9 $c0
	ld [hl], a                                    ; $0b01: $77
	ld a, b                                       ; $0b02: $78
	and $02                                       ; $0b03: $e6 $02
	jr z, jr_000_0b0b                             ; $0b05: $28 $04

	ld a, [hl]                                    ; $0b07: $7e
	add $08                                       ; $0b08: $c6 $08
	ld [hl], a                                    ; $0b0a: $77

jr_000_0b0b::
	inc hl                                        ; $0b0b: $23
	ld a, [wC0AA]                                 ; $0b0c: $fa $aa $c0
	ld [hl], a                                    ; $0b0f: $77
	ld a, b                                       ; $0b10: $78
	and $01                                       ; $0b11: $e6 $01

Call_000_0b13::
	jr z, jr_000_0b19                             ; $0b13: $28 $04

	ld a, [hl]                                    ; $0b15: $7e
	add $08                                       ; $0b16: $c6 $08
	ld [hl], a                                    ; $0b18: $77

jr_000_0b19::
	ld a, [wTileSize]                                 ; $0b19: $fa $d1 $c0
	cp $08                                        ; $0b1c: $fe $08
	jr z, jr_000_0b29                             ; $0b1e: $28 $09

	inc hl                                        ; $0b20: $23
	inc hl                                        ; $0b21: $23
	inc hl                                        ; $0b22: $23
	inc b                                         ; $0b23: $04
	ld a, b                                       ; $0b24: $78
	cp $04                                        ; $0b25: $fe $04
	jr nz, jr_000_0afe                            ; $0b27: $20 $d5

jr_000_0b29::
	ret                                           ; $0b29: $c9


Call_000_0b2a::
	ld hl, WORK_RAM                                  ; $0b2a: $21 $00 $c0
	ld a, [wTileSize]                                 ; $0b2d: $fa $d1 $c0
	ld c, a                                       ; $0b30: $4f
	jr jr_000_0afc                                ; $0b31: $18 $c9

Call_000_0b33::
	ld a, [wGameplayType]                         ; $0b33: $fa $ec $c2
	cp $04                                        ; $0b36: $fe $04
	ret nc                                        ; $0b38: $d0

	ld a, [wC120]                                 ; $0b39: $fa $20 $c1
	cp $0a                                        ; $0b3c: $fe $0a
	jr nz, jr_000_0b9f                            ; $0b3e: $20 $5f

	ld a, [wC121]                                 ; $0b40: $fa $21 $c1
	cp $1f                                        ; $0b43: $fe $1f
	jr nz, jr_000_0b9f                            ; $0b45: $20 $58

	ld a, [wC122]                                 ; $0b47: $fa $22 $c1
	cp $07                                        ; $0b4a: $fe $07
	jr nz, jr_000_0b52                            ; $0b4c: $20 $04

	ld a, $01                                     ; $0b4e: $3e $01
	jr jr_000_0b58                                ; $0b50: $18 $06

jr_000_0b52::
	cp $0f                                        ; $0b52: $fe $0f
	jr nz, jr_000_0b9f                            ; $0b54: $20 $49

	ld a, $02                                     ; $0b56: $3e $02

jr_000_0b58::
	ld [wC0D9], a                                 ; $0b58: $ea $d9 $c0
	ld [wC2EE], a                                 ; $0b5b: $ea $ee $c2
	cp $01                                        ; $0b5e: $fe $01
	jr z, jr_000_0b66                             ; $0b60: $28 $04

	ld a, $08                                     ; $0b62: $3e $08
	jr jr_000_0b68                                ; $0b64: $18 $02

jr_000_0b66::
	ld a, $10                                     ; $0b66: $3e $10

jr_000_0b68::
	ld [wTileSize], a                                 ; $0b68: $ea $d1 $c0
	xor a                                         ; $0b6b: $af
	ld [wC2EF], a                                 ; $0b6c: $ea $ef $c2
	call jr_000_12fa                              ; $0b6f: $cd $fa $12
	ld hl, $0bf4                                  ; $0b72: $21 $f4 $0b
	ld a, [wC0D9]                                 ; $0b75: $fa $d9 $c0
	dec a                                         ; $0b78: $3d
	call Call_000_0e7c                            ; $0b79: $cd $7c $0e
	ld de, wC13B                                  ; $0b7c: $11 $3b $c1
	ld bc, $0087                                  ; $0b7f: $01 $87 $00
	call CopyData                              ; $0b82: $cd $5b $21
	ld hl, $0bf8                                  ; $0b85: $21 $f8 $0b
	ld a, [wC0D9]                                 ; $0b88: $fa $d9 $c0
	dec a                                         ; $0b8b: $3d
	call Call_000_0e7c                            ; $0b8c: $cd $7c $0e
	ld a, [hl+]                                   ; $0b8f: $2a
	ld [wC38C], a                                 ; $0b90: $ea $8c $c3
	ld a, [hl+]                                   ; $0b93: $2a
	ld [wC38D], a                                 ; $0b94: $ea $8d $c3
	ld a, [hl+]                                   ; $0b97: $2a
	ld [wC392], a                                 ; $0b98: $ea $92 $c3
	ld a, [hl]                                    ; $0b9b: $7e
	ld [wC393], a                                 ; $0b9c: $ea $93 $c3

jr_000_0b9f::
	xor a                                         ; $0b9f: $af
	ld [wC0CF], a                                 ; $0ba0: $ea $cf $c0
	ld [wC0D5], a                                 ; $0ba3: $ea $d5 $c0
	ld [wC0D7], a                                 ; $0ba6: $ea $d7 $c0
	ld [wC0AC], a                                 ; $0ba9: $ea $ac $c0
	ld [wC0E7], a                                 ; $0bac: $ea $e7 $c0
	ld [wC0F3], a                                 ; $0baf: $ea $f3 $c0
	ld [wC0F4], a                                 ; $0bb2: $ea $f4 $c0
	ld [wKeyState], a                                 ; $0bb5: $ea $fd $c0
	ldh [rSCY], a                                 ; $0bb8: $e0 $42
	ld a, $01                                     ; $0bba: $3e $01
	ld [wC0E6], a                                 ; $0bbc: $ea $e6 $c0
	ld a, [wC120]                                 ; $0bbf: $fa $20 $c1
	cp $0a                                        ; $0bc2: $fe $0a
	jr nz, jr_000_0bce                            ; $0bc4: $20 $08

	ld a, [wC122]                                 ; $0bc6: $fa $22 $c1
	or $18                                        ; $0bc9: $f6 $18
	ld [wC122], a                                 ; $0bcb: $ea $22 $c1

jr_000_0bce::
	call Call_000_0c16                            ; $0bce: $cd $16 $0c
	xor a                                         ; $0bd1: $af
	ld [wC0EE], a                                 ; $0bd2: $ea $ee $c0
	call $0e8f                                    ; $0bd5: $cd $8f $0e
	ld a, [wGameplayType]                         ; $0bd8: $fa $ec $c2
	cp G_EDITOR                                        ; $0bdb: $fe $02
	ret z                                         ; $0bdd: $c8

	call Call_000_0dc9                            ; $0bde: $cd $c9 $0d
	ld a, [wC0D9]                                 ; $0be1: $fa $d9 $c0
	and a                                         ; $0be4: $a7
	ret z                                         ; $0be5: $c8

	xor a                                         ; $0be6: $af
	ld [wC0D9], a                                 ; $0be7: $ea $d9 $c0
	ld [wC120], a                                 ; $0bea: $ea $20 $c1
	ld [wC121], a                                 ; $0bed: $ea $21 $c1
	ld [wC122], a                                 ; $0bf0: $ea $22 $c1
	ret                                           ; $0bf3: $c9


	xor a                                         ; $0bf4: $af
	ld b, d                                       ; $0bf5: $42
	pop de                                        ; $0bf6: $d1
	ld b, d                                       ; $0bf7: $42
	db $fc                                        ; $0bf8: $fc
	dec bc                                        ; $0bf9: $0b
	nop                                           ; $0bfa: $00
	inc c                                         ; $0bfb: $0c
	add [hl]                                      ; $0bfc: $86
	sbc b                                         ; $0bfd: $98
	dec hl                                        ; $0bfe: $2b
	nop                                           ; $0bff: $00
	rrca                                          ; $0c00: $0f
	sbc c                                         ; $0c01: $99
	xor a                                         ; $0c02: $af
	nop                                           ; $0c03: $00

Call_000_0c04::
	ld bc, $024a                                  ; $0c04: $01 $4a $02
	ld hl, wC0A0                                  ; $0c07: $21 $a0 $c0
	jp Call_000_2143                              ; $0c0a: $c3 $43 $21


Call_000_0c0d::
	ld bc, $0438                                  ; $0c0d: $01 $38 $04
	ld hl, wC87A                                  ; $0c10: $21 $7a $c8
	jp Call_000_2143                              ; $0c13: $c3 $43 $21


Call_000_0c16::
	xor a                                         ; $0c16: $af
	ld [wC109], a                                 ; $0c17: $ea $09 $c1
	call Call_000_0e02                            ; $0c1a: $cd $02 $0e
	ld b, $03                                     ; $0c1d: $06 $03
	ld de, wC87A                                  ; $0c1f: $11 $7a $c8

jr_000_0c22::
	push bc                                       ; $0c22: $c5
	push de                                       ; $0c23: $d5
	ld a, [wC0CD]                                 ; $0c24: $fa $cd $c0
	ld [wC0D7], a                                 ; $0c27: $ea $d7 $c0

jr_000_0c2a::
	call Call_000_0fb3                            ; $0c2a: $cd $b3 $0f
	push hl                                       ; $0c2d: $e5
	ld hl, wC10C                                  ; $0c2e: $21 $0c $c1
	ld a, [wC0CE]                                 ; $0c31: $fa $ce $c0
	ld c, a                                       ; $0c34: $4f
	ld b, $00                                     ; $0c35: $06 $00
	push de                                       ; $0c37: $d5
	call CopyData                              ; $0c38: $cd $5b $21
	pop de                                        ; $0c3b: $d1
	pop hl                                        ; $0c3c: $e1
	ld a, $14                                     ; $0c3d: $3e $14
	add e                                         ; $0c3f: $83
	ld e, a                                       ; $0c40: $5f
	ld a, d                                       ; $0c41: $7a
	adc $00                                       ; $0c42: $ce $00
	ld d, a                                       ; $0c44: $57
	ld a, [wC0D7]                                 ; $0c45: $fa $d7 $c0
	dec a                                         ; $0c48: $3d
	ld [wC0D7], a                                 ; $0c49: $ea $d7 $c0
	and a                                         ; $0c4c: $a7
	jr nz, jr_000_0c2a                            ; $0c4d: $20 $db

	pop de                                        ; $0c4f: $d1
	ld bc, $0168                                  ; $0c50: $01 $68 $01
	ld a, c                                       ; $0c53: $79
	add e                                         ; $0c54: $83
	ld e, a                                       ; $0c55: $5f
	ld a, b                                       ; $0c56: $78
	adc d                                         ; $0c57: $8a
	ld d, a                                       ; $0c58: $57
	pop bc                                        ; $0c59: $c1
	dec b                                         ; $0c5a: $05
	jr nz, jr_000_0c22                            ; $0c5b: $20 $c5

	ld a, [wGameplayType]                         ; $0c5d: $fa $ec $c2
	cp G_EDITOR                                        ; $0c60: $fe $02
	jr z, jr_000_0c7e                             ; $0c62: $28 $1a

	ld a, [wC2EE]                                 ; $0c64: $fa $ee $c2
	and a                                         ; $0c67: $a7
	ret nz                                        ; $0c68: $c0

	call Call_000_0cbd                            ; $0c69: $cd $bd $0c
	ret nc                                        ; $0c6c: $d0

	ld a, [wC0EE]                                 ; $0c6d: $fa $ee $c0
	and a                                         ; $0c70: $a7
	ret nz                                        ; $0c71: $c0

	ld hl, wC87A                                  ; $0c72: $21 $7a $c8
	ld de, wC9E2                                  ; $0c75: $11 $e2 $c9
	ld bc, $0168                                  ; $0c78: $01 $68 $01
	jp CopyData                                ; $0c7b: $c3 $5b $21


jr_000_0c7e::
	call Call_000_0dc9                            ; $0c7e: $cd $c9 $0d
	ld a, [wTileSize]                                 ; $0c81: $fa $d1 $c0
	cp $08                                        ; $0c84: $fe $08
	jr z, jr_000_0c8c                             ; $0c86: $28 $04

	ld a, $40                                     ; $0c88: $3e $40
	jr jr_000_0c8e                                ; $0c8a: $18 $02

jr_000_0c8c::
	ld a, $80                                     ; $0c8c: $3e $80

jr_000_0c8e::
	ld [wC0C2], a                                 ; $0c8e: $ea $c2 $c0
	ld [wC0C4], a                                 ; $0c91: $ea $c4 $c0
	xor a                                         ; $0c94: $af
	ld [wC0C3], a                                 ; $0c95: $ea $c3 $c0
	ld [wC0C5], a                                 ; $0c98: $ea $c5 $c0
	ret                                           ; $0c9b: $c9


Call_000_0c9c::
	ld a, [wC2EF]                                 ; $0c9c: $fa $ef $c2
	cp $05                                        ; $0c9f: $fe $05
	jr c, jr_000_0cb7                             ; $0ca1: $38 $14

	sub $04                                       ; $0ca3: $d6 $04
	ld b, a                                       ; $0ca5: $47
	ld a, [wC120]                                 ; $0ca6: $fa $20 $c1
	cp $0a                                        ; $0ca9: $fe $0a
	jr nz, jr_000_0cb3                            ; $0cab: $20 $06

	ld a, [wC122]                                 ; $0cad: $fa $22 $c1
	or $18                                        ; $0cb0: $f6 $18
	ret                                           ; $0cb2: $c9


jr_000_0cb3::
	ld a, [wC122]                                 ; $0cb3: $fa $22 $c1
	ret                                           ; $0cb6: $c9


jr_000_0cb7::
	inc a                                         ; $0cb7: $3c
	ld b, a                                       ; $0cb8: $47
	ld a, [wC121]                                 ; $0cb9: $fa $21 $c1
	ret                                           ; $0cbc: $c9


Call_000_0cbd::
	call Call_000_0c9c                            ; $0cbd: $cd $9c $0c

jr_000_0cc0::
	rrca                                          ; $0cc0: $0f
	dec b                                         ; $0cc1: $05
	jr nz, jr_000_0cc0                            ; $0cc2: $20 $fc

	ret                                           ; $0cc4: $c9


Jump_000_0cc5::
	ld a, [wGameplayType]                         ; $0cc5: $fa $ec $c2
	cp G_EDITOR                                        ; $0cc8: $fe $02
	ret z                                         ; $0cca: $c8

	ld a, [wC2ED]                                 ; $0ccb: $fa $ed $c2
	and a                                         ; $0cce: $a7
	jr nz, jr_000_0cd6                            ; $0ccf: $20 $05

	ldh a, [hKeys]                                  ; $0cd1: $f0 $8b
	and $f1                                       ; $0cd3: $e6 $f1
	ret z                                         ; $0cd5: $c8

jr_000_0cd6::
	ld a, [wGameplayType]                         ; $0cd6: $fa $ec $c2
	cp $06                                        ; $0cd9: $fe $06
	jr z, jr_000_0ce0                             ; $0cdb: $28 $03

	call Call_000_0db8                            ; $0cdd: $cd $b8 $0d

jr_000_0ce0::
	ld a, [wTileSize]                                 ; $0ce0: $fa $d1 $c0
	cp $10                                        ; $0ce3: $fe $10
	jr nz, jr_000_0d1f                            ; $0ce5: $20 $38

	ld hl, $0db4                                  ; $0ce7: $21 $b4 $0d
	ld a, [wGameplayType]                         ; $0cea: $fa $ec $c2
	cp $06                                        ; $0ced: $fe $06
	jr nz, jr_000_0cfb                            ; $0cef: $20 $0a

	ld a, [wC133]                                 ; $0cf1: $fa $33 $c1
	cp $02                                        ; $0cf4: $fe $02
	jr nz, jr_000_0cfb                            ; $0cf6: $20 $03

	ld hl, wC136                                  ; $0cf8: $21 $36 $c1

jr_000_0cfb::
	ld a, [wC0E2]                                 ; $0cfb: $fa $e2 $c0
	ld e, a                                       ; $0cfe: $5f
	call Jump_000_216e                            ; $0cff: $cd $6e $21
	ld b, a                                       ; $0d02: $47
	ld a, [wC0F1]                                 ; $0d03: $fa $f1 $c0
	and a                                         ; $0d06: $a7
	jr z, jr_000_0d0e                             ; $0d07: $28 $05

	ld b, $bc                                     ; $0d09: $06 $bc
	xor a                                         ; $0d0b: $af
	jr jr_000_0d17                                ; $0d0c: $18 $09

jr_000_0d0e::
	ld a, [wC0D0]                                 ; $0d0e: $fa $d0 $c0
	and $02                                       ; $0d11: $e6 $02
	sla a                                         ; $0d13: $cb $27
	sla a                                         ; $0d15: $cb $27

jr_000_0d17::
	add b                                         ; $0d17: $80
	ld b, a                                       ; $0d18: $47
	ld a, [wC0E5]                                 ; $0d19: $fa $e5 $c0
	add b                                         ; $0d1c: $80
	jr jr_000_0d44                                ; $0d1d: $18 $25

jr_000_0d1f::
	ld hl, $0db6                                  ; $0d1f: $21 $b6 $0d
	ld a, [wC0E2]                                 ; $0d22: $fa $e2 $c0
	ld e, a                                       ; $0d25: $5f
	call Jump_000_216e                            ; $0d26: $cd $6e $21
	ld b, a                                       ; $0d29: $47
	ld a, [wC0F1]                                 ; $0d2a: $fa $f1 $c0
	and a                                         ; $0d2d: $a7
	jr z, jr_000_0d35                             ; $0d2e: $28 $05

	ld b, $c4                                     ; $0d30: $06 $c4
	xor a                                         ; $0d32: $af
	jr jr_000_0d3a                                ; $0d33: $18 $05

jr_000_0d35::
	ld a, [wC0D0]                                 ; $0d35: $fa $d0 $c0
	and $02                                       ; $0d38: $e6 $02

jr_000_0d3a::
	add b                                         ; $0d3a: $80
	ld b, a                                       ; $0d3b: $47
	ld a, [wC0E5]                                 ; $0d3c: $fa $e5 $c0
	srl a                                         ; $0d3f: $cb $3f
	srl a                                         ; $0d41: $cb $3f
	add b                                         ; $0d43: $80

jr_000_0d44::
	ld [wC0E4], a                                 ; $0d44: $ea $e4 $c0
	ld a, [wC0D0]                                 ; $0d47: $fa $d0 $c0
	and $01                                       ; $0d4a: $e6 $01
	jr z, jr_000_0d55                             ; $0d4c: $28 $07

	ld a, [wC0D0]                                 ; $0d4e: $fa $d0 $c0
	cp $01                                        ; $0d51: $fe $01
	jr z, jr_000_0d57                             ; $0d53: $28 $02

jr_000_0d55::
	and $02                                       ; $0d55: $e6 $02

jr_000_0d57::
	ld c, a                                       ; $0d57: $4f
	swap a                                        ; $0d58: $cb $37
	sla a                                         ; $0d5a: $cb $27
	ld [wC0ED], a                                 ; $0d5c: $ea $ed $c0
	ld a, [wTileSize]                                 ; $0d5f: $fa $d1 $c0
	cp $08                                        ; $0d62: $fe $08
	jr z, jr_000_0d95                             ; $0d64: $28 $2f

	ld a, c                                       ; $0d66: $79
	ld hl, $0da2                                  ; $0d67: $21 $a2 $0d
	call Call_000_0e7c                            ; $0d6a: $cd $7c $0e
	ld de, wC002                                  ; $0d6d: $11 $02 $c0
	ld a, [wC133]                                 ; $0d70: $fa $33 $c1
	cp $02                                        ; $0d73: $fe $02
	jr nz, jr_000_0d80                            ; $0d75: $20 $09

	ld a, [wC137]                                 ; $0d77: $fa $37 $c1
	add e                                         ; $0d7a: $83
	ld e, a                                       ; $0d7b: $5f
	ld a, d                                       ; $0d7c: $7a
	adc $00                                       ; $0d7d: $ce $00
	ld d, a                                       ; $0d7f: $57

jr_000_0d80::
	ld b, $04                                     ; $0d80: $06 $04

jr_000_0d82::
	ld a, [hl+]                                   ; $0d82: $2a
	ld c, a                                       ; $0d83: $4f
	ld a, [wC0E4]                                 ; $0d84: $fa $e4 $c0
	add c                                         ; $0d87: $81
	ld [de], a                                    ; $0d88: $12
	inc de                                        ; $0d89: $13
	ld a, [wC0ED]                                 ; $0d8a: $fa $ed $c0
	ld [de], a                                    ; $0d8d: $12
	inc de                                        ; $0d8e: $13
	inc de                                        ; $0d8f: $13
	inc de                                        ; $0d90: $13
	dec b                                         ; $0d91: $05
	jr nz, jr_000_0d82                            ; $0d92: $20 $ee

	ret                                           ; $0d94: $c9


jr_000_0d95::
	ld a, [wC0E4]                                 ; $0d95: $fa $e4 $c0
	ld [wC002], a                                 ; $0d98: $ea $02 $c0
	ld a, [wC0ED]                                 ; $0d9b: $fa $ed $c0
	ld [wC003], a                                 ; $0d9e: $ea $03 $c0
	ret                                           ; $0da1: $c9


	xor b                                         ; $0da2: $a8
	dec c                                         ; $0da3: $0d
	xor h                                         ; $0da4: $ac
	dec c                                         ; $0da5: $0d
	or b                                          ; $0da6: $b0
	dec c                                         ; $0da7: $0d
	nop                                           ; $0da8: $00
	ld bc, $0302                                  ; $0da9: $01 $02 $03
	ld bc, InterruptVBlank                        ; $0dac: $01 $00 $03
	ld [bc], a                                    ; $0daf: $02
	ld [bc], a                                    ; $0db0: $02
	inc bc                                        ; $0db1: $03
	nop                                           ; $0db2: $00
	ld bc, $9080                                  ; $0db3: $01 $80 $90
	or b                                          ; $0db6: $b0
	or h                                          ; $0db7: $b4

Call_000_0db8::
	ld a, [wC0E8]                                 ; $0db8: $fa $e8 $c0
	inc a                                         ; $0dbb: $3c
	ld [wC0E8], a                                 ; $0dbc: $ea $e8 $c0
	and $08                                       ; $0dbf: $e6 $08
	srl a                                         ; $0dc1: $cb $3f
	and $04                                       ; $0dc3: $e6 $04
	ld [wC0E5], a                                 ; $0dc5: $ea $e5 $c0
	ret                                           ; $0dc8: $c9


Call_000_0dc9::
	call Call_000_0572                            ; $0dc9: $cd $72 $05
	ld hl, wC87A                                  ; $0dcc: $21 $7a $c8

jr_000_0dcf::
	ld a, [hl]                                    ; $0dcf: $7e
	and a                                         ; $0dd0: $a7
	push hl                                       ; $0dd1: $e5
	jr z, jr_000_0dde                             ; $0dd2: $28 $0a

	add hl, de                                    ; $0dd4: $19
	ld a, [hl]                                    ; $0dd5: $7e
	and a                                         ; $0dd6: $a7
	jr z, jr_000_0dde                             ; $0dd7: $28 $05

	add hl, de                                    ; $0dd9: $19
	ld a, [hl]                                    ; $0dda: $7e
	and a                                         ; $0ddb: $a7
	jr nz, jr_000_0de6                            ; $0ddc: $20 $08

jr_000_0dde::
	pop hl                                        ; $0dde: $e1
	inc hl                                        ; $0ddf: $23
	dec bc                                        ; $0de0: $0b
	ld a, c                                       ; $0de1: $79
	or b                                          ; $0de2: $b0
	jr nz, jr_000_0dcf                            ; $0de3: $20 $ea

	ret                                           ; $0de5: $c9


jr_000_0de6::
	pop hl                                        ; $0de6: $e1
	ld hl, $0168                                  ; $0de7: $21 $68 $01
	or a                                          ; $0dea: $b7
	ld a, l                                       ; $0deb: $7d
	sub c                                         ; $0dec: $91
	ld [wC0C2], a                                 ; $0ded: $ea $c2 $c0
	ld [wC0C4], a                                 ; $0df0: $ea $c4 $c0
	ld [wC0CA], a                                 ; $0df3: $ea $ca $c0
	ld a, h                                       ; $0df6: $7c
	sbc b                                         ; $0df7: $98
	ld [wC0C3], a                                 ; $0df8: $ea $c3 $c0
	ld [wC0C5], a                                 ; $0dfb: $ea $c5 $c0
	ld [wC0CB], a                                 ; $0dfe: $ea $cb $c0
	ret                                           ; $0e01: $c9


Call_000_0e02::
	ld a, [wC2EE]                                 ; $0e02: $fa $ee $c2
	and a                                         ; $0e05: $a7
	jr nz, jr_000_0e5a                            ; $0e06: $20 $52

	ld hl, $41d7                                  ; $0e08: $21 $d7 $41
	ld a, [wC120]                                 ; $0e0b: $fa $20 $c1
	sla a                                         ; $0e0e: $cb $27
	sla a                                         ; $0e10: $cb $27

Call_000_0e12::
	ld e, a                                       ; $0e12: $5f
	sla a                                         ; $0e13: $cb $27
	sla a                                         ; $0e15: $cb $27
	add e                                         ; $0e17: $83
	ld e, a                                       ; $0e18: $5f
	ld d, $00                                     ; $0e19: $16 $00
	add hl, de                                    ; $0e1b: $19
	ld a, [wC2EF]                                 ; $0e1c: $fa $ef $c2
	sla a                                         ; $0e1f: $cb $27
	ld e, a                                       ; $0e21: $5f
	ld d, $00                                     ; $0e22: $16 $00
	add hl, de                                    ; $0e24: $19
	ld a, [wC2ED]                                 ; $0e25: $fa $ed $c2
	and a                                         ; $0e28: $a7
	jr z, jr_000_0e30                             ; $0e29: $28 $05

	ld de, $4358                                  ; $0e2b: $11 $58 $43
	jr jr_000_0e34                                ; $0e2e: $18 $04

jr_000_0e30::
	ld a, [hl+]                                   ; $0e30: $2a
	ld e, a                                       ; $0e31: $5f
	ld a, [hl]                                    ; $0e32: $7e
	ld d, a                                       ; $0e33: $57

jr_000_0e34::
	ld a, [de]                                    ; $0e34: $1a
	ld [wC0CE], a                                 ; $0e35: $ea $ce $c0
	inc de                                        ; $0e38: $13
	ld a, [de]                                    ; $0e39: $1a
	ld [wC0CD], a                                 ; $0e3a: $ea $cd $c0
	inc de                                        ; $0e3d: $13
	push de                                       ; $0e3e: $d5
	pop hl                                        ; $0e3f: $e1
	ld a, [wC0CE]                                 ; $0e40: $fa $ce $c0
	cp $0b                                        ; $0e43: $fe $0b
	jr nc, jr_000_0e54                            ; $0e45: $30 $0d

	ld a, [wC0CD]                                 ; $0e47: $fa $cd $c0
	cp $0a                                        ; $0e4a: $fe $0a
	jr nc, jr_000_0e54                            ; $0e4c: $30 $06

	ld a, $10                                     ; $0e4e: $3e $10
	ld [wTileSize], a                                 ; $0e50: $ea $d1 $c0
	ret                                           ; $0e53: $c9


jr_000_0e54::
	ld a, $08                                     ; $0e54: $3e $08
	ld [wTileSize], a                                 ; $0e56: $ea $d1 $c0
	ret                                           ; $0e59: $c9


jr_000_0e5a::
	call Call_000_12c4                            ; $0e5a: $cd $c4 $12
	ld [wTileSize], a                                 ; $0e5d: $ea $d1 $c0
	ld a, [wC2EF]                                 ; $0e60: $fa $ef $c2
	ld e, a                                       ; $0e63: $5f
	ld hl, wC2E4                                  ; $0e64: $21 $e4 $c2
	call Jump_000_216e                            ; $0e67: $cd $6e $21
	ld [wC0CD], a                                 ; $0e6a: $ea $cd $c0
	ld hl, wC2E7                                  ; $0e6d: $21 $e7 $c2
	call Jump_000_216e                            ; $0e70: $cd $6e $21
	ld [wC0CE], a                                 ; $0e73: $ea $ce $c0

Call_000_0e76::
	ld hl, $0e89                                  ; $0e76: $21 $89 $0e
	ld a, [wC2EF]                                 ; $0e79: $fa $ef $c2

Call_000_0e7c::
	sla a                                         ; $0e7c: $cb $27
	ld e, a                                       ; $0e7e: $5f
	ld d, $00                                     ; $0e7f: $16 $00
	add hl, de                                    ; $0e81: $19
	ld a, [hl+]                                   ; $0e82: $2a
	ld e, a                                       ; $0e83: $5f
	ld a, [hl]                                    ; $0e84: $7e
	ld d, a                                       ; $0e85: $57
	push de                                       ; $0e86: $d5
	pop hl                                        ; $0e87: $e1
	ret                                           ; $0e88: $c9


	dec sp                                        ; $0e89: $3b
	pop bc                                        ; $0e8a: $c1
	jp nz, $49c1                                  ; $0e8b: $c2 $c1 $49

	jp nz, $a0cd                                  ; $0e8e: $c2 $cd $a0

	ld c, $cd                                     ; $0e91: $0e $cd
	call $f020                                    ; $0e93: $cd $20 $f0
	sub b                                         ; $0e96: $90
	ld [wC0DD], a                                 ; $0e97: $ea $dd $c0
	ldh a, [$8f]                                  ; $0e9a: $f0 $8f
	ld [wTileMap], a                                 ; $0e9c: $ea $de $c0
	ret                                           ; $0e9f: $c9


Call_000_0ea0::
	ld a, [wTileSize]                                 ; $0ea0: $fa $d1 $c0
	cp $08                                        ; $0ea3: $fe $08
	jr nz, jr_000_0ec7                            ; $0ea5: $20 $20

	ld a, [wC0CE]                                 ; $0ea7: $fa $ce $c0
	ld b, a                                       ; $0eaa: $47
	ld a, $14                                     ; $0eab: $3e $14
	sub b                                         ; $0ead: $90
	sla a                                         ; $0eae: $cb $27
	sla a                                         ; $0eb0: $cb $27
	add $08                                       ; $0eb2: $c6 $08
	ldh [$8e], a                                  ; $0eb4: $e0 $8e
	ld a, [wC0CD]                                 ; $0eb6: $fa $cd $c0
	ld b, a                                       ; $0eb9: $47
	ld a, $12                                     ; $0eba: $3e $12
	sub b                                         ; $0ebc: $90
	sla a                                         ; $0ebd: $cb $27
	sla a                                         ; $0ebf: $cb $27
	add $10                                       ; $0ec1: $c6 $10
	ldh [$8d], a                                  ; $0ec3: $e0 $8d
	jr jr_000_0ee9                                ; $0ec5: $18 $22

jr_000_0ec7::
	ld a, [wC0CE]                                 ; $0ec7: $fa $ce $c0
	ld b, a                                       ; $0eca: $47
	ld a, $0a                                     ; $0ecb: $3e $0a
	sub b                                         ; $0ecd: $90
	sla a                                         ; $0ece: $cb $27
	sla a                                         ; $0ed0: $cb $27
	sla a                                         ; $0ed2: $cb $27
	add $08                                       ; $0ed4: $c6 $08
	ldh [$8e], a                                  ; $0ed6: $e0 $8e
	ld a, [wC0CD]                                 ; $0ed8: $fa $cd $c0
	ld b, a                                       ; $0edb: $47
	ld a, $09                                     ; $0edc: $3e $09
	sub b                                         ; $0ede: $90
	sla a                                         ; $0edf: $cb $27
	sla a                                         ; $0ee1: $cb $27
	sla a                                         ; $0ee3: $cb $27
	add $10                                       ; $0ee5: $c6 $10
	ldh [$8d], a                                  ; $0ee7: $e0 $8d

jr_000_0ee9::
	ret                                           ; $0ee9: $c9


Call_000_0eea::
	ld a, [wC0FF]                                 ; $0eea: $fa $ff $c0
	cp $00                                        ; $0eed: $fe $00
	jr nz, jr_000_0f06                            ; $0eef: $20 $15

	ld [wC101], a                                 ; $0ef1: $ea $01 $c1
	ld [wC107], a                                 ; $0ef4: $ea $07 $c1
	inc a                                         ; $0ef7: $3c
	ld [wC0FF], a                                 ; $0ef8: $ea $ff $c0
	ld hl, wC398                                  ; $0efb: $21 $98 $c3
	ld a, h                                       ; $0efe: $7c
	ld [wC102], a                                 ; $0eff: $ea $02 $c1
	ld a, l                                       ; $0f02: $7d
	ld [wC103], a                                 ; $0f03: $ea $03 $c1

jr_000_0f06::
	ld a, [wC0D0]                                 ; $0f06: $fa $d0 $c0
	ld b, a                                       ; $0f09: $47
	ld a, [wC107]                                 ; $0f0a: $fa $07 $c1
	ld [wC0A5], a                                 ; $0f0d: $ea $a5 $c0
	sla a                                         ; $0f10: $cb $27
	sla a                                         ; $0f12: $cb $27
	or b                                          ; $0f14: $b0
	ld [wC107], a                                 ; $0f15: $ea $07 $c1
	ld a, [wC101]                                 ; $0f18: $fa $01 $c1
	ld b, a                                       ; $0f1b: $47
	ld a, $03                                     ; $0f1c: $3e $03
	sub b                                         ; $0f1e: $90
	cp $00                                        ; $0f1f: $fe $00
	jr z, jr_000_0f39                             ; $0f21: $28 $16

	ld b, a                                       ; $0f23: $47
	ld a, [wC107]                                 ; $0f24: $fa $07 $c1

jr_000_0f27::
	sla a                                         ; $0f27: $cb $27
	sla a                                         ; $0f29: $cb $27
	dec b                                         ; $0f2b: $05
	jr nz, jr_000_0f27                            ; $0f2c: $20 $f9

	ld b, a                                       ; $0f2e: $47
	ld a, [wC102]                                 ; $0f2f: $fa $02 $c1
	ld h, a                                       ; $0f32: $67
	ld a, [wC103]                                 ; $0f33: $fa $03 $c1
	ld l, a                                       ; $0f36: $6f
	ld a, b                                       ; $0f37: $78
	ld [hl], a                                    ; $0f38: $77

jr_000_0f39::
	ld a, [wC101]                                 ; $0f39: $fa $01 $c1
	inc a                                         ; $0f3c: $3c
	ld [wC101], a                                 ; $0f3d: $ea $01 $c1
	cp $04                                        ; $0f40: $fe $04
	ret nz                                        ; $0f42: $c0

	ld a, [wC102]                                 ; $0f43: $fa $02 $c1
	ld h, a                                       ; $0f46: $67
	ld a, [wC103]                                 ; $0f47: $fa $03 $c1
	ld l, a                                       ; $0f4a: $6f
	ld a, [wC107]                                 ; $0f4b: $fa $07 $c1
	ld [hl], a                                    ; $0f4e: $77
	inc hl                                        ; $0f4f: $23
	ld a, h                                       ; $0f50: $7c
	ld [wC102], a                                 ; $0f51: $ea $02 $c1
	ld a, l                                       ; $0f54: $7d
	ld [wC103], a                                 ; $0f55: $ea $03 $c1
	xor a                                         ; $0f58: $af
	ld [wC101], a                                 ; $0f59: $ea $01 $c1
	ld [wC107], a                                 ; $0f5c: $ea $07 $c1
	ret                                           ; $0f5f: $c9


Call_000_0f60::
	ld a, [wC100]                                 ; $0f60: $fa $00 $c1
	cp $00                                        ; $0f63: $fe $00
	jr nz, jr_000_0f7d                            ; $0f65: $20 $16

	ld [wC104], a                                 ; $0f67: $ea $04 $c1
	inc a                                         ; $0f6a: $3c
	ld [wC100], a                                 ; $0f6b: $ea $00 $c1
	ld hl, wC398                                  ; $0f6e: $21 $98 $c3
	ld a, [hl]                                    ; $0f71: $7e
	ld [wC108], a                                 ; $0f72: $ea $08 $c1
	ld a, h                                       ; $0f75: $7c
	ld [wC105], a                                 ; $0f76: $ea $05 $c1
	ld a, l                                       ; $0f79: $7d
	ld [wC106], a                                 ; $0f7a: $ea $06 $c1

jr_000_0f7d::
	ld a, [wC108]                                 ; $0f7d: $fa $08 $c1
	ld b, $00                                     ; $0f80: $06 $00
	rlca                                          ; $0f82: $07
	rl b                                          ; $0f83: $cb $10
	rlca                                          ; $0f85: $07
	rl b                                          ; $0f86: $cb $10
	ld [wC108], a                                 ; $0f88: $ea $08 $c1
	ld a, b                                       ; $0f8b: $78
	ld [wC0D0], a                                 ; $0f8c: $ea $d0 $c0
	ld a, [wC104]                                 ; $0f8f: $fa $04 $c1
	inc a                                         ; $0f92: $3c
	ld [wC104], a                                 ; $0f93: $ea $04 $c1
	cp $04                                        ; $0f96: $fe $04
	ret nz                                        ; $0f98: $c0

	ld a, [wC105]                                 ; $0f99: $fa $05 $c1
	ld h, a                                       ; $0f9c: $67
	ld a, [wC106]                                 ; $0f9d: $fa $06 $c1
	ld l, a                                       ; $0fa0: $6f
	inc hl                                        ; $0fa1: $23
	ld a, [hl]                                    ; $0fa2: $7e
	ld [wC108], a                                 ; $0fa3: $ea $08 $c1
	ld a, h                                       ; $0fa6: $7c
	ld [wC105], a                                 ; $0fa7: $ea $05 $c1
	ld a, l                                       ; $0faa: $7d
	ld [wC106], a                                 ; $0fab: $ea $06 $c1
	xor a                                         ; $0fae: $af
	ld [wC104], a                                 ; $0faf: $ea $04 $c1
	ret                                           ; $0fb2: $c9


Call_000_0fb3::
	push de                                       ; $0fb3: $d5
	ld de, wC10C                                  ; $0fb4: $11 $0c $c1
	ld a, [wC0CE]                                 ; $0fb7: $fa $ce $c0
	ld [wC10A], a                                 ; $0fba: $ea $0a $c1
	ld a, [wC109]                                 ; $0fbd: $fa $09 $c1
	and a                                         ; $0fc0: $a7
	jr z, jr_000_0fcb                             ; $0fc1: $28 $08

	ld b, a                                       ; $0fc3: $47
	call jr_000_0ff3                              ; $0fc4: $cd $f3 $0f
	xor a                                         ; $0fc7: $af
	ld [wC109], a                                 ; $0fc8: $ea $09 $c1

jr_000_0fcb::
	ld a, [wC10A]                                 ; $0fcb: $fa $0a $c1
	and a                                         ; $0fce: $a7
	jr z, jr_000_0ff1                             ; $0fcf: $28 $20

	sub $08                                       ; $0fd1: $d6 $08
	jr c, jr_000_0fe0                             ; $0fd3: $38 $0b

	ld a, [hl+]                                   ; $0fd5: $2a
	ld [wC10B], a                                 ; $0fd6: $ea $0b $c1
	ld b, $08                                     ; $0fd9: $06 $08
	call jr_000_0ff3                              ; $0fdb: $cd $f3 $0f
	jr jr_000_0fcb                                ; $0fde: $18 $eb

jr_000_0fe0::
	ld a, [wC10A]                                 ; $0fe0: $fa $0a $c1
	ld b, a                                       ; $0fe3: $47
	ld a, $08                                     ; $0fe4: $3e $08
	sub b                                         ; $0fe6: $90
	ld [wC109], a                                 ; $0fe7: $ea $09 $c1
	ld a, [hl+]                                   ; $0fea: $2a
	ld [wC10B], a                                 ; $0feb: $ea $0b $c1
	call jr_000_0ff3                              ; $0fee: $cd $f3 $0f

jr_000_0ff1::
	pop de                                        ; $0ff1: $d1
	ret                                           ; $0ff2: $c9


jr_000_0ff3::
	ld a, [wC10B]                                 ; $0ff3: $fa $0b $c1
	sla a                                         ; $0ff6: $cb $27
	ld [wC10B], a                                 ; $0ff8: $ea $0b $c1
	jr c, jr_000_1001                             ; $0ffb: $38 $04

	xor a                                         ; $0ffd: $af
	ld [de], a                                    ; $0ffe: $12
	jr jr_000_1004                                ; $0fff: $18 $03

jr_000_1001::
	ld a, $01                                     ; $1001: $3e $01
	ld [de], a                                    ; $1003: $12

jr_000_1004::
	inc de                                        ; $1004: $13
	ld a, [wC10A]                                 ; $1005: $fa $0a $c1
	dec a                                         ; $1008: $3d
	ld [wC10A], a                                 ; $1009: $ea $0a $c1
	dec b                                         ; $100c: $05
	 jr nz, jr_000_0ff3                           ; $100d: $20 $e4
	ret                                           ; $100f: $c9

; Handles logic for the map editor
RunEditor::
	call Call_000_108f                            ; $1010: $cd $8f $10
	call ChangeBlock                            ; $1013: $cd $1f $12
	call Call_000_1264                            ; ?? Possibly related to the animation
	call Call_000_1236                            ; $1019: $cd $36 $12
	ldh a, [hKeys]                                ; 
	and K_START                                   ; Quit routine if Start was not pressed
	 ret z                                        ; 

	ld a, [wC020]                                 ; $1021: $fa $20 $c0
	ldh [$8d], a                                  ; $1024: $e0 $8d
	ld [wC0A9], a                                 ; $1026: $ea $a9 $c0
	ld a, [wC021]                                 ; $1029: $fa $21 $c0
	ldh [$8e], a                                  ; $102c: $e0 $8e
	ld [wC0AA], a                                 ; $102e: $ea $aa $c0
	call Call_000_0b2a                            ; $1031: $cd $2a $0b
	call CopyBGMapAddressToHRAM                            ; $1034: $cd $cd $20
	ld a, [wC2EF]                                 ; $1037: $fa $ef $c2
	sla a                                         ; $103a: $cb $27
	ld e, a                                       ; $103c: $5f
	ld d, $00                                     ; $103d: $16 $00
	ld hl, wC38C                                  ; $103f: $21 $8c $c3
	add hl, de                                    ; $1042: $19
	ldh a, [$90]                                  ; $1043: $f0 $90
	ld [hl+], a                                   ; $1045: $22
	ldh a, [$8f]                                  ; $1046: $f0 $8f
	ld [hl], a                                    ; $1048: $77
	ld hl, wC392                                  ; $1049: $21 $92 $c3
	ld a, [wC2EF]                                 ; $104c: $fa $ef $c2
	sla a                                         ; $104f: $cb $27
	ld e, a                                       ; $1051: $5f
	ld d, $00                                     ; $1052: $16 $00
	add hl, de                                    ; $1054: $19
	ld a, [wC0C2]                                 ; $1055: $fa $c2 $c0
	ld [hl+], a                                   ; $1058: $22
	ld a, [wC0C3]                                 ; $1059: $fa $c3 $c0
	ld [hl], a                                    ; $105c: $77
	call Jump_000_1f4a                            ; $105d: $cd $4a $1f
	call Call_000_1198                            ; $1060: $cd $98 $11
	and a                                         ; $1063: $a7
	jr nz, jr_000_1089                            ; $1064: $20 $23

	call Call_000_1330                            ; $1066: $cd $30 $13
	call Call_000_0627                            ; $1069: $cd $27 $06
	ld a, [wC0F4]                                 ; $106c: $fa $f4 $c0
	ld [wC0EE], a                                 ; $106f: $ea $ee $c0
	and a                                         ; $1072: $a7
	jp z, Jump_000_05b3                           ; $1073: $ca $b3 $05

	xor a                                         ; $1076: $af
	ld [wGameplayType], a                         ; $1077: $ea $ec $c2
	ld [wC0D3], a                                 ; $107a: $ea $d3 $c0
	ld [wC2D7], a                                 ; $107d: $ea $d7 $c2
	ld [wC2D9], a                                 ; $1080: $ea $d9 $c2
	ld [wC2ED], a                                 ; $1083: $ea $ed $c2
	jp Jump_000_0ab1                              ; $1086: $c3 $b1 $0a


jr_000_1089::
	call Call_000_1330                            ; $1089: $cd $30 $13
	jp Jump_000_05b3                              ; $108c: $c3 $b3 $05


Call_000_108f::
	ld a, [wC0CF]                                 ; $108f: $fa $cf $c0
	and a                                         ; $1092: $a7
	jr nz, jr_000_10be                            ; $1093: $20 $29

	call Call_000_110f                            ; $1095: $cd $0f $11
	call Call_000_093e                            ; $1098: $cd $3e $09
	cp $ff                                        ; $109b: $fe $ff
	ret z                                         ; $109d: $c8

	call Call_000_10c8                            ; $109e: $cd $c8 $10
	and a                                         ; $10a1: $a7
	ret nz                                        ; $10a2: $c0

	ld a, [wC0D3]                                 ; $10a3: $fa $d3 $c0
	ld [wC0D2], a                                 ; $10a6: $ea $d2 $c0
	call Call_000_0973                            ; $10a9: $cd $73 $09
	ld a, [wC0C4]                                 ; $10ac: $fa $c4 $c0
	ld [wC0C2], a                                 ; $10af: $ea $c2 $c0
	ld a, [wC0C5]                                 ; $10b2: $fa $c5 $c0
	ld [wC0C3], a                                 ; $10b5: $ea $c3 $c0
	ld a, [wTileSize]                             ; $10b8: $fa $d1 $c0
	ld [wC0CF], a                                 ; $10bb: $ea $cf $c0

jr_000_10be::
	xor a                                         ; $10be: $af
	ld [wC0E1], a                                 ; $10bf: $ea $e1 $c0
	ld hl, wC020                                  ; $10c2: $21 $20 $c0
	jp Call_000_0800                              ; $10c5: $c3 $00 $08


Call_000_10c8::
	ld hl, WORK_RAM                                  ; $10c8: $21 $00 $c0
	ld a, [wGameplayType]                         ; $10cb: $fa $ec $c2
	cp G_EDITOR                                        ; $10ce: $fe $02
	jr nz, jr_000_10d5                            ; $10d0: $20 $03

	ld hl, wC020                                  ; $10d2: $21 $20 $c0

jr_000_10d5::
	ld a, [wTileSize]                                 ; $10d5: $fa $d1 $c0
	ld b, a                                       ; $10d8: $47
	ld a, [wC0D0]                                 ; $10d9: $fa $d0 $c0
	cp $02                                        ; $10dc: $fe $02
	jr c, jr_000_10f4                             ; $10de: $38 $14

	cp $03                                        ; $10e0: $fe $03
	jr z, jr_000_10ec                             ; $10e2: $28 $08

	ld a, [hl]                                    ; $10e4: $7e
	sub b                                         ; $10e5: $90
	cp $10                                        ; $10e6: $fe $10
	jr c, jr_000_110c                             ; $10e8: $38 $22

	jr jr_000_110a                                ; $10ea: $18 $1e

jr_000_10ec::
	ld a, [hl]                                    ; $10ec: $7e
	add b                                         ; $10ed: $80
	cp $a0                                        ; $10ee: $fe $a0
	jr nc, jr_000_110c                            ; $10f0: $30 $1a

	jr jr_000_110a                                ; $10f2: $18 $16

jr_000_10f4::
	inc hl                                        ; $10f4: $23
	and a                                         ; $10f5: $a7
	jr z, jr_000_1104                             ; $10f6: $28 $0c

	ld a, [hl]                                    ; $10f8: $7e
	sub b                                         ; $10f9: $90
	cp $08                                        ; $10fa: $fe $08
	jr c, jr_000_110c                             ; $10fc: $38 $0e

	cp $f8                                        ; $10fe: $fe $f8
	jr nc, jr_000_110c                            ; $1100: $30 $0a

	jr jr_000_110a                                ; $1102: $18 $06

jr_000_1104::
	ld a, [hl]                                    ; $1104: $7e
	add b                                         ; $1105: $80
	cp $a8                                        ; $1106: $fe $a8
	jr nc, jr_000_110c                            ; $1108: $30 $02

jr_000_110a::
	xor a                                         ; $110a: $af
	ret                                           ; $110b: $c9


jr_000_110c::
	ld a, $01                                     ; $110c: $3e $01
	ret                                           ; $110e: $c9


Call_000_110f::
	ldh a, [hKeys]                                  ; $110f: $f0 $8b
	and $01                                       ; $1111: $e6 $01
	ret z                                         ; $1113: $c8

	ld a, [wC0D3]                                 ; $1114: $fa $d3 $c0
	cp $03                                        ; $1117: $fe $03
	jr z, jr_000_1154                             ; $1119: $28 $39

	cp $01                                        ; $111b: $fe $01
	jr z, jr_000_112c                             ; $111d: $28 $0d

	cp $02                                        ; $111f: $fe $02
	jr z, jr_000_1140                             ; $1121: $28 $1d

	xor a                                         ; $1123: $af
	ld [wC0A1], a                                 ; $1124: $ea $a1 $c0
	call Call_000_11f2                            ; $1127: $cd $f2 $11
	jr jr_000_116b                                ; $112a: $18 $3f

jr_000_112c::
	ld hl, wCB4A                                  ; $112c: $21 $4a $cb
	call Call_000_1213                            ; $112f: $cd $13 $12
	ld hl, wC9E2                                  ; $1132: $21 $e2 $c9
	call $11bc                                    ; $1135: $cd $bc $11
	ld [wC0EC], a                                 ; $1138: $ea $ec $c0
	ld hl, wC87A                                  ; $113b: $21 $7a $c8
	jr jr_000_115e                                ; $113e: $18 $1e

jr_000_1140::
	ld hl, wCB4A                                  ; $1140: $21 $4a $cb
	call Call_000_1213                            ; $1143: $cd $13 $12
	ld hl, wC87A                                  ; $1146: $21 $7a $c8
	call $11bc                                    ; $1149: $cd $bc $11
	ld [wC0EC], a                                 ; $114c: $ea $ec $c0
	ld hl, wC9E2                                  ; $114f: $21 $e2 $c9
	jr jr_000_115e                                ; $1152: $18 $0a

jr_000_1154::
	xor a                                         ; $1154: $af
	ld [wC0A1], a                                 ; $1155: $ea $a1 $c0
	call Call_000_11f2                            ; $1158: $cd $f2 $11
	ld hl, wCB4A                                  ; $115b: $21 $4a $cb

jr_000_115e::
	ld a, [wC0C2]                                 ; $115e: $fa $c2 $c0
	ld e, a                                       ; $1161: $5f
	ld a, [wC0C3]                                 ; $1162: $fa $c3 $c0
	ld d, a                                       ; $1165: $57
	ld a, $01                                     ; $1166: $3e $01
	call Jump_000_2169                            ; $1168: $cd $69 $21

jr_000_116b::
	push hl                                       ; $116b: $e5
	ld hl, wC020                                  ; $116c: $21 $20 $c0
	ld a, [hl+]                                   ; $116f: $2a
	ldh [$8d], a                                  ; $1170: $e0 $8d
	ld a, [hl]                                    ; $1172: $7e
	ldh [$8e], a                                  ; $1173: $e0 $8e
	call CopyBGMapAddressToHRAM                            ; $1175: $cd $cd $20
	pop hl                                        ; $1178: $e1
	ld a, [wC0D3]                                 ; $1179: $fa $d3 $c0
	and a                                         ; $117c: $a7
	jr z, jr_000_1195                             ; $117d: $28 $16

	cp $03                                        ; $117f: $fe $03
	jr z, jr_000_1195                             ; $1181: $28 $12

	call Call_000_11c7                            ; $1183: $cd $c7 $11
	ld a, $01                                     ; $1186: $3e $01
	ld [wC0AB], a                                 ; $1188: $ea $ab $c0

jr_000_118b::
	ld a, [wC0AB]                                 ; $118b: $fa $ab $c0
	and a                                         ; $118e: $a7
	jr nz, jr_000_118b                            ; $118f: $20 $fa

	ld [wC0EC], a                                 ; $1191: $ea $ec $c0
	ret                                           ; $1194: $c9


jr_000_1195::
	jp Call_000_049e                              ; $1195: $c3 $9e $04


Call_000_1198::
	ld b, $02                                     ; $1198: $06 $02
	xor a                                         ; $119a: $af
	ld [wC0A1], a                                 ; $119b: $ea $a1 $c0

jr_000_119e::
	ld hl, $11b8                                  ; $119e: $21 $b8 $11
	ld a, b                                       ; $11a1: $78
	dec a                                         ; $11a2: $3d
	call Call_000_0e7c                            ; $11a3: $cd $7c $0e
	call $11bc                                    ; $11a6: $cd $bc $11
	ld c, a                                       ; $11a9: $4f
	ld a, [wC0A1]                                 ; $11aa: $fa $a1 $c0
	or c                                          ; $11ad: $b1
	ld [wC0A1], a                                 ; $11ae: $ea $a1 $c0
	dec b                                         ; $11b1: $05
	jr nz, jr_000_119e                            ; $11b2: $20 $ea

	ld a, [wC0A1]                                 ; $11b4: $fa $a1 $c0
	ret                                           ; $11b7: $c9


	ld [c], a                                     ; $11b8: $e2
	ret                                           ; $11b9: $c9


	ld c, d                                       ; $11ba: $4a
	set 7, d                                      ; $11bb: $cb $fa
	jp nz, $5fc0                                  ; $11bd: $c2 $c0 $5f

	ld a, [wC0C3]                                 ; $11c0: $fa $c3 $c0
	ld d, a                                       ; $11c3: $57
	jp Jump_000_2164                              ; $11c4: $c3 $64 $21


Call_000_11c7::
	push hl                                       ; $11c7: $e5
	push de                                       ; $11c8: $d5
	ld a, [wC0EC]                                 ; $11c9: $fa $ec $c0
	and a                                         ; $11cc: $a7
	ld a, [wC0D3]                                 ; $11cd: $fa $d3 $c0
	jp z, Jump_000_04d0                           ; $11d0: $ca $d0 $04

	ld a, [wC0C2]                                 ; $11d3: $fa $c2 $c0
	ld e, a                                       ; $11d6: $5f
	ld a, [wC0C3]                                 ; $11d7: $fa $c3 $c0
	ld d, a                                       ; $11da: $57
	ld a, [wC0D3]                                 ; $11db: $fa $d3 $c0
	cp $01                                        ; $11de: $fe $01
	jr nz, jr_000_11e7                            ; $11e0: $20 $05

	ld hl, wC9E2                                  ; $11e2: $21 $e2 $c9
	jr jr_000_11ef                                ; $11e5: $18 $08

jr_000_11e7::
	cp $02                                        ; $11e7: $fe $02
	jp nz, Jump_000_04d0                          ; $11e9: $c2 $d0 $04

	ld hl, wC87A                                  ; $11ec: $21 $7a $c8

jr_000_11ef::
	jp Jump_000_04c9                              ; $11ef: $c3 $c9 $04


Call_000_11f2::
	ld b, $03                                     ; $11f2: $06 $03
	ld hl, wC87A                                  ; $11f4: $21 $7a $c8
	ld a, [wC0C2]                                 ; $11f7: $fa $c2 $c0
	ld e, a                                       ; $11fa: $5f
	ld a, [wC0C3]                                 ; $11fb: $fa $c3 $c0
	ld d, a                                       ; $11fe: $57

jr_000_11ff::
	ld a, [wC0A1]                                 ; $11ff: $fa $a1 $c0
	call Jump_000_2169                            ; $1202: $cd $69 $21
	ld a, [wC2D0]                                 ; $1205: $fa $d0 $c2
	add l                                         ; $1208: $85
	ld l, a                                       ; $1209: $6f
	ld a, [wC2D1]                                 ; $120a: $fa $d1 $c2
	adc h                                         ; $120d: $8c
	ld h, a                                       ; $120e: $67
	dec b                                         ; $120f: $05
	jr nz, jr_000_11ff                            ; $1210: $20 $ed

	ret                                           ; $1212: $c9


Call_000_1213::
	ld a, [wC0C2]                                 ; $1213: $fa $c2 $c0
	ld e, a                                       ; $1216: $5f
	ld a, [wC0C3]                                 ; $1217: $fa $c3 $c0
	ld d, a                                       ; $121a: $57
	xor a                                         ; $121b: $af
	jp Jump_000_2169                              ; $121c: $c3 $69 $21


; Check if the current block (the cursor) in the editor should be changed
ChangeBlock::
	ldh a, [hKeys]                                ; $121f: $f0 $8b
	and K_B                                       ; Check if B was pressed
	 ret z                                        ; Quit if not

	ld a, [wCurBlock]                             ; 
	inc a                                         ; Switch to next block
	and $03                                       ; Wrap if >= 4
	ld [wCurBlock], a                             ; 
	call Call_000_1295                            ; $122d: $cd $95 $12
	call DrawEditorBlock                          ; $1230: $cd $42 $12
	call Call_000_1295                            ; $1233: $cd $95 $12

Call_000_1236::
	ld a, $01                                     ; $1236: $3e $01
	ld [wC0F5], a                                 ; $1238: $ea $f5 $c0

jr_000_123b::
	ld a, [wC0F5]                                 ; $123b: $fa $f5 $c0
	and a                                         ; $123e: $a7
	jr nz, jr_000_123b                            ; $123f: $20 $fa

	ret                                           ; $1241: $c9


; Possibly related to swapping out the tile in the editor (it animates between
; a solid tile and the brick you want to place).
DrawEditorBlock::
	ld hl, $04e9                                  ; $1242: $21 $e9 $04
	ld a, [wTileSize]                             ; $1245: $fa $d1 $c0
	cp $08                                        ; $1248: $fe $08
	 jr nz, .skip                                 ; $124a: $20 $03
	ld hl, $04ee                                  ; $124c: $21 $ee $04
.skip::
	ld a, [wC0D3]                                 ; $124f: $fa $d3 $c0
	ld e, a                                       ; $1252: $5f
	call Jump_000_216e                            ; $1253: $cd $6e $21
	ld hl, wC022                                  ; $1256: $21 $22 $c0

; Sets the sprite ID in $C0XX (OAM entries that are copied over via DMA
; during VBlank)
; Input:
;  hl = address of first tile number offset in OAM buffer (start of OAM entry + 2)
;  a = first sprite id (in the event that it's a 16x16 sprite)
SetSpriteId::
	ld b, $04                                     ; $1259: $06 $04
jr_000_125b::
	ld [hl+], a                                   ; $125b: $22
	inc a                                         ; $125c: $3c
	inc hl                                        ; $125d: $23
	inc hl                                        ; $125e: $23
	inc hl                                        ; $125f: $23
	dec b                                         ; $1260: $05
	 jr nz, jr_000_125b                           ; $1261: $20 $f8
	ret                                           ; $1263: $c9


Call_000_1264::
	ld a, [wFrameCounter]                         ; $1264: $fa $a4 $c0
	and $20                                       ; Swap the tile shown every 32 frames 
	 jr nz, .drawBlockCursor                      ; Show black box
	jp DrawEditorBlock                            ; .. or the current block
.drawBlockCursor::
	ld hl, wC022                                  ; $126e: $21 $22 $c0
	ld b, $04                                     ; $1271: $06 $04
	ld a, $c6                                     ; $1273: $3e $c6

jr_000_1275::
	ld [hl+], a                                   ; $1275: $22
	inc hl                                        ; $1276: $23
	inc hl                                        ; $1277: $23
	inc hl                                        ; $1278: $23
	dec b                                         ; $1279: $05
	jr nz, jr_000_1275                            ; $127a: $20 $f9

	ret                                           ; $127c: $c9


; Updates a timer every 64 interrupts
UpdateTimer::
	or a                                          ; $127d: $b7
	ld a, [wTimerFrames]                          ; Grab current frames
	add $01                                       ; Increase by one
	ld [wTimerFrames], a                          ; Update frames
	cp $40                                        ; Quit if < 64 frames
	 ret c                                        ; 

	ld a, [wTimerSeconds]                         ; Every 64 frames, update the seconds timer
	inc a                                         ; 
	ld [wTimerSeconds], a                         ; 
	xor a                                         ; Reset timer frames
	ld [wTimerFrames], a                          ; 
	ret                                           ; 


Call_000_1295::
	push af                                       ; $1295: $f5
	push bc                                       ; $1296: $c5
	push de                                       ; $1297: $d5
	push hl                                       ; $1298: $e5
	xor a                                         ; $1299: $af
	ld [wTimerFrames], a                          ; $129a: $ea $ef $c0
	ld [wC0F0], a                                 ; $129d: $ea $f0 $c0

.waitVBlank::
	ldh a, [hVBlankState]                         ; $12a0: $f0 $91
	and a                                         ; $12a2: $a7
	 jr z, .waitVBlank                            ; $12a3: $28 $fb

	ld a, [wTimerFrames]                          ; $12a5: $fa $ef $c0
	inc a                                         ; $12a8: $3c
	ld [wTimerFrames], a                          ; $12a9: $ea $ef $c0
	cp $ff                                        ; $12ac: $fe $ff
	 jr nz, .waitVBlank                           ; $12ae: $20 $f0

	xor a                                         ; $12b0: $af
	ld [wTimerFrames], a                          ; $12b1: $ea $ef $c0
	ld a, [wC0F0]                                 ; $12b4: $fa $f0 $c0
	inc a                                         ; $12b7: $3c
	ld [wC0F0], a                                 ; $12b8: $ea $f0 $c0
	cp $18                                        ; $12bb: $fe $18
	 jr nz, .waitVBlank                           ; $12bd: $20 $e1

	pop hl                                        ; $12bf: $e1
	pop de                                        ; $12c0: $d1
	pop bc                                        ; $12c1: $c1
	pop af                                        ; $12c2: $f1
	ret                                           ; $12c3: $c9


Call_000_12c4::
	ld a, [wC2EF]                                 ; $12c4: $fa $ef $c2
	ld e, a                                       ; $12c7: $5f
	ld hl, wC389                                  ; $12c8: $21 $89 $c3
	jp Jump_000_216e                              ; $12cb: $c3 $6e $21


Call_000_12ce::
	ld a, [wC2EF]                                 ; $12ce: $fa $ef $c2
	ld e, a                                       ; $12d1: $5f
	ld a, [wTileSize]                                 ; $12d2: $fa $d1 $c0
	ld hl, wC389                                  ; $12d5: $21 $89 $c3
	jp Call_000_2175                              ; $12d8: $c3 $75 $21


Call_000_12db::
	ld a, [wGameplayType]                         ; $12db: $fa $ec $c2
	cp G_EDITOR                                        ; $12de: $fe $02
	ret nz                                        ; $12e0: $c0

	ld hl, wC023                                  ; $12e1: $21 $23 $c0
	xor a                                         ; $12e4: $af
	ld b, $04                                     ; $12e5: $06 $04
	call jr_000_1275                              ; $12e7: $cd $75 $12
	call Call_000_12c4                            ; $12ea: $cd $c4 $12
	ld b, a                                       ; $12ed: $47
	ld a, [wTileSize]                                 ; $12ee: $fa $d1 $c0
	cp b                                          ; $12f1: $b8
	jr z, jr_000_12fa                             ; $12f2: $28 $06

	call Call_000_0c0d                            ; $12f4: $cd $0d $0c
	call Call_000_1330                            ; $12f7: $cd $30 $13

jr_000_12fa::
	call Call_000_12ce                            ; $12fa: $cd $ce $12
	ld a, [wTileSize]                                 ; $12fd: $fa $d1 $c0
	cp $08                                        ; $1300: $fe $08
	jr nz, jr_000_1310                            ; $1302: $20 $0c

	ld a, $14                                     ; $1304: $3e $14
	ld [wC0CE], a                                 ; $1306: $ea $ce $c0
	ld a, $12                                     ; $1309: $3e $12
	ld [wC0CD], a                                 ; $130b: $ea $cd $c0
	jr jr_000_131a                                ; $130e: $18 $0a

jr_000_1310::
	ld a, $0a                                     ; $1310: $3e $0a
	ld [wC0CE], a                                 ; $1312: $ea $ce $c0
	ld a, $09                                     ; $1315: $3e $09
	ld [wC0CD], a                                 ; $1317: $ea $cd $c0

jr_000_131a::
	ld a, [wC2EF]                                 ; $131a: $fa $ef $c2
	ld e, a                                       ; $131d: $5f
	ld hl, wC2E4                                  ; $131e: $21 $e4 $c2
	ld a, [wC0CD]                                 ; $1321: $fa $cd $c0
	call Call_000_2175                            ; $1324: $cd $75 $21
	ld hl, wC2E7                                  ; $1327: $21 $e7 $c2
	ld a, [wC0CE]                                 ; $132a: $fa $ce $c0
	jp Call_000_2175                              ; $132d: $c3 $75 $21


Call_000_1330::
	call Jump_000_1f4a                            ; $1330: $cd $4a $1f
	call Call_000_0e76                            ; $1333: $cd $76 $0e
	ld de, wC87A                                  ; $1336: $11 $7a $c8
	ld b, $87                                     ; $1339: $06 $87
	ld a, $0a                                     ; $133b: $3e $0a
	ld [wC0A5], a                                 ; $133d: $ea $a5 $c0
	dec a                                         ; $1340: $3d
	ld [wC0A6], a                                 ; $1341: $ea $a6 $c0

jr_000_1344::
	push bc                                       ; $1344: $c5
	ld b, $08                                     ; $1345: $06 $08
	ld c, $00                                     ; $1347: $0e $00

jr_000_1349::
	ld a, [de]                                    ; $1349: $1a
	inc de                                        ; $134a: $13
	and $01                                       ; $134b: $e6 $01
	jr z, jr_000_1350                             ; $134d: $28 $01

	scf                                           ; $134f: $37

jr_000_1350::
	rl c                                          ; $1350: $cb $11
	ld a, [wTileSize]                                 ; $1352: $fa $d1 $c0
	cp $08                                        ; $1355: $fe $08
	jr z, jr_000_1380                             ; $1357: $28 $27

	ld a, [wC0A5]                                 ; $1359: $fa $a5 $c0
	dec a                                         ; $135c: $3d
	and a                                         ; $135d: $a7
	jr nz, jr_000_137d                            ; $135e: $20 $1d

	ld a, $0a                                     ; $1360: $3e $0a
	add e                                         ; $1362: $83
	ld e, a                                       ; $1363: $5f
	ld a, d                                       ; $1364: $7a
	adc $00                                       ; $1365: $ce $00
	ld d, a                                       ; $1367: $57
	ld a, [wC0A6]                                 ; $1368: $fa $a6 $c0
	dec a                                         ; $136b: $3d
	and a                                         ; $136c: $a7
	jr nz, jr_000_138a                            ; $136d: $20 $1b

	ld a, $b4                                     ; $136f: $3e $b4
	add e                                         ; $1371: $83
	ld e, a                                       ; $1372: $5f
	ld a, d                                       ; $1373: $7a
	adc $00                                       ; $1374: $ce $00
	ld d, a                                       ; $1376: $57
	ld a, $09                                     ; $1377: $3e $09
	ld [wC0A6], a                                 ; $1379: $ea $a6 $c0
	inc a                                         ; $137c: $3c

jr_000_137d::
	ld [wC0A5], a                                 ; $137d: $ea $a5 $c0

jr_000_1380::
	dec b                                         ; $1380: $05
	jr nz, jr_000_1349                            ; $1381: $20 $c6

	ld a, c                                       ; $1383: $79
	ld [hl+], a                                   ; $1384: $22
	pop bc                                        ; $1385: $c1
	dec b                                         ; $1386: $05
	jr nz, jr_000_1344                            ; $1387: $20 $bb

	ret                                           ; $1389: $c9


jr_000_138a::
	ld [wC0A6], a                                 ; $138a: $ea $a6 $c0
	ld a, $0a                                     ; $138d: $3e $0a
	jr jr_000_137d                                ; $138f: $18 $ec

DrawTitleScreen::
	ld a, [wGameplayType]                         ; $1391: $fa $ec $c2
	cp $04                                        ; $1394: $fe $04
	 ret nz                                       ; $1396: $c0

	call ClearBGMap                            ; $1397: $cd $4c $21
	ld a, $44                                     ; $139a: $3e $44
	ld [wVRAMPointerLow], a                                 ; $139c: $ea $f8 $c0
	ld a, $98                                     ; $139f: $3e $98
	ld [wVRAMPointerHigh], a                                 ; $13a1: $ea $f7 $c0
	ld a, $0e                                     ; $13a4: $3e $0e
	ld [wC0A1], a                                 ; $13a6: $ea $a1 $c0
	ld [wC0F3], a                                 ; $13a9: $ea $f3 $c0
	ld hl, $4121                                  ; $13ac: $21 $21 $41

DrawTitleScreen.loop::
	ld de, wVRAMBuffer                            ; $13af: $11 $ad $c0
	ld c, $0d                                     ; $13b2: $0e $0d
	ld b, $00                                     ; $13b4: $06 $00
	call CopyData                              ; $13b6: $cd $5b $21
	ld a, $ff                                     ; $13b9: $3e $ff
	ld [wVRAMBuffer+13], a                                 ; $13bb: $ea $ba $c0
	push hl                                       ; $13be: $e5
	ld a, [wVRAMPointerLow]                                 ; $13bf: $fa $f8 $c0
	add $20                                       ; $13c2: $c6 $20
	ld [wVRAMPointerLow], a                                 ; $13c4: $ea $f8 $c0
	ld a, [wVRAMPointerHigh]                                 ; $13c7: $fa $f7 $c0
	adc $00                                       ; $13ca: $ce $00
	ld [wVRAMPointerHigh], a                                 ; $13cc: $ea $f7 $c0
	call RenderText                            ; $13cf: $cd $e1 $1b
	pop hl                                        ; $13d2: $e1
	ld a, [wC0A1]                                 ; $13d3: $fa $a1 $c0
	dec a                                         ; $13d6: $3d
	and a                                         ; $13d7: $a7
	 ret z                                        ; $13d8: $c8

	ld [wC0A1], a                                 ; $13d9: $ea $a1 $c0
	jr DrawTitleScreen.loop                       ; $13dc: $18 $d1

Call_000_13de::
	ld a, [wHasWon]                               ; Check if player has beaten the game or not
	and a                                         ; If a = 0, the player hasn't beaten the game yet
	 ret z                                        ; 

	ld a, [wFrameCounter]                         ; Add a delay
	and $0                                        ; Only update every other frame
	 ret nz                                       ; 

	xor a                                         ; $13e9: $af
	ld [wTimerSeconds], a                                 ; $13ea: $ea $f2 $c0
	ld a, [wC0D7]                                 ; $13ed: $fa $d7 $c0
	and a                                         ; $13f0: $a7
	 jr z, jr_000_13ff                            ; $13f1: $28 $0c

	ldh a, [rSCY]                                 ; $13f3: $f0 $42
	and a                                         ; $13f5: $a7
	 jr nz, jr_000_13ff                           ; $13f6: $20 $07

jr_000_13f8::
	ld a, [wTimerSeconds]                                 ; $13f8: $fa $f2 $c0
	cp $03                                        ; $13fb: $fe $03
	jr nz, jr_000_13f8                            ; $13fd: $20 $f9

jr_000_13ff::
	xor a                                         ; $13ff: $af
	ld [wTimerSeconds], a                                 ; $1400: $ea $f2 $c0
	ldh a, [rSCY]                                 ; $1403: $f0 $42
	cp $48                                        ; $1405: $fe $48
	jr nz, jr_000_141d                            ; $1407: $20 $14

	ld a, [wC0D7]                                 ; $1409: $fa $d7 $c0
	and a                                         ; $140c: $a7
	jr nz, jr_000_1425                            ; $140d: $20 $16

jr_000_140f::
	ld a, [wTimerSeconds]                                 ; $140f: $fa $f2 $c0
	cp $03                                        ; $1412: $fe $03
	jr nz, jr_000_140f                            ; $1414: $20 $f9

	ld a, [wC0A2]                                 ; $1416: $fa $a2 $c0
	cp $0c                                        ; $1419: $fe $0c
	jr z, jr_000_148c                             ; $141b: $28 $6f

jr_000_141d::
	ldh a, [rSCY]                                 ; $141d: $f0 $42
	inc a                                         ; $141f: $3c
	ldh [rSCY], a                                 ; $1420: $e0 $42
	cp $90                                        ; $1422: $fe $90
	ret nz                                        ; $1424: $c0

jr_000_1425::
	ld a, [wC0D7]                                 ; $1425: $fa $d7 $c0
	and a                                         ; $1428: $a7
	jr z, jr_000_1444                             ; $1429: $28 $19

	di                                            ; $142b: $f3
	call Call_000_1f34                            ; $142c: $cd $34 $1f
	ld de, $0064                                  ; $142f: $11 $64 $00
	call Call_000_1bc5                            ; $1432: $cd $c5 $1b
	call LCDOff                            ; $1435: $cd $2c $21
	call ClearBGMap                            ; $1438: $cd $4c $21
	ld a, $c3                                     ; $143b: $3e $c3
	ldh [rLCDC], a                                ; $143d: $e0 $40
	ei                                            ; $143f: $fb
	xor a                                         ; $1440: $af
	ld [wC0D7], a                                 ; $1441: $ea $d7 $c0

jr_000_1444::
	ldh [rSCY], a                                 ; $1444: $e0 $42
	ld hl, TextSpacesLong                                  ; $1446: $21 $47 $78
	call CopyTilesToVRAM                            ; $1449: $cd $0a $1f
	ld a, $00                                     ; $144c: $3e $00
	call Call_000_148e                            ; $144e: $cd $8e $14
	ld a, [wC0A2]                                 ; $1451: $fa $a2 $c0
	ld hl, $14aa                                  ; $1454: $21 $aa $14
	call Call_000_0e7c                            ; $1457: $cd $7c $0e
	call Call_000_149f                            ; $145a: $cd $9f $14
	call jr_000_1f0d                              ; $145d: $cd $0d $1f
	ld a, $00                                     ; $1460: $3e $00
	call Call_000_148e                            ; $1462: $cd $8e $14
	ld hl, TextSpacesLong                                  ; $1465: $21 $47 $78
	call CopyTilesToVRAM                            ; $1468: $cd $0a $1f
	ld a, $44                                     ; $146b: $3e $44
	call Call_000_148e                            ; $146d: $cd $8e $14
	ld a, [wC0A2]                                 ; $1470: $fa $a2 $c0
	ld hl, $1563                                  ; $1473: $21 $63 $15
	call Call_000_0e7c                            ; $1476: $cd $7c $0e
	call Call_000_149f                            ; $1479: $cd $9f $14
	call jr_000_1f0d                              ; $147c: $cd $0d $1f
	ld a, $44                                     ; $147f: $3e $44
	call Call_000_148e                            ; $1481: $cd $8e $14
	ld a, [wC0A2]                                 ; $1484: $fa $a2 $c0
	inc a                                         ; $1487: $3c
	ld [wC0A2], a                                 ; $1488: $ea $a2 $c0
	ret                                           ; $148b: $c9


jr_000_148c::
	jr jr_000_148c                                ; $148c: $18 $fe

Call_000_148e::
	ld [wVRAMPointerLow], a                                 ; $148e: $ea $f8 $c0
	ld a, $9a                                     ; $1491: $3e $9a
	ld [wVRAMPointerHigh], a                                 ; $1493: $ea $f7 $c0
	call Jump_000_04a4                            ; $1496: $cd $a4 $04
	call Jump_000_04a4                            ; $1499: $cd $a4 $04
	jp Jump_000_1f4a                              ; $149c: $c3 $4a $1f


Call_000_149f::
	ld a, [hl+]                                   ; $149f: $2a
	ld de, wVRAMBuffer                                  ; $14a0: $11 $ad $c0
	add e                                         ; $14a3: $83
	ld e, a                                       ; $14a4: $5f
	ld a, $00                                     ; $14a5: $3e $00
	adc d                                         ; $14a7: $8a
	ld d, a                                       ; $14a8: $57
	ret                                           ; $14a9: $c9


	jp nz, $d814                                  ; $14aa: $c2 $14 $d8

	inc d                                         ; $14ad: $14
	add sp, $14                                   ; $14ae: $e8 $14
	ld hl, sp+$14                                 ; $14b0: $f8 $14
	dec b                                         ; $14b2: $05
	dec d                                         ; $14b3: $15
	inc c                                         ; $14b4: $0c
	dec d                                         ; $14b5: $15
	ld e, $15                                     ; $14b6: $1e $15
	add hl, hl                                    ; $14b8: $29
	dec d                                         ; $14b9: $15
	inc sp                                        ; $14ba: $33
	dec d                                         ; $14bb: $15
	ld a, $15                                     ; $14bc: $3e $15
	ld d, e                                       ; $14be: $53
	dec d                                         ; $14bf: $15
	ld h, c                                       ; $14c0: $61
	dec d                                         ; $14c1: $15
	nop                                           ; $14c2: $00
	ld a, $41                                     ; $14c3: $3e $41
	jr c, @+$38                                   ; $14c5: $38 $36

	jr c, jr_000_1506                             ; $14c7: $38 $3d

	jr nc, jr_000_1506                            ; $14c9: $30 $3b

	db $d4,$36,$30                                ; $14cb: $d4 $36 $30
	inc a                                         ; $14ce: $3c
	inc [hl]                                      ; $14cf: $34
	db $d4,$33,$34                                ; $14d0: $d4 $33 $34
	ld b, d                                       ; $14d3: $42
	jr c, jr_000_150c                             ; $14d4: $38 $36

	dec a                                         ; $14d6: $3d
	rst $38                                       ; $14d7: $ff
	inc bc                                        ; $14d8: $03
	ccf                                           ; $14d9: $3f
	ld b, c                                       ; $14da: $41
	ld a, $36                                     ; $14db: $3e $36
	ld b, c                                       ; $14dd: $41
	jr nc, jr_000_151c                            ; $14de: $30 $3c

	db $d4,$33,$34                                ; $14e0: $d4 $33 $34
	ld b, d                                       ; $14e3: $42
	jr c, jr_000_151c                             ; $14e4: $38 $36

	dec a                                         ; $14e6: $3d
	rst $38                                       ; $14e7: $ff
	inc bc                                        ; $14e8: $03
	ld [hl], $41                                  ; $14e9: $36 $41
	jr nc, @+$41                                  ; $14eb: $30 $3f

	scf                                           ; $14ed: $37
	jr c, @+$34                                   ; $14ee: $38 $32

	db $d4,$33,$34                                ; $14f0: $d4 $33 $34
	ld b, d                                       ; $14f3: $42
	jr c, @+$38                                   ; $14f4: $38 $36

	dec a                                         ; $14f6: $3d

jr_000_14f7::
	rst $38                                       ; $14f7: $ff
	inc b                                         ; $14f8: $04
	inc a                                         ; $14f9: $3c
	ld b, h                                       ; $14fa: $44
	ld b, d                                       ; $14fb: $42
	jr c, jr_000_1530                             ; $14fc: $38 $32

	db $d4,$32,$37                                ; $14fe: $d4 $32 $37
	jr c, jr_000_1537                             ; $1501: $38 $34

	dec [hl]                                      ; $1503: $35
	rst $38                                       ; $1504: $ff
	rlca                                          ; $1505: $07

jr_000_1506::
	inc a                                         ; $1506: $3c
	ld b, h                                       ; $1507: $44
	ld b, d                                       ; $1508: $42
	jr c, @+$34                                   ; $1509: $38 $32

	rst $38                                       ; $150b: $ff

jr_000_150c::
	db $01,$32,$37                                ; $150c: $01 $32 $37
	jr c, jr_000_1545                             ; $150f: $38 $34

	dec [hl]                                      ; $1511: $35
	call nc, $413f                                ; $1512: $d4 $3f $41
	ld a, $36                                     ; $1515: $3e $36
	ld b, c                                       ; $1517: $41
	jr nc, jr_000_1556                            ; $1518: $30 $3c

	inc a                                         ; $151a: $3c
	inc [hl]                                      ; $151b: $34

jr_000_151c::
	ld b, c                                       ; $151c: $41
	rst $38                                       ; $151d: $ff
	inc b                                         ; $151e: $04
	add hl, bc                                    ; $151f: $09
	inc bc                                        ; $1520: $03
	jr jr_000_14f7                                ; $1521: $18 $d4

	dec bc                                        ; $1523: $0b
	ld d, b                                       ; $1524: $50
	ld de, $2d03                                  ; $1525: $11 $03 $2d
	rst $38                                       ; $1528: $ff
	ld b, $33                                     ; $1529: $06 $33
	jr c, jr_000_156e                             ; $152b: $38 $41

	inc [hl]                                      ; $152d: $34
	ld [hl-], a                                   ; $152e: $32
	ld b, e                                       ; $152f: $43

jr_000_1530::
	ld a, $41                                     ; $1530: $3e $41
	rst $38                                       ; $1532: $ff
	dec b                                         ; $1533: $05
	inc a                                         ; $1534: $3c
	jr nc, jr_000_1571                            ; $1535: $30 $3a

jr_000_1537::
	jr c, jr_000_1576                             ; $1537: $38 $3d

	ld [hl], $d4                                  ; $1539: $36 $d4
	ld sp, $ff48                                  ; $153b: $31 $48 $ff
	ld bc, $413e                                  ; $153e: $01 $3e $41
	jr c, jr_000_1579                             ; $1541: $38 $36

	jr c, jr_000_1582                             ; $1543: $38 $3d

jr_000_1545::
	jr nc, jr_000_1582                            ; $1545: $30 $3b

	db $d4,$3c,$30                                ; $1547: $d4 $3c $30
	ccf                                           ; $154a: $3f
	db $d4,$33,$34                                ; $154b: $d4 $33 $34
	ld b, d                                       ; $154e: $42
	jr c, @+$38                                   ; $154f: $38 $36

	dec a                                         ; $1551: $3d
	rst $38                                       ; $1552: $ff
	inc bc                                        ; $1553: $03
	ccf                                           ; $1554: $3f
	ld b, c                                       ; $1555: $41

jr_000_1556::
	inc [hl]                                      ; $1556: $34
	ld b, d                                       ; $1557: $42
	inc [hl]                                      ; $1558: $34
	dec a                                         ; $1559: $3d
	ld b, e                                       ; $155a: $43
	inc [hl]                                      ; $155b: $34
	inc sp                                        ; $155c: $33
	call nc, $4831                                ; $155d: $d4 $31 $48
	rst $38                                       ; $1560: $ff
	nop                                           ; $1561: $00
	rst $38                                       ; $1562: $ff
	ld a, e                                       ; $1563: $7b
	dec d                                         ; $1564: $15
	adc b                                         ; $1565: $88
	dec d                                         ; $1566: $15
	sub e                                         ; $1567: $93
	dec d                                         ; $1568: $15
	sbc [hl]                                      ; $1569: $9e
	dec d                                         ; $156a: $15
	xor d                                         ; $156b: $aa
	dec d                                         ; $156c: $15
	or l                                          ; $156d: $b5

jr_000_156e::
	dec d                                         ; $156e: $15
	pop bc                                        ; $156f: $c1
	dec d                                         ; $1570: $15

jr_000_1571::
	jp z, $d615                                   ; $1571: $ca $15 $d6

	dec d                                         ; $1574: $15
	db $e4                                        ; $1575: $e4

jr_000_1576::
	dec d                                         ; $1576: $15
	push af                                       ; $1577: $f5
	dec d                                         ; $1578: $15

jr_000_1579::
	rlca                                          ; $1579: $07
	ld d, $01                                     ; $157a: $16 $01
	ld bc, $191e                                  ; $157c: $01 $1e $19
	ld l, $28                                     ; $157f: $2e $28
	dec bc                                        ; $1581: $0b

jr_000_1582::
	call nc, Call_000_271a                        ; $1582: $d4 $1a $27
	add hl, hl                                    ; $1585: $29
	ld b, $ff                                     ; $1586: $06 $ff
	ld [bc], a                                    ; $1588: $02
	ld bc, $0218                                  ; $1589: $01 $18 $02
	inc bc                                        ; $158c: $03
	call nc, Call_000_0b13                        ; $158d: $d4 $13 $0b
	daa                                           ; $1590: $27
	ld [bc], a                                    ; $1591: $02
	rst $38                                       ; $1592: $ff
	ld [bc], a                                    ; $1593: $02
	jr jr_000_159b                                ; $1594: $18 $05

	ld l, $1f                                     ; $1596: $2e $1f
	call nc, Call_000_050f                        ; $1598: $d4 $0f $05

jr_000_159b::
	add hl, hl                                    ; $159b: $29
	ld b, $ff                                     ; $159c: $06 $ff
	nop                                           ; $159e: $00
	inc de                                        ; $159f: $13
	rra                                           ; $15a0: $1f
	ld a, [bc]                                    ; $15a1: $0a
	ld l, $2b                                     ; $15a2: $2e $2b
	call nc, Call_000_2d08                        ; $15a4: $d4 $08 $2d
	ld bc, $ff10                                  ; $15a7: $01 $10 $ff
	ld bc, Call_000_050f                          ; $15aa: $01 $0f $05
	add hl, de                                    ; $15ad: $19
	dec bc                                        ; $15ae: $0b
	db $d4,$09,$2e                                ; $15af: $d4 $09 $2e
	daa                                           ; $15b2: $27
	ld [bc], a                                    ; $15b3: $02
	rst $38                                       ; $15b4: $ff
	nop                                           ; $15b5: $00
	dec b                                         ; $15b6: $05
	dec hl                                        ; $15b7: $2b
	inc hl                                        ; $15b8: $23
	dec de                                        ; $15b9: $1b
	ld l, $06                                     ; $15ba: $2e $06
	call nc, Call_000_050f                        ; $15bc: $d4 $0f $05
	dec bc                                        ; $15bf: $0b
	rst $38                                       ; $15c0: $ff
	ld bc, $092a                                  ; $15c1: $01 $2a $09
	jr z, jr_000_15e4                             ; $15c4: $28 $1e

	call nc, $0a10                                ; $15c6: $d4 $10 $0a
	rst $38                                       ; $15c9: $ff
	ld bc, $2400                                  ; $15ca: $01 $00 $24
	ld [hl+], a                                   ; $15cd: $22
	inc de                                        ; $15ce: $13
	call nc, $0c05                                ; $15cf: $d4 $05 $0c
	ld l, $1a                                     ; $15d2: $2e $1a
	add hl, bc                                    ; $15d4: $09
	rst $38                                       ; $15d5: $ff
	nop                                           ; $15d6: $00
	nop                                           ; $15d7: $00
	inc de                                        ; $15d8: $13
	inc h                                         ; $15d9: $24
	inc bc                                        ; $15da: $03
	db $d4,$13,$2e                                ; $15db: $d4 $13 $2e
	ld d, c                                       ; $15de: $51
	ld d, e                                       ; $15df: $53
	dec de                                        ; $15e0: $1b
	ld l, $25                                     ; $15e1: $2e $25
	rst $38                                       ; $15e3: $ff

jr_000_15e4::
	nop                                           ; $15e4: $00
	ld b, e                                       ; $15e5: $43
	scf                                           ; $15e6: $37
	jr c, jr_000_1626                             ; $15e7: $38 $3d

	ld a, [hl-]                                   ; $15e9: $3a
	jr c, @+$3f                                   ; $15ea: $38 $3d

	ld [hl], $d4                                  ; $15ec: $36 $d4
	ld b, c                                       ; $15ee: $41
	jr nc, jr_000_1622                            ; $15ef: $30 $31

	ld sp, $4338                                  ; $15f1: $31 $38 $43
	rst $38                                       ; $15f4: $ff
	nop                                           ; $15f5: $00
	ccf                                           ; $15f6: $3f
	ld a, $3d                                     ; $15f7: $3e $3d
	ld c, b                                       ; $15f9: $48
	call nc, $3032                                ; $15fa: $d4 $32 $30
	dec a                                         ; $15fd: $3d
	ld c, b                                       ; $15fe: $48
	ld a, $3d                                     ; $15ff: $3e $3d
	db $d4,$38,$3d                                ; $1601: $d4 $38 $3d

Jump_000_1604::
	ld [hl-], a                                   ; $1604: $32
	ld c, [hl]                                    ; $1605: $4e
	rst $38                                       ; $1606: $ff
	nop                                           ; $1607: $00
	ld b, d                                       ; $1608: $42
	inc [hl]                                      ; $1609: $34
	inc [hl]                                      ; $160a: $34
	call nc, $3e48                                ; $160b: $d4 $48 $3e
	ld b, h                                       ; $160e: $44
	db $d4,$30,$36                                ; $160f: $d4 $30 $36
	jr nc, jr_000_164c                            ; $1612: $30 $38

	dec a                                         ; $1614: $3d
	rst $38                                       ; $1615: $ff

Call_000_1616::
	ld a, [wC0CF]                                 ; $1616: $fa $cf $c0
	and a                                         ; $1619: $a7
	jr nz, jr_000_165c                            ; $161a: $20 $40

	ld a, [wC2ED]                                 ; $161c: $fa $ed $c2
	and a                                         ; $161f: $a7
	jr nz, jr_000_169c                            ; $1620: $20 $7a

jr_000_1622::
	ldh a, [hKeys]                                  ; $1622: $f0 $8b
	and $01                                       ; $1624: $e6 $01

jr_000_1626::
	jr nz, jr_000_163f                            ; $1626: $20 $17

	ldh a, [hKeys]                                  ; $1628: $f0 $8b
	and $f8                                       ; $162a: $e6 $f8
	ret z                                         ; $162c: $c8

jr_000_162d::
	ld a, [wC2ED]                                 ; $162d: $fa $ed $c2
	and a                                         ; $1630: $a7
	jr z, jr_000_165f                             ; $1631: $28 $2c

	ld a, $04                                     ; $1633: $3e $04
	ld [wGameplayType], a                         ; $1635: $ea $ec $c2
	xor a                                         ; $1638: $af
	ld [wC2ED], a                                 ; $1639: $ea $ed $c2
	jp Jump_000_0198                              ; $163c: $c3 $98 $01


jr_000_163f::
	ldh a, [hKeys]                                  ; $163f: $f0 $8b
	or $81                                        ; $1641: $f6 $81
	ldh [hKeys], a                                  ; $1643: $e0 $8b
	ld a, [wC2DA]                                 ; $1645: $fa $da $c2
	ld b, a                                       ; $1648: $47
	ld a, [wC2D9]                                 ; $1649: $fa $d9 $c2

jr_000_164c::
	ld c, a                                       ; $164c: $4f
	or b                                          ; $164d: $b0
	jr z, jr_000_162d                             ; $164e: $28 $dd

	dec bc                                        ; $1650: $0b
	ld a, c                                       ; $1651: $79
	ld [wC2D9], a                                 ; $1652: $ea $d9 $c2
	ld a, b                                       ; $1655: $78
	ld [wC2DA], a                                 ; $1656: $ea $da $c2
	call Call_000_0f60                            ; $1659: $cd $60 $0f

jr_000_165c::
	jp Jump_000_0340                              ; $165c: $c3 $40 $03


jr_000_165f::
	xor a                                         ; $165f: $af
	ld [wGameplayType], a                         ; $1660: $ea $ec $c2
	ld [wKeyState], a                                 ; $1663: $ea $fd $c0
	ld a, [wC2D9]                                 ; $1666: $fa $d9 $c2
	ld b, a                                       ; $1669: $47
	ld a, [wC2D7]                                 ; $166a: $fa $d7 $c2
	sub b                                         ; $166d: $90
	ld [wC2D7], a                                 ; $166e: $ea $d7 $c2
	ld [wC2D9], a                                 ; $1671: $ea $d9 $c2
	ld c, a                                       ; $1674: $4f
	ld a, [wC2DA]                                 ; $1675: $fa $da $c2
	ld b, a                                       ; $1678: $47
	ld a, [wC2D8]                                 ; $1679: $fa $d8 $c2
	sbc b                                         ; $167c: $98
	ld [wC2D8], a                                 ; $167d: $ea $d8 $c2
	ld [wC2DA], a                                 ; $1680: $ea $da $c2
	or c                                          ; $1683: $b1
	ld [wC0FF], a                                 ; $1684: $ea $ff $c0
	ld b, $03                                     ; $1687: $06 $03
	ld hl, wC104                                  ; $1689: $21 $04 $c1
	ld de, wC101                                  ; $168c: $11 $01 $c1

jr_000_168f::
	ld a, [hl+]                                   ; $168f: $2a
	ld [de], a                                    ; $1690: $12
	inc de                                        ; $1691: $13
	dec b                                         ; $1692: $05
	jr nz, jr_000_168f                            ; $1693: $20 $fa

	ld a, [wC108]                                 ; $1695: $fa $08 $c1
	ld [wC107], a                                 ; $1698: $ea $07 $c1
	ret                                           ; $169b: $c9


jr_000_169c::
	ldh a, [hKeys]                                  ; $169c: $f0 $8b
	and $08                                       ; $169e: $e6 $08
	jr z, jr_000_163f                             ; $16a0: $28 $9d

	ld a, $10                                     ; $16a2: $3e $10
	ld [wGameplayType], a                         ; $16a4: $ea $ec $c2
	ld a, $08                                     ; $16a7: $3e $08
	ld [wC384], a                                 ; $16a9: $ea $84 $c3
	jp Jump_000_0198                              ; $16ac: $c3 $98 $01


Call_000_16af::
	ldh a, [hKeys]                                  ; $16af: $f0 $8b
	and $cb                                       ; $16b1: $e6 $cb
	ret z                                         ; $16b3: $c8

	ld a, [wC2EE]                                 ; $16b4: $fa $ee $c2
	and a                                         ; $16b7: $a7
	jr z, jr_000_16bf                             ; $16b8: $28 $05

	call Call_000_176a                            ; $16ba: $cd $6a $17
	jr jr_000_16c2                                ; $16bd: $18 $03

jr_000_16bf::
	call Call_000_172e                            ; $16bf: $cd $2e $17

jr_000_16c2::
	ld [wC2EF], a                                 ; $16c2: $ea $ef $c2
	call Call_000_1295                            ; $16c5: $cd $95 $12
	call Call_000_1295                            ; $16c8: $cd $95 $12
	call Call_000_1295                            ; $16cb: $cd $95 $12
	ldh a, [hKeys]                                  ; $16ce: $f0 $8b
	and $0b                                       ; $16d0: $e6 $0b
	jp z, jr_000_1726                             ; $16d2: $ca $26 $17

	ld a, [wC2EE]                                 ; $16d5: $fa $ee $c2
	and a                                         ; $16d8: $a7
	jr nz, jr_000_170f                            ; $16d9: $20 $34

	ldh a, [hKeys]                                  ; $16db: $f0 $8b
	and $02                                       ; $16dd: $e6 $02
	jr nz, jr_000_1708                            ; $16df: $20 $27

jr_000_16e1::
	ld a, [wC2EE]                                 ; $16e1: $fa $ee $c2
	and a                                         ; $16e4: $a7
	jr z, jr_000_16f8                             ; $16e5: $28 $11

	call Call_000_1198                            ; $16e7: $cd $98 $11
	and a                                         ; $16ea: $a7
	jp nz, Jump_000_05c5                          ; $16eb: $c2 $c5 $05

	call Call_000_0627                            ; $16ee: $cd $27 $06
	ld a, [wC0F4]                                 ; $16f1: $fa $f4 $c0
	and a                                         ; $16f4: $a7
	jp z, Jump_000_05c5                           ; $16f5: $ca $c5 $05

jr_000_16f8::
	xor a                                         ; $16f8: $af
	ld [wGameplayType], a                         ; $16f9: $ea $ec $c2
	call Call_000_0cbd                            ; $16fc: $cd $bd $0c
	ret nc                                        ; $16ff: $d0

	ld a, $01                                     ; $1700: $3e $01
	ld [wC0EE], a                                 ; $1702: $ea $ee $c0
	jp Jump_000_0198                              ; $1705: $c3 $98 $01


jr_000_1708::
	ld a, $20                                     ; $1708: $3e $20
	ld [wGameplayType], a                         ; $170a: $ea $ec $c2
	jr jr_000_1726                                ; $170d: $18 $17

jr_000_170f::
	ldh a, [hKeys]                                  ; $170f: $f0 $8b
	and $08                                       ; $1711: $e6 $08
	jr nz, jr_000_16e1                            ; $1713: $20 $cc

	ld a, $70                                     ; $1715: $3e $70
	ld [wGameplayType], a                         ; $1717: $ea $ec $c2
	ld a, $08                                     ; $171a: $3e $08
	ld [wC384], a                                 ; $171c: $ea $84 $c3
	call Call_000_12c4                            ; $171f: $cd $c4 $12
	ld [wTileSize], a                                 ; $1722: $ea $d1 $c0
	ret                                           ; $1725: $c9


jr_000_1726::
	ld a, $08                                     ; $1726: $3e $08
	ld [wC384], a                                 ; $1728: $ea $84 $c3
	jp Jump_000_0198                              ; $172b: $c3 $98 $01


Call_000_172e::
	ldh a, [hKeys]                                  ; $172e: $f0 $8b
	and $c0                                       ; $1730: $e6 $c0
	cp $40                                        ; $1732: $fe $40
	jr z, jr_000_1753                             ; $1734: $28 $1d

	cp $80                                        ; $1736: $fe $80
	jp nz, Jump_000_178f                          ; $1738: $c2 $8f $17

	ld a, [wC2EF]                                 ; $173b: $fa $ef $c2
	dec a                                         ; $173e: $3d
	cp $ff                                        ; $173f: $fe $ff
	jr z, jr_000_1745                             ; $1741: $28 $02

	jr jr_000_175c                                ; $1743: $18 $17

jr_000_1745::
	ld a, $09                                     ; $1745: $3e $09
	push af                                       ; $1747: $f5
	ld a, [wC120]                                 ; $1748: $fa $20 $c1
	cp $0a                                        ; $174b: $fe $0a
	jr nz, jr_000_1768                            ; $174d: $20 $19

	pop af                                        ; $174f: $f1
	ld a, $07                                     ; $1750: $3e $07
	ret                                           ; $1752: $c9


jr_000_1753::
	ld a, [wC2EF]                                 ; $1753: $fa $ef $c2
	inc a                                         ; $1756: $3c
	cp $0a                                        ; $1757: $fe $0a
	jr nz, jr_000_175c                            ; $1759: $20 $01

	xor a                                         ; $175b: $af

jr_000_175c::
	push af                                       ; $175c: $f5
	ld a, [wC120]                                 ; $175d: $fa $20 $c1
	cp $0a                                        ; $1760: $fe $0a
	jr nz, jr_000_1768                            ; $1762: $20 $04

	pop af                                        ; $1764: $f1
	and $07                                       ; $1765: $e6 $07
	ret                                           ; $1767: $c9


jr_000_1768::
	pop af                                        ; $1768: $f1
	ret                                           ; $1769: $c9


Call_000_176a::
	ldh a, [hKeys]                                  ; $176a: $f0 $8b
	and $c0                                       ; $176c: $e6 $c0
	cp $40                                        ; $176e: $fe $40
	jr z, jr_000_1785                             ; $1770: $28 $13

	cp $80                                        ; $1772: $fe $80
	jp nz, Jump_000_178f                          ; $1774: $c2 $8f $17

	ld a, [wC2EF]                                 ; $1777: $fa $ef $c2
	dec a                                         ; $177a: $3d
	cp $ff                                        ; $177b: $fe $ff
	jr z, jr_000_1781                             ; $177d: $28 $02

	jr jr_000_178e                                ; $177f: $18 $0d

jr_000_1781::
	ld a, $02                                     ; $1781: $3e $02
	jr jr_000_178e                                ; $1783: $18 $09

jr_000_1785::
	ld a, [wC2EF]                                 ; $1785: $fa $ef $c2
	inc a                                         ; $1788: $3c
	cp $03                                        ; $1789: $fe $03
	jr nz, jr_000_178e                            ; $178b: $20 $01

	xor a                                         ; $178d: $af

jr_000_178e::
	ret                                           ; $178e: $c9


Jump_000_178f::
	ld a, [wC2EF]                                 ; $178f: $fa $ef $c2
	ret                                           ; $1792: $c9


Call_000_1793::
	ld b, $03                                     ; $1793: $06 $03
	ld a, $08                                     ; $1795: $3e $08
	ld hl, wC389                                  ; $1797: $21 $89 $c3

jr_000_179a::
	ld [hl+], a                                   ; $179a: $22
	dec b                                         ; $179b: $05
	jr nz, jr_000_179a                            ; $179c: $20 $fc

	ld b, $03                                     ; $179e: $06 $03
	ld a, $14                                     ; $17a0: $3e $14
	ld hl, wC2E7                                  ; $17a2: $21 $e7 $c2

jr_000_17a5::
	ld [hl+], a                                   ; $17a5: $22
	dec b                                         ; $17a6: $05
	jr nz, jr_000_17a5                            ; $17a7: $20 $fc

	ld b, $03                                     ; $17a9: $06 $03
	ld a, $12                                     ; $17ab: $3e $12
	ld hl, wC2E4                                  ; $17ad: $21 $e4 $c2

jr_000_17b0::
	ld [hl+], a                                   ; $17b0: $22
	dec b                                         ; $17b1: $05
	jr nz, jr_000_17b0                            ; $17b2: $20 $fc

	ld a, $14                                     ; $17b4: $3e $14
	ld [wC0CE], a                                 ; $17b6: $ea $ce $c0
	ld a, $12                                     ; $17b9: $3e $12
	ld [wC0CD], a                                 ; $17bb: $ea $cd $c0
	ret                                           ; $17be: $c9


Call_000_17bf::
	ld a, [wC12B]                                 ; $17bf: $fa $2b $c1
	and a                                         ; $17c2: $a7
	jr nz, jr_000_17e8                            ; $17c3: $20 $23

	ld hl, $98e3                                  ; $17c5: $21 $e3 $98
	ld a, h                                       ; $17c8: $7c
	ld [wC124], a                                 ; $17c9: $ea $24 $c1
	ld a, l                                       ; $17cc: $7d
	ld [wC125], a                                 ; $17cd: $ea $25 $c1
	call Jump_000_1a92                            ; $17d0: $cd $92 $1a
	ldh a, [rLCDC]                                ; $17d3: $f0 $40
	and $fd                                       ; $17d5: $e6 $fd
	ldh [rLCDC], a                                ; $17d7: $e0 $40
	xor a                                         ; $17d9: $af
	ld [wC0D9], a                                 ; $17da: $ea $d9 $c0
	ld [wC0FE], a                                 ; $17dd: $ea $fe $c0
	ld [wC12D], a                                 ; $17e0: $ea $2d $c1
	ld a, $01                                     ; $17e3: $3e $01
	ld [wC12B], a                                 ; $17e5: $ea $2b $c1

jr_000_17e8::
	ld a, [wC124]                                 ; $17e8: $fa $24 $c1
	ld [wC126], a                                 ; $17eb: $ea $26 $c1
	ld a, [wC125]                                 ; $17ee: $fa $25 $c1
	ld [wC127], a                                 ; $17f1: $ea $27 $c1
	ld a, [wKeyState]                                 ; $17f4: $fa $fd $c0
	and a                                         ; $17f7: $a7
	jp nz, jr_000_1a64                            ; $17f8: $c2 $64 $1a

	ld a, [wC128]                                 ; $17fb: $fa $28 $c1
	and a                                         ; $17fe: $a7
	jp z, Jump_000_180b                           ; $17ff: $ca $0b $18

	ldh a, [hKeys]                                  ; $1802: $f0 $8b
	and a                                         ; $1804: $a7
	jp z, jr_000_1a64                             ; $1805: $ca $64 $1a

	jp Jump_000_19c6                              ; $1808: $c3 $c6 $19


Jump_000_180b::
	ldh a, [hKeys]                                  ; $180b: $f0 $8b
	and $10                                       ; $180d: $e6 $10
	jr nz, jr_000_183c                            ; $180f: $20 $2b

	ldh a, [hKeys]                                  ; $1811: $f0 $8b
	and $20                                       ; $1813: $e6 $20
	jr nz, jr_000_1864                            ; $1815: $20 $4d

	ldh a, [hKeys]                                  ; $1817: $f0 $8b
	and $40                                       ; $1819: $e6 $40
	jr nz, jr_000_188e                            ; $181b: $20 $71

	ldh a, [hKeys]                                  ; $181d: $f0 $8b
	and $80                                       ; $181f: $e6 $80
	jp nz, Jump_000_18a9                          ; $1821: $c2 $a9 $18

	ldh a, [hKeys]                                  ; $1824: $f0 $8b
	and $01                                       ; $1826: $e6 $01
	jp nz, Jump_000_18cf                          ; $1828: $c2 $cf $18

	ldh a, [hKeys]                                  ; $182b: $f0 $8b
	and $02                                       ; $182d: $e6 $02
	jp nz, Jump_000_1957                          ; $182f: $c2 $57 $19

	ldh a, [hKeys]                                  ; $1832: $f0 $8b
	and $04                                       ; $1834: $e6 $04
	jp nz, Jump_000_1a3c                          ; $1836: $c2 $3c $1a

	jp jr_000_1a64                                ; $1839: $c3 $64 $1a


jr_000_183c::
	ld a, [wC129]                                 ; $183c: $fa $29 $c1
	cp $04                                        ; $183f: $fe $04
	jr nz, jr_000_184e                            ; $1841: $20 $0b

	ld a, [wC12A]                                 ; $1843: $fa $2a $c1
	inc a                                         ; $1846: $3c
	cp $09                                        ; $1847: $fe $09
	jr nz, jr_000_1859                            ; $1849: $20 $0e

	xor a                                         ; $184b: $af
	jr jr_000_185f                                ; $184c: $18 $11

jr_000_184e::
	ld a, [wC12A]                                 ; $184e: $fa $2a $c1
	inc a                                         ; $1851: $3c
	cp $0d                                        ; $1852: $fe $0d
	jr nz, jr_000_1859                            ; $1854: $20 $03

	xor a                                         ; $1856: $af
	jr jr_000_185f                                ; $1857: $18 $06

jr_000_1859::
	cp $05                                        ; $1859: $fe $05
	jr nz, jr_000_185f                            ; $185b: $20 $02

	ld a, $08                                     ; $185d: $3e $08

jr_000_185f::
	ld [wC12A], a                                 ; $185f: $ea $2a $c1
	jr Jump_000_18c9                              ; $1862: $18 $65

jr_000_1864::
	ld a, [wC129]                                 ; $1864: $fa $29 $c1
	cp $04                                        ; $1867: $fe $04
	jr nz, jr_000_1877                            ; $1869: $20 $0c

	ld a, [wC12A]                                 ; $186b: $fa $2a $c1
	dec a                                         ; $186e: $3d
	cp $ff                                        ; $186f: $fe $ff
	jr nz, jr_000_1883                            ; $1871: $20 $10

	ld a, $08                                     ; $1873: $3e $08
	jr jr_000_1889                                ; $1875: $18 $12

jr_000_1877::
	ld a, [wC12A]                                 ; $1877: $fa $2a $c1
	dec a                                         ; $187a: $3d
	cp $ff                                        ; $187b: $fe $ff
	jr nz, jr_000_1883                            ; $187d: $20 $04

	ld a, $0c                                     ; $187f: $3e $0c
	jr jr_000_1889                                ; $1881: $18 $06

jr_000_1883::
	cp $07                                        ; $1883: $fe $07
	jr nz, jr_000_1889                            ; $1885: $20 $02

	ld a, $04                                     ; $1887: $3e $04

jr_000_1889::
	ld [wC12A], a                                 ; $1889: $ea $2a $c1
	jr Jump_000_18c9                              ; $188c: $18 $3b

jr_000_188e::
	ld a, [wC129]                                 ; $188e: $fa $29 $c1
	dec a                                         ; $1891: $3d
	cp $ff                                        ; $1892: $fe $ff
	jr nz, jr_000_18a4                            ; $1894: $20 $0e

	ld a, [wC12A]                                 ; $1896: $fa $2a $c1
	cp $08                                        ; $1899: $fe $08
	jr c, jr_000_18a2                             ; $189b: $38 $05

	ld a, $08                                     ; $189d: $3e $08
	ld [wC12A], a                                 ; $189f: $ea $2a $c1

jr_000_18a2::
	ld a, $04                                     ; $18a2: $3e $04

jr_000_18a4::
	ld [wC129], a                                 ; $18a4: $ea $29 $c1
	jr Jump_000_18c9                              ; $18a7: $18 $20

Jump_000_18a9::
	ld a, [wC129]                                 ; $18a9: $fa $29 $c1
	inc a                                         ; $18ac: $3c
	cp $04                                        ; $18ad: $fe $04
	jr nz, jr_000_18c1                            ; $18af: $20 $10

	ld a, [wC12A]                                 ; $18b1: $fa $2a $c1
	cp $08                                        ; $18b4: $fe $08
	jr c, jr_000_18bd                             ; $18b6: $38 $05

	ld a, $08                                     ; $18b8: $3e $08
	ld [wC12A], a                                 ; $18ba: $ea $2a $c1

jr_000_18bd::
	ld a, $04                                     ; $18bd: $3e $04
	jr jr_000_18c6                                ; $18bf: $18 $05

jr_000_18c1::
	cp $05                                        ; $18c1: $fe $05
	jr nz, jr_000_18c6                            ; $18c3: $20 $01

	xor a                                         ; $18c5: $af

jr_000_18c6::
	ld [wC129], a                                 ; $18c6: $ea $29 $c1

Jump_000_18c9::
	call Call_000_1a6a                            ; $18c9: $cd $6a $1a
	jp jr_000_1a64                                ; $18cc: $c3 $64 $1a


Jump_000_18cf::
	ld a, [wC12A]                                 ; $18cf: $fa $2a $c1
	cp $08                                        ; $18d2: $fe $08
	jr nz, jr_000_1905                            ; $18d4: $20 $2f

	ld a, [wC129]                                 ; $18d6: $fa $29 $c1
	cp $04                                        ; $18d9: $fe $04
	jr nz, jr_000_1905                            ; $18db: $20 $28

	call Call_000_1acc                            ; $18dd: $cd $cc $1a
	ld a, [wC128]                                 ; $18e0: $fa $28 $c1
	and a                                         ; $18e3: $a7
	jp z, Jump_000_19fb                           ; $18e4: $ca $fb $19

	ld a, $0c                                     ; $18e7: $3e $0c
	ld [wC384], a                                 ; $18e9: $ea $84 $c3
	ld hl, $7837                                  ; $18ec: $21 $37 $78
	call CopyTilesToVRAM                            ; $18ef: $cd $0a $1f
	ld a, $ff                                     ; $18f2: $3e $ff
	ld [wGameplayType], a                         ; $18f4: $ea $ec $c2
	ld hl, $98a2                                  ; $18f7: $21 $a2 $98
	call Call_000_1ef9                                    ; $18fa: $cd $f9 $1e
	ld a, $05                                     ; $18fd: $3e $05
	ld [wGameplayType], a                         ; $18ff: $ea $ec $c2
	jp jr_000_1a64                                ; $1902: $c3 $64 $1a


jr_000_1905::
	ld a, [wC12C]                                 ; $1905: $fa $2c $c1
	cp $04                                        ; $1908: $fe $04
	jp z, jr_000_1a64                             ; $190a: $ca $64 $1a

	inc a                                         ; $190d: $3c
	ld [wC12C], a                                 ; $190e: $ea $2c $c1
	xor a                                         ; $1911: $af
	ld [wC384], a                                 ; $1912: $ea $84 $c3

jr_000_1915::
	ld a, [wC386]                                 ; $1915: $fa $86 $c3
	or a                                          ; $1918: $b7
	jr nz, jr_000_1915                            ; $1919: $20 $fa

	ld a, $08                                     ; $191b: $3e $08
	ld [wC384], a                                 ; $191d: $ea $84 $c3

jr_000_1920::
	ld hl, $9864                                  ; $1920: $21 $64 $98
	ld a, [wC12C]                                 ; $1923: $fa $2c $c1
	ld e, a                                       ; $1926: $5f
	ld d, $00                                     ; $1927: $16 $00
	add hl, de                                    ; $1929: $19
	ld a, h                                       ; $192a: $7c
	ldh [$8f], a                                  ; $192b: $e0 $8f
	ld a, l                                       ; $192d: $7d
	ldh [$90], a                                  ; $192e: $e0 $90
	ld a, $08                                     ; $1930: $3e $08
	ld [wTileSize], a                             ; $1932: $ea $d1 $c0
	ld a, [wC124]                                 ; $1935: $fa $24 $c1
	ld h, a                                       ; $1938: $67
	ld a, [wC125]                                 ; $1939: $fa $25 $c1
	ld l, a                                       ; $193c: $6f
	ld de, $0020                                  ; $193d: $11 $20 $00
	add hl, de                                    ; $1940: $19
	ld a, [hl]                                    ; $1941: $7e
	ld [wC0AC], a                                 ; $1942: $ea $ac $c0
	call Jump_000_04a4                            ; $1945: $cd $a4 $04
	call Jump_000_04a4                            ; $1948: $cd $a4 $04
	call Jump_000_04a4                            ; $194b: $cd $a4 $04
	ld a, [wC0AC]                                 ; $194e: $fa $ac $c0
	cp $ff                                        ; $1951: $fe $ff
	jr nz, jr_000_198a                            ; $1953: $20 $35

	jr jr_000_1920                                ; $1955: $18 $c9

Jump_000_1957::
	ld a, [wC12C]                                 ; $1957: $fa $2c $c1
	and a                                         ; $195a: $a7
	jp z, jr_000_1a64                             ; $195b: $ca $64 $1a

jr_000_195e::
	ld hl, $9864                                  ; $195e: $21 $64 $98
	ld a, [wC12C]                                 ; $1961: $fa $2c $c1
	ld e, a                                       ; $1964: $5f
	ld d, $00                                     ; $1965: $16 $00
	add hl, de                                    ; $1967: $19
	ld a, h                                       ; $1968: $7c
	ldh [$8f], a                                  ; $1969: $e0 $8f
	ld a, l                                       ; $196b: $7d
	ldh [$90], a                                  ; $196c: $e0 $90
	ld a, $08                                     ; $196e: $3e $08
	ld [wTileSize], a                                 ; $1970: $ea $d1 $c0
	ld a, $d4                                     ; $1973: $3e $d4
	ld [wC0AC], a                                 ; $1975: $ea $ac $c0
	call Jump_000_04a4                            ; $1978: $cd $a4 $04
	call Jump_000_04a4                            ; $197b: $cd $a4 $04
	call Jump_000_04a4                            ; $197e: $cd $a4 $04

jr_000_1981::
	ld a, [wC0AC]                                 ; $1981: $fa $ac $c0
	cp $ff                                        ; $1984: $fe $ff
	jr nz, jr_000_198a                            ; $1986: $20 $02

	jr jr_000_195e                                ; $1988: $18 $d4

jr_000_198a::
	ld a, [wC12C]                                 ; $198a: $fa $2c $c1
	dec a                                         ; $198d: $3d
	ld hl, $19be                                  ; $198e: $21 $be $19
	call Call_000_0e7c                            ; $1991: $cd $7c $0e
	ld a, [wC0AC]                                 ; $1994: $fa $ac $c0
	ld [hl], a                                    ; $1997: $77
	ldh a, [hKeys]                                  ; $1998: $f0 $8b
	and $02                                       ; $199a: $e6 $02
	jp nz, Jump_000_19b4                          ; $199c: $c2 $b4 $19

	ld a, [wC12C]                                 ; $199f: $fa $2c $c1
	cp $04                                        ; $19a2: $fe $04
	jp nz, jr_000_1a64                            ; $19a4: $c2 $64 $1a

	ld a, $08                                     ; $19a7: $3e $08
	ld [wC12A], a                                 ; $19a9: $ea $2a $c1
	ld a, $04                                     ; $19ac: $3e $04
	ld [wC129], a                                 ; $19ae: $ea $29 $c1
	jp Jump_000_18c9                              ; $19b1: $c3 $c9 $18


Jump_000_19b4::
	ld a, [wC12C]                                 ; $19b4: $fa $2c $c1
	dec a                                         ; $19b7: $3d
	ld [wC12C], a                                 ; $19b8: $ea $2c $c1
	jp jr_000_1a64                                ; $19bb: $c3 $64 $1a


	jr nz, jr_000_1981                            ; $19be: $20 $c1

	ld hl, $22c1                                  ; $19c0: $21 $c1 $22
	pop bc                                        ; $19c3: $c1
	inc hl                                        ; $19c4: $23
	pop bc                                        ; $19c5: $c1

Jump_000_19c6::
	ld hl, TextSpacesShort                                  ; $19c6: $21 $50 $78
	call CopyTilesToVRAM                            ; $19c9: $cd $0a $1f
	ld a, $ff                                     ; $19cc: $3e $ff
	ld [wGameplayType], a                         ; $19ce: $ea $ec $c2
	ld [de], a                                    ; $19d1: $12
	ld hl, $9865                                  ; $19d2: $21 $65 $98
	call Call_000_1ef9                                    ; $19d5: $cd $f9 $1e
	ld hl, TextSpacesMed                                  ; $19d8: $21 $4c $78
	call CopyTilesToVRAM                            ; $19db: $cd $0a $1f
	ld hl, $98a2                                  ; $19de: $21 $a2 $98
	call Call_000_1ef9                                    ; $19e1: $cd $f9 $1e
	ld a, $05                                     ; $19e4: $3e $05
	ld [wGameplayType], a                         ; $19e6: $ea $ec $c2
	xor a                                         ; $19e9: $af
	ld [wC12A], a                                 ; $19ea: $ea $2a $c1
	ld [wC129], a                                 ; $19ed: $ea $29 $c1
	ld [wC12B], a                                 ; $19f0: $ea $2b $c1
	ld [wC128], a                                 ; $19f3: $ea $28 $c1
	ld [wC12C], a                                 ; $19f6: $ea $2c $c1
	jr jr_000_1a64                                ; $19f9: $18 $69

Jump_000_19fb::
	ldh a, [rLCDC]                                ; $19fb: $f0 $40
	or $02                                        ; $19fd: $f6 $02
	ldh [rLCDC], a                                ; $19ff: $e0 $40
	ld a, [wC12D]                                 ; $1a01: $fa $2d $c1
	ld hl, $1b50                                  ; $1a04: $21 $50 $1b
	call Call_000_0e7c                            ; $1a07: $cd $7c $0e
	jp hl                                         ; $1a0a: $e9


	xor a                                         ; $1a0b: $af
	ld [wGameplayType], a                         ; $1a0c: $ea $ec $c2
	ld a, $01                                     ; $1a0f: $3e $01
	ld [wC0FE], a                                 ; $1a11: $ea $fe $c0
	call Call_000_0cbd                            ; $1a14: $cd $bd $0c
	jp nc, jr_000_1a64                            ; $1a17: $d2 $64 $1a

	ld a, $03                                     ; $1a1a: $3e $03
	ld [wGameplayType], a                         ; $1a1c: $ea $ec $c2
	jr jr_000_1a64                                ; $1a1f: $18 $43

	xor a                                         ; $1a21: $af
	ld [wC120], a                                 ; $1a22: $ea $20 $c1
	ld a, $06                                     ; $1a25: $3e $06
	ld [wGameplayType], a                         ; $1a27: $ea $ec $c2
	ld [wC0FE], a                                 ; $1a2a: $ea $fe $c0
	ld [wC12D], a                                 ; $1a2d: $ea $2d $c1
	jr jr_000_1a64                                ; $1a30: $18 $32

	ld a, $08                                     ; $1a32: $3e $08
	ld [wGameplayType], a                         ; $1a34: $ea $ec $c2
	ld [wC0FE], a                                 ; $1a37: $ea $fe $c0
	jr jr_000_1a64                                ; $1a3a: $18 $28

Jump_000_1a3c::
	ld a, [wC12E]                                 ; $1a3c: $fa $2e $c1
	ld [wC120], a                                 ; $1a3f: $ea $20 $c1
	ld a, [wC12F]                                 ; $1a42: $fa $2f $c1
	ld [wC121], a                                 ; $1a45: $ea $21 $c1
	ld a, [wC130]                                 ; $1a48: $fa $30 $c1
	ld [wC122], a                                 ; $1a4b: $ea $22 $c1
	ld a, [wC131]                                 ; $1a4e: $fa $31 $c1
	ld [wC123], a                                 ; $1a51: $ea $23 $c1
	ldh a, [rLCDC]                                ; $1a54: $f0 $40
	or $02                                        ; $1a56: $f6 $02
	ldh [rLCDC], a                                ; $1a58: $e0 $40
	ld a, $20                                     ; $1a5a: $3e $20
	ld [wGameplayType], a                         ; $1a5c: $ea $ec $c2
	ld a, $01                                     ; $1a5f: $3e $01
	ld [wC0FE], a                                 ; $1a61: $ea $fe $c0

jr_000_1a64::
	ldh a, [hKeys]                                  ; $1a64: $f0 $8b
	ld [wKeyState], a                                 ; $1a66: $ea $fd $c0
	ret                                           ; $1a69: $c9


Call_000_1a6a::
	ld de, $98e3                                  ; $1a6a: $11 $e3 $98
	ld a, [wC12A]                                 ; $1a6d: $fa $2a $c1
	add e                                         ; $1a70: $83
	ld e, a                                       ; $1a71: $5f
	ld a, d                                       ; $1a72: $7a
	adc $00                                       ; $1a73: $ce $00
	ld d, a                                       ; $1a75: $57
	ld bc, $0040                                  ; $1a76: $01 $40 $00
	ld hl, $0000                                  ; $1a79: $21 $00 $00
	ld a, [wC129]                                 ; $1a7c: $fa $29 $c1
	and a                                         ; $1a7f: $a7
	jr z, jr_000_1a86                             ; $1a80: $28 $04

jr_000_1a82::
	add hl, bc                                    ; $1a82: $09
	dec a                                         ; $1a83: $3d
	jr nz, jr_000_1a82                            ; $1a84: $20 $fc

jr_000_1a86::
	add hl, de                                    ; $1a86: $19
	ld a, h                                       ; $1a87: $7c
	ld [wC124], a                                 ; $1a88: $ea $24 $c1
	ld a, l                                       ; $1a8b: $7d
	ld [wC125], a                                 ; $1a8c: $ea $25 $c1
	jp Jump_000_1a92                              ; $1a8f: $c3 $92 $1a


Jump_000_1a92::
	ld a, [wC126]                                 ; $1a92: $fa $26 $c1
	ldh [$8f], a                                  ; $1a95: $e0 $8f
	ld a, [wC127]                                 ; $1a97: $fa $27 $c1
	ldh [$90], a                                  ; $1a9a: $e0 $90
	ld a, $08                                     ; $1a9c: $3e $08
	ld [wTileSize], a                                 ; $1a9e: $ea $d1 $c0
	ld a, $d4                                     ; $1aa1: $3e $d4
	ld [wC0AC], a                                 ; $1aa3: $ea $ac $c0
	call Jump_000_04a4                            ; $1aa6: $cd $a4 $04
	call Jump_000_04a4                            ; $1aa9: $cd $a4 $04
	call Jump_000_04a4                            ; $1aac: $cd $a4 $04
	ld a, [wC124]                                 ; $1aaf: $fa $24 $c1
	ldh [$8f], a                                  ; $1ab2: $e0 $8f
	ld a, [wC125]                                 ; $1ab4: $fa $25 $c1
	ldh [$90], a                                  ; $1ab7: $e0 $90
	ld a, $08                                     ; $1ab9: $3e $08
	ld [wTileSize], a                                 ; $1abb: $ea $d1 $c0
	ld a, $4d                                     ; $1abe: $3e $4d
	ld [wC0AC], a                                 ; $1ac0: $ea $ac $c0
	call Jump_000_04a4                            ; $1ac3: $cd $a4 $04
	call Jump_000_04a4                            ; $1ac6: $cd $a4 $04
	jp Jump_000_04a4                              ; $1ac9: $c3 $a4 $04


Call_000_1acc::
	ld a, [wC120]                                 ; $1acc: $fa $20 $c1
	cp $0b                                        ; $1acf: $fe $0b
	jr nc, jr_000_1af0                            ; $1ad1: $30 $1d

	ld a, [wC121]                                 ; $1ad3: $fa $21 $c1
	cp $20                                        ; $1ad6: $fe $20
	jr nc, jr_000_1af0                            ; $1ad8: $30 $16

	ld a, [wC122]                                 ; $1ada: $fa $22 $c1
	cp $20                                        ; $1add: $fe $20
	jr nc, jr_000_1af0                            ; $1adf: $30 $0f

	call Call_000_1b28                            ; $1ae1: $cd $28 $1b
	ld a, [wC123]                                 ; $1ae4: $fa $23 $c1
	cp b                                          ; $1ae7: $b8
	jr nz, jr_000_1af0                            ; $1ae8: $20 $06

	xor a                                         ; $1aea: $af
	ld [wC128], a                                 ; $1aeb: $ea $28 $c1
	jr jr_000_1b27                                ; $1aee: $18 $37

jr_000_1af0::
	ld a, [wC12D]                                 ; $1af0: $fa $2d $c1
	inc a                                         ; $1af3: $3c
	ld [wC12D], a                                 ; $1af4: $ea $2d $c1
	ld hl, $1b42                                  ; $1af7: $21 $42 $1b
	call Call_000_0e7c                            ; $1afa: $cd $7c $0e
	ld a, [wC120]                                 ; $1afd: $fa $20 $c1
	cp [hl]                                       ; $1b00: $be
	jr nz, jr_000_1b18                            ; $1b01: $20 $15

	inc hl                                        ; $1b03: $23
	ld a, [wC121]                                 ; $1b04: $fa $21 $c1
	cp [hl]                                       ; $1b07: $be
	jr nz, jr_000_1b18                            ; $1b08: $20 $0e

	inc hl                                        ; $1b0a: $23
	ld a, [wC122]                                 ; $1b0b: $fa $22 $c1
	cp [hl]                                       ; $1b0e: $be
	jr nz, jr_000_1b18                            ; $1b0f: $20 $07

	inc hl                                        ; $1b11: $23
	ld a, [wC123]                                 ; $1b12: $fa $23 $c1
	cp [hl]                                       ; $1b15: $be
	jr z, jr_000_1b27                             ; $1b16: $28 $0f

jr_000_1b18::
	ld a, [wC12D]                                 ; $1b18: $fa $2d $c1
	cp $02                                        ; $1b1b: $fe $02
	jr nz, jr_000_1af0                            ; $1b1d: $20 $d1

	xor a                                         ; $1b1f: $af
	ld [wC12D], a                                 ; $1b20: $ea $2d $c1
	inc a                                         ; $1b23: $3c
	ld [wC128], a                                 ; $1b24: $ea $28 $c1

jr_000_1b27::
	ret                                           ; $1b27: $c9


Call_000_1b28::
	ld bc, $0000                                  ; $1b28: $01 $00 $00
	ld hl, $0000                                  ; $1b2b: $21 $00 $00
	ld a, [wC120]                                 ; $1b2e: $fa $20 $c1
	ld c, a                                       ; $1b31: $4f
	add hl, bc                                    ; $1b32: $09
	ld a, [wC121]                                 ; $1b33: $fa $21 $c1
	ld c, a                                       ; $1b36: $4f
	add hl, bc                                    ; $1b37: $09
	ld a, [wC122]                                 ; $1b38: $fa $22 $c1
	ld c, a                                       ; $1b3b: $4f
	add hl, bc                                    ; $1b3c: $09
	ld a, l                                       ; $1b3d: $7d
	and $1f                                       ; $1b3e: $e6 $1f
	ld b, a                                       ; $1b40: $47
	ret                                           ; $1b41: $c9


	ld b, d                                       ; $1b42: $42
	dec de                                        ; $1b43: $1b
	ld c, b                                       ; $1b44: $48
	dec de                                        ; $1b45: $1b
	ld c, h                                       ; $1b46: $4c
	dec de                                        ; $1b47: $1b
	dec b                                         ; $1b48: $05
	dec hl                                        ; $1b49: $2b
	inc hl                                        ; $1b4a: $23
	dec de                                        ; $1b4b: $1b
	inc de                                        ; $1b4c: $13
	rra                                           ; $1b4d: $1f
	ld a, [bc]                                    ; $1b4e: $0a
	dec hl                                        ; $1b4f: $2b
	dec bc                                        ; $1b50: $0b
	ld a, [de]                                    ; $1b51: $1a
	ld hl, $321a                                  ; $1b52: $21 $1a $32
	ld a, [de]                                    ; $1b55: $1a

Call_000_1b56::
	ld a, [wGameplayType]                         ; $1b56: $fa $ec $c2
	cp $05                                        ; $1b59: $fe $05
	ret nz                                        ; $1b5b: $c0

	ld hl, $9903                                  ; $1b5c: $21 $03 $99
	xor a                                         ; $1b5f: $af
	ld c, $05                                     ; $1b60: $0e $05

jr_000_1b62::
	call Call_000_1bbd                            ; $1b62: $cd $bd $1b
	ld de, $0003                                  ; $1b65: $11 $03 $00
	add hl, de                                    ; $1b68: $19
	dec c                                         ; $1b69: $0d
	jr z, jr_000_1b75                             ; $1b6a: $28 $09

	call Call_000_1bbd                            ; $1b6c: $cd $bd $1b
	ld de, $0033                                  ; $1b6f: $11 $33 $00
	add hl, de                                    ; $1b72: $19
	jr jr_000_1b62                                ; $1b73: $18 $ed

jr_000_1b75::
	ld a, $34                                     ; $1b75: $3e $34
	ld [hl+], a                                   ; $1b77: $22
	ld a, $3d                                     ; $1b78: $3e $3d
	ld [hl+], a                                   ; $1b7a: $22
	ld a, $33                                     ; $1b7b: $3e $33
	ld [hl], a                                    ; $1b7d: $77
	ld hl, $9885                                  ; $1b7e: $21 $85 $98
	ld a, $4f                                     ; $1b81: $3e $4f
	ld b, $04                                     ; $1b83: $06 $04

jr_000_1b85::
	ld [hl+], a                                   ; $1b85: $22
	dec b                                         ; $1b86: $05
	jr nz, jr_000_1b85                            ; $1b87: $20 $fc

	ld de, Text0d                                  ; $1b89: $11 $25 $78
	ld hl, $9821                                  ; $1b8c: $21 $21 $98
	call Jump_000_1bec                            ; $1b8f: $cd $ec $1b
	ld a, $05                                     ; $1b92: $3e $05
	ld [wGameplayType], a                         ; $1b94: $ea $ec $c2
	ld a, [wC120]                                 ; $1b97: $fa $20 $c1
	ld [wC12E], a                                 ; $1b9a: $ea $2e $c1
	ld a, [wC121]                                 ; $1b9d: $fa $21 $c1
	ld [wC12F], a                                 ; $1ba0: $ea $2f $c1
	ld a, [wC122]                                 ; $1ba3: $fa $22 $c1
	ld [wC130], a                                 ; $1ba6: $ea $30 $c1
	ld a, [wC123]                                 ; $1ba9: $fa $23 $c1
	ld [wC131], a                                 ; $1bac: $ea $31 $c1
	xor a                                         ; $1baf: $af
	ld [wC12A], a                                 ; $1bb0: $ea $2a $c1
	ld [wC129], a                                 ; $1bb3: $ea $29 $c1
	ld [wC12B], a                                 ; $1bb6: $ea $2b $c1
	ld [wC12C], a                                 ; $1bb9: $ea $2c $c1
	ret                                           ; $1bbc: $c9


Call_000_1bbd::
	ld b, $05                                     ; $1bbd: $06 $05

jr_000_1bbf::
	ld [hl+], a                                   ; $1bbf: $22
	inc a                                         ; $1bc0: $3c
	dec b                                         ; $1bc1: $05
	jr nz, jr_000_1bbf                            ; $1bc2: $20 $fb

	ret                                           ; $1bc4: $c9


Call_000_1bc5::
	ld a, d                                       ; $1bc5: $7a
	add $07                                       ; $1bc6: $c6 $07
	ldh [rWX], a                                  ; $1bc8: $e0 $4b
	ld a, e                                       ; $1bca: $7b
	ldh [rWY], a                                  ; $1bcb: $e0 $4a
	ldh a, [rLCDC]                                ; $1bcd: $f0 $40
	or $60                                        ; $1bcf: $f6 $60
	ldh [rLCDC], a                                ; $1bd1: $e0 $40
	ret                                           ; $1bd3: $c9


Call_000_1bd4::
	ldh a, [rLCDC]                                ; $1bd4: $f0 $40
	and $df                                       ; $1bd6: $e6 $df
	ldh [rLCDC], a                                ; $1bd8: $e0 $40
	ret                                           ; $1bda: $c9


Call_000_1bdb::
	ld a, [wGameplayType]                         ; $1bdb: $fa $ec $c2
	and $f0                                       ; $1bde: $e6 $f0
	ret z                                         ; $1be0: $c8

RenderText::
	ld de, wVRAMBuffer                            ; $1be1: $11 $ad $c0
	ld a, [wVRAMPointerHigh]                      ; $1be4: $fa $f7 $c0
	ld h, a                                       ; $1be7: $67
	ld a, [wVRAMPointerLow]                       ; $1be8: $fa $f8 $c0
	ld l, a                                       ; $1beb: $6f

Jump_000_1bec::
	ld a, [de]                                    ; $1bec: $1a
	cp $ff                                        ; $1bed: $fe $ff
	 jr z, .continue                              ; $1bef: $28 $08

.loop
	ld [hl], a                                    ; $1bf1: $77
	cp [hl]                                       ; $1bf2: $be
	jr nz, .loop                                  ; $1bf3: $20 $fc

	inc hl                                        ; $1bf5: $23
	inc de                                        ; $1bf6: $13
	jr Jump_000_1bec                              ; $1bf7: $18 $f3

.continue
	xor a                                         ; $1bf9: $af
	ld [wWaitForVBlank], a                                 ; $1bfa: $ea $f6 $c0
	ret                                           ; $1bfd: $c9


Call_000_1bfe::
	ld a, [wC0FA]                                 ; $1bfe: $fa $fa $c0
	and a                                         ; $1c01: $a7
	jp nz, Jump_000_1cff                          ; $1c02: $c2 $ff $1c

	ld a, [wGameplayType]                         ; $1c05: $fa $ec $c2
	cp $60                                        ; $1c08: $fe $60
	jr nz, jr_000_1c1e                            ; $1c0a: $20 $12

	ld a, [wC2EF]                                 ; $1c0c: $fa $ef $c2
	ld e, a                                       ; $1c0f: $5f
	ld hl, wC389                                  ; $1c10: $21 $89 $c3
	call Jump_000_216e                            ; $1c13: $cd $6e $21
	cp $10                                        ; $1c16: $fe $10
	jr nz, jr_000_1c1e                            ; $1c18: $20 $04

	ld a, $01                                     ; $1c1a: $3e $01
	jr jr_000_1c1f                                ; $1c1c: $18 $01

jr_000_1c1e::
	xor a                                         ; $1c1e: $af

jr_000_1c1f::
	ld [wC0FC], a                                 ; $1c1f: $ea $fc $c0
	xor a                                         ; $1c22: $af
	ld [wC0FE], a                                 ; $1c23: $ea $fe $c0
	ld [wC0F9], a                                 ; $1c26: $ea $f9 $c0
	ld [wC0EE], a                                 ; $1c29: $ea $ee $c0
	ld a, [wTileSize]                                 ; $1c2c: $fa $d1 $c0
	ld [wC0FB], a                                 ; $1c2f: $ea $fb $c0
	ldh a, [rLCDC]                                ; $1c32: $f0 $40
	and $fd                                       ; $1c34: $e6 $fd
	ldh [rLCDC], a                                ; $1c36: $e0 $40
	ld a, $05                                     ; $1c38: $3e $05
	ld [wC132], a                                 ; $1c3a: $ea $32 $c1

jr_000_1c3d::
	ld hl, TextSpacesShort                                  ; $1c3d: $21 $50 $78
	call CopyTilesToVRAM                            ; $1c40: $cd $0a $1f
	ld a, [wC132]                                 ; $1c43: $fa $32 $c1
	ld hl, $1c92                                  ; $1c46: $21 $92 $1c
	call Call_000_0e7c                            ; $1c49: $cd $7c $0e
	call Call_000_1ef9                                    ; $1c4c: $cd $f9 $1e
	ld a, [wC132]                                 ; $1c4f: $fa $32 $c1
	dec a                                         ; $1c52: $3d
	ld [wC132], a                                 ; $1c53: $ea $32 $c1
	jr nz, jr_000_1c3d                            ; $1c56: $20 $e5

Jump_000_1c58::
	ld a, [wC0F9]                                 ; $1c58: $fa $f9 $c0
	cp $03                                        ; $1c5b: $fe $03
	jr z, jr_000_1c9c                             ; $1c5d: $28 $3d

	ld hl, TextSpacesShort                        ; $1c5f: $21 $50 $78
	call CopyTilesToVRAM                          ; $1c62: $cd $0a $1f
	ld hl, TextTable                              ; $1c65: $21 $45 $77
	ld a, [wGameplayType]                         ; $1c68: $fa $ec $c2
	and $f0                                       ; $1c6b: $e6 $f0
	swap a                                        ; $1c6d: $cb $37
	dec a                                         ; $1c6f: $3d
	call Call_000_0e7c                            ; $1c70: $cd $7c $0e
	ld a, [wC0F9]                                 ; $1c73: $fa $f9 $c0
	call Call_000_0e7c                            ; $1c76: $cd $7c $0e
	call CopyTilesToVRAM                            ; $1c79: $cd $0a $1f
	ld a, [wC0F9]                                 ; $1c7c: $fa $f9 $c0
	ld hl, $1c92                                  ; $1c7f: $21 $92 $1c
	call Call_000_0e7c                            ; $1c82: $cd $7c $0e
	call Call_000_1ef9                                    ; $1c85: $cd $f9 $1e
	ld a, [wC0F9]                                 ; $1c88: $fa $f9 $c0
	inc a                                         ; $1c8b: $3c
	ld [wC0F9], a                                 ; $1c8c: $ea $f9 $c0
	jp Jump_000_1c58                              ; $1c8f: $c3 $58 $1c


	db $42,$9C,$A3,$9C,$E3,$9C,$02,$9D,$22,$9D	  ; $1c92

jr_000_1c9c::
	ld a, [wC2EE]                                 ; $1c9c: $fa $ee $c2
	and a                                         ; $1c9f: $a7
	jp nz, Jump_000_1ce0                          ; $1ca0: $c2 $e0 $1c

	ld a, [wGameplayType]                         ; $1ca3: $fa $ec $c2
	cp $40                                        ; $1ca6: $fe $40
	jr z, jr_000_1cae                             ; $1ca8: $28 $04

	cp $30                                        ; $1caa: $fe $30
	jr nz, jr_000_1cf9                            ; $1cac: $20 $4b

jr_000_1cae::
	ld hl, $785c                                  ; $1cae: $21 $5c $78
	call CopyTilesToVRAM                            ; $1cb1: $cd $0a $1f
	ld hl, $9d21                                  ; $1cb4: $21 $21 $9d
	call Call_000_1ef9                                    ; $1cb7: $cd $f9 $1e
	ld a, [wC120]                                 ; $1cba: $fa $20 $c1
	ld [wVRAMBuffer], a                                 ; $1cbd: $ea $ad $c0
	ld a, [wC121]                                 ; $1cc0: $fa $21 $c1
	ld [wVRAMBuffer+1], a                                 ; $1cc3: $ea $ae $c0
	ld a, [wC122]                                 ; $1cc6: $fa $22 $c1
	ld [wVRAMBuffer+2], a                                 ; $1cc9: $ea $af $c0
	call Call_000_1b28                            ; $1ccc: $cd $28 $1b
	ld a, b                                       ; $1ccf: $78
	ld [wVRAMBuffer+3], a                                 ; $1cd0: $ea $b0 $c0
	ld a, $ff                                     ; $1cd3: $3e $ff
	ld [wVRAMBuffer+4], a                                 ; $1cd5: $ea $b1 $c0
	ld hl, $9d29                                  ; $1cd8: $21 $29 $9d
	call Call_000_1ef9                                    ; $1cdb: $cd $f9 $1e
	jr jr_000_1cf9                                ; $1cde: $18 $19

Jump_000_1ce0::
	ld a, [wGameplayType]                         ; $1ce0: $fa $ec $c2
	cp $60                                        ; $1ce3: $fe $60
	jr nz, jr_000_1cf9                            ; $1ce5: $20 $12

	ld hl, TextSpacesShort                                  ; $1ce7: $21 $50 $78
	call CopyTilesToVRAM                            ; $1cea: $cd $0a $1f
	ld hl, $7822                                  ; $1ced: $21 $22 $78
	call CopyTilesToVRAM                            ; $1cf0: $cd $0a $1f
	ld hl, $9d03                                  ; $1cf3: $21 $03 $9d
	call Call_000_1ef9                                    ; $1cf6: $cd $f9 $1e

jr_000_1cf9::
	ld de, $2838                                  ; $1cf9: $11 $38 $28
	call Call_000_1bc5                            ; $1cfc: $cd $c5 $1b

Jump_000_1cff::
	ld a, $01                                     ; $1cff: $3e $01
	ld [wC0FA], a                                 ; $1d01: $ea $fa $c0
	ld a, [wKeyState]                                 ; $1d04: $fa $fd $c0
	and a                                         ; $1d07: $a7
	jr nz, jr_000_1d5a                            ; $1d08: $20 $50

	ldh a, [hKeys]                                  ; $1d0a: $f0 $8b
	and $04                                       ; $1d0c: $e6 $04
	jr z, jr_000_1d23                             ; $1d0e: $28 $13

	ld a, [wC0FC]                                 ; $1d10: $fa $fc $c0
	and a                                         ; $1d13: $a7
	jr nz, jr_000_1d1d                            ; $1d14: $20 $07

	ld a, $01                                     ; $1d16: $3e $01
	ld [wC0FC], a                                 ; $1d18: $ea $fc $c0
	jr jr_000_1d5a                                ; $1d1b: $18 $3d

jr_000_1d1d::
	xor a                                         ; $1d1d: $af
	ld [wC0FC], a                                 ; $1d1e: $ea $fc $c0
	jr jr_000_1d5a                                ; $1d21: $18 $37

jr_000_1d23::
	ldh a, [hKeys]                                  ; $1d23: $f0 $8b
	and $40                                       ; $1d25: $e6 $40
	jr z, jr_000_1d2f                             ; $1d27: $28 $06

	xor a                                         ; $1d29: $af
	ld [wC0FC], a                                 ; $1d2a: $ea $fc $c0
	jr jr_000_1d5a                                ; $1d2d: $18 $2b

jr_000_1d2f::
	ldh a, [hKeys]                                  ; $1d2f: $f0 $8b
	and $80                                       ; $1d31: $e6 $80
	jr z, jr_000_1d3c                             ; $1d33: $28 $07

	ld a, $01                                     ; $1d35: $3e $01
	ld [wC0FC], a                                 ; $1d37: $ea $fc $c0
	jr jr_000_1d5a                                ; $1d3a: $18 $1e

jr_000_1d3c::
	ldh a, [hKeys]                                  ; $1d3c: $f0 $8b
	and $09                                       ; $1d3e: $e6 $09
	jr nz, jr_000_1d84                            ; $1d40: $20 $42

	ld a, [wGameplayType]                         ; $1d42: $fa $ec $c2
	cp $10                                        ; $1d45: $fe $10
	jr z, jr_000_1d5a                             ; $1d47: $28 $11

	ldh a, [hKeys]                                  ; $1d49: $f0 $8b
	and $02                                       ; $1d4b: $e6 $02
	jr z, jr_000_1d5a                             ; $1d4d: $28 $0b

	ld a, $10                                     ; $1d4f: $3e $10
	ld [wGameplayType], a                         ; $1d51: $ea $ec $c2
	ld [wC0FE], a                                 ; $1d54: $ea $fe $c0
	jp Jump_000_1d98                              ; $1d57: $c3 $98 $1d


jr_000_1d5a::
	ld a, [wC0FC]                                 ; $1d5a: $fa $fc $c0
	and a                                         ; $1d5d: $a7
	jr nz, jr_000_1d72                            ; $1d5e: $20 $12

	ld a, $d4                                     ; $1d60: $3e $d4
	ld hl, $9ce2                                  ; $1d62: $21 $e2 $9c
	call Call_000_1f23                            ; $1d65: $cd $23 $1f
	ld a, $4c                                     ; $1d68: $3e $4c
	ld hl, $9ca2                                  ; $1d6a: $21 $a2 $9c
	call Call_000_1f23                            ; $1d6d: $cd $23 $1f
	jr jr_000_1db0                                ; $1d70: $18 $3e

jr_000_1d72::
	ld a, $d4                                     ; $1d72: $3e $d4
	ld hl, $9ca2                                  ; $1d74: $21 $a2 $9c
	call Call_000_1f23                            ; $1d77: $cd $23 $1f
	ld a, $4c                                     ; $1d7a: $3e $4c
	ld hl, $9ce2                                  ; $1d7c: $21 $e2 $9c
	call Call_000_1f23                            ; $1d7f: $cd $23 $1f
	jr jr_000_1db0                                ; $1d82: $18 $2c

jr_000_1d84::
	ld a, [wC0FB]                                 ; $1d84: $fa $fb $c0
	ld [wTileSize], a                                 ; $1d87: $ea $d1 $c0
	ld a, [wGameplayType]                         ; $1d8a: $fa $ec $c2
	and $f0                                       ; $1d8d: $e6 $f0
	swap a                                        ; $1d8f: $cb $37
	ld hl, $1ee9                                  ; $1d91: $21 $e9 $1e
	call Call_000_0e7c                            ; $1d94: $cd $7c $0e
	jp hl                                         ; $1d97: $e9


Jump_000_1d98::
	call Call_000_1bd4                            ; $1d98: $cd $d4 $1b
	ldh a, [rLCDC]                                ; $1d9b: $f0 $40
	or $02                                        ; $1d9d: $f6 $02
	ldh [rLCDC], a                                ; $1d9f: $e0 $40
	xor a                                         ; $1da1: $af
	ld [wC0F9], a                                 ; $1da2: $ea $f9 $c0
	ld [wC0FA], a                                 ; $1da5: $ea $fa $c0
	ld [wTimerSeconds], a                                 ; $1da8: $ea $f2 $c0
	ld a, $08                                     ; $1dab: $3e $08
	ld [wC384], a                                 ; $1dad: $ea $84 $c3

jr_000_1db0::
	ldh a, [hKeys]                                  ; $1db0: $f0 $8b
	ld [wKeyState], a                                 ; $1db2: $ea $fd $c0
	ret                                           ; $1db5: $c9

	ld a, [wC0FC]                                 ; $1db6: $fa $fc $c0
	and a                                         ; $1db9: $a7
	ld [wC2EE], a                                 ; $1dba: $ea $ee $c2
	jr nz, jr_000_1dc6                            ; $1dbd: $20 $07

	ld a, $20                                     ; $1dbf: $3e $20
	ld [wGameplayType], a                         ; $1dc1: $ea $ec $c2
	jr jr_000_1dcb                                ; $1dc4: $18 $05

jr_000_1dc6::
	ld a, $70                                     ; $1dc6: $3e $70
	ld [wGameplayType], a                         ; $1dc8: $ea $ec $c2

jr_000_1dcb::
	ld [wC0FE], a                                 ; $1dcb: $ea $fe $c0
	xor a                                         ; $1dce: $af
	ld [wC0FF], a                                 ; $1dcf: $ea $ff $c0
	ld [wC2D9], a                                 ; $1dd2: $ea $d9 $c2
	ld [wC2DA], a                                 ; $1dd5: $ea $da $c2
	ld [wC2D7], a                                 ; $1dd8: $ea $d7 $c2
	ld [wC2D8], a                                 ; $1ddb: $ea $d8 $c2
	ld [wC2EF], a                                 ; $1dde: $ea $ef $c2
	ld [wC2ED], a                                 ; $1de1: $ea $ed $c2
	jp Jump_000_1d98                              ; $1de4: $c3 $98 $1d


	ld a, [wC0FC]                                 ; $1de7: $fa $fc $c0
	and a                                         ; $1dea: $a7
	jr nz, jr_000_1dff                            ; $1deb: $20 $12

	ld a, [wGameplaySubtype]                      ; $1ded: $fa $f0 $c2
	ld [wGameplayType], a                         ; $1df0: $ea $ec $c2
	call Call_000_0cbd                            ; $1df3: $cd $bd $0c
	jr nc, jr_000_1e04                            ; $1df6: $30 $0c

	ld a, $03                                     ; $1df8: $3e $03
	ld [wGameplayType], a                         ; $1dfa: $ea $ec $c2
	jr jr_000_1e04                                ; $1dfd: $18 $05

jr_000_1dff::
	ld a, $05                                     ; $1dff: $3e $05
	ld [wGameplayType], a                         ; $1e01: $ea $ec $c2

jr_000_1e04::
	xor a                                         ; $1e04: $af
	ld [wC0F3], a                                 ; $1e05: $ea $f3 $c0
	ld [wC0FF], a                                 ; $1e08: $ea $ff $c0
	inc a                                         ; $1e0b: $3c
	ld [wC0FE], a                                 ; $1e0c: $ea $fe $c0
	jp Jump_000_1d98                              ; $1e0f: $c3 $98 $1d


	ld a, [wC0FC]                                 ; $1e12: $fa $fc $c0
	and a                                         ; $1e15: $a7
	jr nz, jr_000_1e85                            ; $1e16: $20 $6d

	ld [wC100], a                                 ; $1e18: $ea $00 $c1
	inc a                                         ; $1e1b: $3c
	ld [wGameplayType], a                         ; $1e1c: $ea $ec $c2
	ld [wC0FE], a                                 ; $1e1f: $ea $fe $c0
	ld [wC0EE], a                                 ; $1e22: $ea $ee $c0
	jp Jump_000_1d98                              ; $1e25: $c3 $98 $1d


	ld a, [wC0FC]                                 ; $1e28: $fa $fc $c0
	and a                                         ; $1e2b: $a7
	jr nz, jr_000_1e85                            ; $1e2c: $20 $57

	ld [wGameplayType], a                         ; $1e2e: $ea $ec $c2
	ld a, [wC0E9]                                 ; $1e31: $fa $e9 $c0
	and a                                         ; $1e34: $a7
	jr nz, jr_000_1e58                            ; $1e35: $20 $21

	ld a, [wC120]                                 ; $1e37: $fa $20 $c1
	cp $0a                                        ; $1e3a: $fe $0a
	jr z, jr_000_1e4b                             ; $1e3c: $28 $0d

	ld a, [wC2EF]                                 ; $1e3e: $fa $ef $c2
	inc a                                         ; $1e41: $3c
	cp $0a                                        ; $1e42: $fe $0a
	jr z, jr_000_1e58                             ; $1e44: $28 $12

	ld [wC2EF], a                                 ; $1e46: $ea $ef $c2
	jr jr_000_1e5c                                ; $1e49: $18 $11

jr_000_1e4b::
	ld a, [wC2EF]                                 ; $1e4b: $fa $ef $c2
	inc a                                         ; $1e4e: $3c
	cp $08                                        ; $1e4f: $fe $08
	jr z, jr_000_1e58                             ; $1e51: $28 $05

	ld [wC2EF], a                                 ; $1e53: $ea $ef $c2
	jr jr_000_1e5c                                ; $1e56: $18 $04

jr_000_1e58::
	xor a                                         ; $1e58: $af
	ld [wC2EF], a                                 ; $1e59: $ea $ef $c2

jr_000_1e5c::
	xor a                                         ; $1e5c: $af
	ld [wC0FF], a                                 ; $1e5d: $ea $ff $c0
	ld [wC2D9], a                                 ; $1e60: $ea $d9 $c2
	ld [wC2DA], a                                 ; $1e63: $ea $da $c2
	ld [wC2D7], a                                 ; $1e66: $ea $d7 $c2
	ld [wC2D8], a                                 ; $1e69: $ea $d8 $c2
	ld [wC0E9], a                                 ; $1e6c: $ea $e9 $c0
	ld [wC0EE], a                                 ; $1e6f: $ea $ee $c0
	ld a, $01                                     ; $1e72: $3e $01
	ld [wC0FE], a                                 ; $1e74: $ea $fe $c0
	call Call_000_0cbd                            ; $1e77: $cd $bd $0c
	jp nc, Jump_000_1d98                          ; $1e7a: $d2 $98 $1d

	ld a, $03                                     ; $1e7d: $3e $03
	ld [wGameplayType], a                         ; $1e7f: $ea $ec $c2
	jp Jump_000_1d98                              ; $1e82: $c3 $98 $1d


jr_000_1e85::
	ld a, $03                                     ; $1e85: $3e $03
	ld [wGameplayType], a                         ; $1e87: $ea $ec $c2
	jr jr_000_1e5c                                ; $1e8a: $18 $d0

	ld a, [wC0FC]                                 ; $1e8c: $fa $fc $c0
	and a                                         ; $1e8f: $a7
	jr nz, jr_000_1e99                            ; $1e90: $20 $07

	ld a, $70                                     ; $1e92: $3e $70
	ld [wGameplayType], a                         ; $1e94: $ea $ec $c2
	jr jr_000_1ea1                                ; $1e97: $18 $08

jr_000_1e99::
	ld a, $10                                     ; $1e99: $3e $10
	ld [wGameplayType], a                         ; $1e9b: $ea $ec $c2
	ld [wC0FE], a                                 ; $1e9e: $ea $fe $c0

jr_000_1ea1::
	jp Jump_000_1d98                              ; $1ea1: $c3 $98 $1d


	ld a, [wC0FC]                                 ; $1ea4: $fa $fc $c0
	and a                                         ; $1ea7: $a7
	jr nz, jr_000_1eb1                            ; $1ea8: $20 $07

	ld a, $08                                     ; $1eaa: $3e $08
	ld [wTileSize], a                                 ; $1eac: $ea $d1 $c0
	jr jr_000_1eb6                                ; $1eaf: $18 $05

jr_000_1eb1::
	ld a, $10                                     ; $1eb1: $3e $10
	ld [wTileSize], a                                 ; $1eb3: $ea $d1 $c0

jr_000_1eb6::
	ld a, $02                                     ; $1eb6: $3e $02
	ld [wGameplayType], a                         ; $1eb8: $ea $ec $c2
	ld [wC0FE], a                                 ; $1ebb: $ea $fe $c0
	jp Jump_000_1d98                              ; $1ebe: $c3 $98 $1d


	ld a, [wC0FC]                                 ; $1ec1: $fa $fc $c0
	and a                                         ; $1ec4: $a7
	jr nz, jr_000_1ece                            ; $1ec5: $20 $07

	ld a, $60                                     ; $1ec7: $3e $60
	ld [wGameplayType], a                         ; $1ec9: $ea $ec $c2
	jr jr_000_1ed6                                ; $1ecc: $18 $08

jr_000_1ece::
	ld a, $03                                     ; $1ece: $3e $03
	ld [wGameplayType], a                         ; $1ed0: $ea $ec $c2
	ld [wC0FE], a                                 ; $1ed3: $ea $fe $c0

jr_000_1ed6::
	xor a                                         ; $1ed6: $af
	ld [wC0FF], a                                 ; $1ed7: $ea $ff $c0
	ld [wC2D9], a                                 ; $1eda: $ea $d9 $c2
	ld [wC2DA], a                                 ; $1edd: $ea $da $c2
	ld [wC2D7], a                                 ; $1ee0: $ea $d7 $c2
	ld [wC2D8], a                                 ; $1ee3: $ea $d8 $c2
	jp Jump_000_1d98                              ; $1ee6: $c3 $98 $1d
	

	db $E9,$1E,$B6,$1D,$E7,$1D,$12,$1E			  ; $1ee9: $e9
	db $28,$1E,$8C,$1E,$A4,$1E,$C1,$1E 
	
Call_000_1ef9::
	ld a, h										  ; $1ef9: $7c
	ld [wVRAMPointerHigh], a                                 ; $1efa: $ea $f7 $c0
	ld a, l                                       ; $1efd: $7d
	ld [wVRAMPointerLow], a                                 ; $1efe: $ea $f8 $c0
	call CopyTextToBuffer                            ; $1f01: $cd $17 $1f
	ld a, $ff                                     ; $1f04: $3e $ff
	ld [wVRAMBuffer], a                                 ; $1f06: $ea $ad $c0
	ret                                           ; $1f09: $c9


CopyTilesToVRAM::
	ld de, wVRAMBuffer                                  ; $1f0a: $11 $ad $c0

jr_000_1f0d::
	ld a, [hl+]                                   ; $1f0d: $2a
	ld [de], a                                    ; $1f0e: $12
	cp $ff                                        ; $1f0f: $fe $ff
	jr z, jr_000_1f16                             ; $1f11: $28 $03

	inc de                                        ; $1f13: $13
	jr jr_000_1f0d                                ; $1f14: $18 $f7

jr_000_1f16::
	ret                                           ; $1f16: $c9


CopyTextToBuffer::
	ld a, $01                                     ; $1f17: $3e $01
	ld [wWaitForVBlank], a                                ; $1f19: $ea $f6 $c0

.loop
	ld a, [wWaitForVBlank]                                 ; $1f1c: $fa $f6 $c0
	and a                                         ; $1f1f: $a7
	jr nz, .loop	                              ; $1f20: $20 $fa

	ret                                           ; $1f22: $c9


Call_000_1f23::
	ld [wC0AC], a                                 ; $1f23: $ea $ac $c0
	ld a, $08                                     ; $1f26: $3e $08
	ld [wTileSize], a                                 ; $1f28: $ea $d1 $c0
	ld a, h                                       ; $1f2b: $7c
	ldh [$8f], a                                  ; $1f2c: $e0 $8f
	ld a, l                                       ; $1f2e: $7d
	ldh [$90], a                                  ; $1f2f: $e0 $90
	jp DrawTile                              ; $1f31: $c3 $4c $05


Call_000_1f34::
	ld hl, $9fff                                  ; $1f34: $21 $ff $9f
	ld bc, $0400                                  ; $1f37: $01 $00 $04

jr_000_1f3a::
	ld a, $d4                                     ; $1f3a: $3e $d4
	ld [hl-], a                                   ; $1f3c: $32
	dec bc                                        ; $1f3d: $0b
	ld a, b                                       ; $1f3e: $78
	or c                                          ; $1f3f: $b1
	jr nz, jr_000_1f3a                            ; $1f40: $20 $f8

	call DrawPauseMenuTextbox                            ; $1f42: $cd $58 $1f
	ld a, $01                                     ; $1f45: $3e $01
	ld [wKeyState], a                                 ; $1f47: $ea $fd $c0

Jump_000_1f4a::
	ld a, $9e                                     ; $1f4a: $3e $9e
	ldh [$8f], a                                  ; $1f4c: $e0 $8f
	ld [wVRAMPointerHigh], a                                 ; $1f4e: $ea $f7 $c0
	xor a                                         ; $1f51: $af
	ldh [$90], a                                  ; $1f52: $e0 $90
	ld [wVRAMPointerLow], a                                 ; $1f54: $ea $f8 $c0
	ret                                           ; $1f57: $c9


DrawPauseMenuTextbox::
	ld hl, vBGMap1                                ; $1f58: $21 $00 $9c
	ld de, PauseMenuTextboxTop                                  ; $1f5b: $11 $7d $77
	call Jump_000_1bec                            ; $1f5e: $cd $ec $1b
	ld b, $09                                     ; $1f61: $06 $09

jr_000_1f63::
	ld a, $11                                     ; $1f63: $3e $11
	add l                                         ; $1f65: $85
	ld l, a                                       ; $1f66: $6f
	ld a, h                                       ; $1f67: $7c
	adc $00                                       ; $1f68: $ce $00
	ld h, a                                       ; $1f6a: $67
	ld de, PauseMenuTextboxSides                  ; $1f6b: $11 $8d $77
	call Jump_000_1bec                            ; $1f6e: $cd $ec $1b
	dec b                                         ; $1f71: $05
	jr nz, jr_000_1f63                            ; $1f72: $20 $ef

	ld bc, $0011                                  ; $1f74: $01 $11 $00
	add hl, bc                                    ; $1f77: $09
	ld de, PauseMenuTextboxBottom                                  ; $1f78: $11 $9d $77
	jp Jump_000_1bec                              ; $1f7b: $c3 $ec $1b


Call_000_1f7e::
	ld a, [wC2D7]                                 ; $1f7e: $fa $d7 $c2
	ld [wC0A1], a                                 ; $1f81: $ea $a1 $c0
	ld a, [wC2D8]                                 ; $1f84: $fa $d8 $c2
	ld [wC0A2], a                                 ; $1f87: $ea $a2 $c0
	call Call_000_203a                            ; $1f8a: $cd $3a $20
	ld a, $88                                     ; $1f8d: $3e $88
	ld [wC2DB], a                                 ; $1f8f: $ea $db $c2
	ld de, wC030                                  ; $1f92: $11 $30 $c0
	ld hl, wC2D3                                  ; $1f95: $21 $d3 $c2
	ld c, $04                                     ; $1f98: $0e $04

jr_000_1f9a::
	ld a, $18                                     ; $1f9a: $3e $18
	ld [de], a                                    ; $1f9c: $12
	inc de                                        ; $1f9d: $13
	ld a, [wC2DB]                                 ; $1f9e: $fa $db $c2
	ld [de], a                                    ; $1fa1: $12
	inc de                                        ; $1fa2: $13
	ld a, [hl+]                                   ; $1fa3: $2a
	ld b, a                                       ; $1fa4: $47
	ld a, $c8                                     ; $1fa5: $3e $c8
	add b                                         ; $1fa7: $80
	ld [de], a                                    ; $1fa8: $12
	inc de                                        ; $1fa9: $13
	xor a                                         ; $1faa: $af
	ld [de], a                                    ; $1fab: $12
	inc de                                        ; $1fac: $13
	ld a, [wC2DB]                                 ; $1fad: $fa $db $c2
	add $08                                       ; $1fb0: $c6 $08
	ld [wC2DB], a                                 ; $1fb2: $ea $db $c2
	dec c                                         ; $1fb5: $0d
	jr nz, jr_000_1f9a                            ; $1fb6: $20 $e2

	ret                                           ; $1fb8: $c9


Call_000_1fb9::
	ld a, $d2                                     ; $1fb9: $3e $d2
	ld [wC2DD], a                                 ; $1fbb: $ea $dd $c2
	inc a                                         ; $1fbe: $3c
	ld [wC2DE], a                                 ; $1fbf: $ea $de $c2
	ld a, $c7                                     ; $1fc2: $3e $c7
	ld [wC2E1], a                                 ; $1fc4: $ea $e1 $c2
	ld a, [wC2EF]                                 ; $1fc7: $fa $ef $c2
	inc a                                         ; $1fca: $3c
	ld l, a                                       ; $1fcb: $6f
	ld h, $00                                     ; $1fcc: $26 $00
	call Call_000_2066                            ; $1fce: $cd $66 $20
	ld a, [wC2D5]                                 ; $1fd1: $fa $d5 $c2
	add $c8                                       ; $1fd4: $c6 $c8
	ld [wC2E2], a                                 ; $1fd6: $ea $e2 $c2
	ld a, [wC2D6]                                 ; $1fd9: $fa $d6 $c2
	add $c8                                       ; $1fdc: $c6 $c8
	ld [wC2E3], a                                 ; $1fde: $ea $e3 $c2
	ld a, [wC120]                                 ; $1fe1: $fa $20 $c1
	inc a                                         ; $1fe4: $3c
	ld l, a                                       ; $1fe5: $6f
	ld h, $00                                     ; $1fe6: $26 $00
	call Call_000_2066                            ; $1fe8: $cd $66 $20
	ld a, [wC2D5]                                 ; $1feb: $fa $d5 $c2
	add $c8                                       ; $1fee: $c6 $c8
	ld [wC2DF], a                                 ; $1ff0: $ea $df $c2
	ld a, [wC2D6]                                 ; $1ff3: $fa $d6 $c2
	add $c8                                       ; $1ff6: $c6 $c8
	ld [wC2E0], a                                 ; $1ff8: $ea $e0 $c2
	ld a, [wC2EE]                                 ; $1ffb: $fa $ee $c2
	and a                                         ; $1ffe: $a7
	jr z, jr_000_2015                             ; $1fff: $28 $14

	ld a, $dc                                     ; $2001: $3e $dc
	ld [wC2DD], a                                 ; $2003: $ea $dd $c2
	ld a, $db                                     ; $2006: $3e $db
	ld [wC2DE], a                                 ; $2008: $ea $de $c2
	ld a, $e0                                     ; $200b: $3e $e0
	ld [wC2DF], a                                 ; $200d: $ea $df $c2
	ld a, $eb                                     ; $2010: $3e $eb
	ld [wC2E0], a                                 ; $2012: $ea $e0 $c2

jr_000_2015::
	ld de, wC2DD                                  ; $2015: $11 $dd $c2
	ld hl, wC040                                  ; $2018: $21 $40 $c0
	ld a, $70                                     ; $201b: $3e $70
	ld [wC2DC], a                                 ; $201d: $ea $dc $c2
	ld c, $07                                     ; $2020: $0e $07

jr_000_2022::
	ld a, $10                                     ; $2022: $3e $10
	ld [hl+], a                                   ; $2024: $22
	ld a, [wC2DC]                                 ; $2025: $fa $dc $c2
	ld [hl+], a                                   ; $2028: $22
	ld a, [de]                                    ; $2029: $1a
	inc de                                        ; $202a: $13
	ld [hl+], a                                   ; $202b: $22
	xor a                                         ; $202c: $af
	ld [hl+], a                                   ; $202d: $22
	ld a, [wC2DC]                                 ; $202e: $fa $dc $c2
	add $08                                       ; $2031: $c6 $08
	ld [wC2DC], a                                 ; $2033: $ea $dc $c2
	dec c                                         ; $2036: $0d
	jr nz, jr_000_2022                            ; $2037: $20 $e9

	ret                                           ; $2039: $c9


Call_000_203a::
	ld a, [wC0A1]                                 ; $203a: $fa $a1 $c0
	ld l, a                                       ; $203d: $6f
	ld a, [wC0A2]                                 ; $203e: $fa $a2 $c0
	ld h, a                                       ; $2041: $67
	ld e, $00                                     ; $2042: $1e $00
	ld bc, jr_000_2710                            ; $2044: $01 $10 $27
	call jr_000_2077                              ; $2047: $cd $77 $20
	ld a, e                                       ; $204a: $7b
	ld [wC2D2], a                                 ; $204b: $ea $d2 $c2
	ld e, $00                                     ; $204e: $1e $00
	ld bc, $03e8                                  ; $2050: $01 $e8 $03
	call jr_000_2077                              ; $2053: $cd $77 $20
	ld a, e                                       ; $2056: $7b
	ld [wC2D3], a                                 ; $2057: $ea $d3 $c2
	ld e, $00                                     ; $205a: $1e $00
	ld bc, $0064                                  ; $205c: $01 $64 $00
	call jr_000_2077                              ; $205f: $cd $77 $20
	ld a, e                                       ; $2062: $7b
	ld [wC2D4], a                                 ; $2063: $ea $d4 $c2

Call_000_2066::
	ld e, $00                                     ; $2066: $1e $00
	ld bc, $000a                                  ; $2068: $01 $0a $00
	call jr_000_2077                              ; $206b: $cd $77 $20
	ld a, e                                       ; $206e: $7b
	ld [wC2D5], a                                 ; $206f: $ea $d5 $c2
	ld a, l                                       ; $2072: $7d
	ld [wC2D6], a                                 ; $2073: $ea $d6 $c2
	ret                                           ; $2076: $c9


jr_000_2077::
	ld a, l                                       ; $2077: $7d
	sub c                                         ; $2078: $91
	ld l, a                                       ; $2079: $6f
	ld a, h                                       ; $207a: $7c
	sbc b                                         ; $207b: $98
	ld h, a                                       ; $207c: $67
	jr c, jr_000_2082                             ; $207d: $38 $03

	inc e                                         ; $207f: $1c
	jr jr_000_2077                                ; $2080: $18 $f5

jr_000_2082::
	add hl, bc                                    ; $2082: $09
	ret                                           ; $2083: $c9


; Read keys from joypad
; Input:
;   $FF8B = Disabled key mask, any bits enabled here will have its key presses ignored
ReadJoypad::
	ld a, P1_ARROWS                               ; Direction keys
	ldh [rP1], a                                  ; Set rP1 to read arrow keys
	ldh a, [rP1]                                  ; Short delay to allow inputs to stabilize
	ldh a, [rP1]                                  ; A = Direction keys
	cpl                                           ; 
	and $0f                                       ; Clear out unused bits
	swap a                                        ; Move lower nibble into upper nibble
	ld b, a                                       ; Back up direction keys
	ld a, P1_BUTTON                               ; A/B/Start/Select
	ldh [rP1], a                                  ; 
	ldh a, [rP1]                                  ; Delay to make sure proper keys are read
	ldh a, [rP1]                                  ; 
	ldh a, [rP1]                                  ; 
	ldh a, [rP1]                                  ; 
	ldh a, [rP1]                                  ; 
	ldh a, [rP1]                                  ; A = A/B/Start/Select
	cpl                                           ; 
	and $0f                                       ; Clear out unused bits
	or b                                          ; Combine direction keys and buttons
	ld c, a                                       ; C = button presses
	ldh a, [hKeys]                                  ; A = disabled key mask (any bits set to 1 will not register) 
	xor c                                         ; Disable keys that have been masked out
	and c                                         ; Mask with the pressed keys
	ldh [$8c], a                                  ; Store masked input
	ld a, c                                       ; 
	ldh [hKeys], a                                  ; Store unmasked input
	ld a, $30                                     ; Enable button and arrow keypresses
	ldh [rP1], a                                  ; 
	ret                                           ; 


WriteDMACodeToHRAM::
	ld c, $80                                     ; $20b5: $0e $80
	ld b, DMARoutineEnd - DMARoutine              ; $20b7: $06 $0a
	ld hl, DMARoutine                             ; $20b9: $21 $c3 $20
.copy
	ld a, [hl+]                                   ; $20bc: $2a
	ld [c], a                                     ; $20bd: $e2
	inc c                                         ; $20be: $0c
	dec b                                         ; $20bf: $05
	 jr nz, .copy                                 ; $20c0: $20 $fa
	ret                                           ; $20c2: $c9

DMARoutine:
	ld a, $c0                                     ; $20c3: $3e $c0
	ldh [rDMA], a                                 ; $20c5: $e0 $46
	ld a, $28                                     ; $20c7: $3e $28
.delay::                                              ; Delay for ~200ms (DMA transfer takes ~160 ms)
	dec a                                         ; $20c9: $3d
	 jr nz, .delay                                ; $20ca: $20 $fd
	ret                                           ; $20cc: $c9
DMARoutineEnd:

CopyBGMapAddressToHRAM::
	ldh a, [$8d]                                  ; $20cd: $f0 $8d
	sub $10                                       ; $20cf: $d6 $10
	srl a                                         ; $20d1: $cb $3f
	srl a                                         ; $20d3: $cb $3f
	srl a                                         ; $20d5: $cb $3f
	ld de, $0000                                  ; $20d7: $11 $00 $00
	ld e, a                                       ; $20da: $5f
	ld hl, vBGMap0                                 ; $20db: $21 $00 $98
	ld b, $20                                     ; $20de: $06 $20

jr_000_20e0::
	add hl, de                                    ; $20e0: $19
	dec b                                         ; $20e1: $05
	jr nz, jr_000_20e0                            ; $20e2: $20 $fc

	ldh a, [$8e]                                  ; $20e4: $f0 $8e
	sub $08                                       ; $20e6: $d6 $08
	srl a                                         ; $20e8: $cb $3f
	srl a                                         ; $20ea: $cb $3f
	srl a                                         ; $20ec: $cb $3f
	ld de, $0000                                  ; $20ee: $11 $00 $00
	ld e, a                                       ; $20f1: $5f
	add hl, de                                    ; $20f2: $19
	ld a, h                                       ; $20f3: $7c
	ldh [$8f], a                                  ; $20f4: $e0 $8f
	ld a, l                                       ; $20f6: $7d
	ldh [$90], a                                  ; $20f7: $e0 $90
	ret                                           ; $20f9: $c9


Call_000_20fa::
	ldh a, [$8f]                                  ; $20fa: $f0 $8f
	ld d, a                                       ; $20fc: $57
	ldh a, [$90]                                  ; $20fd: $f0 $90
	ld e, a                                       ; $20ff: $5f
	ld b, $04                                     ; $2100: $06 $04

jr_000_2102::
	rr d                                          ; $2102: $cb $1a
	rr e                                          ; $2104: $cb $1b
	dec b                                         ; $2106: $05
	jr nz, jr_000_2102                            ; $2107: $20 $f9

	ld a, e                                       ; $2109: $7b
	sub $84                                       ; $210a: $d6 $84
	and $fe                                       ; $210c: $e6 $fe
	rlca                                          ; $210e: $07
	rlca                                          ; $210f: $07
	add $20                                       ; $2110: $c6 $20
	ldh [$8d], a                                  ; $2112: $e0 $8d
	ldh a, [$90]                                  ; $2114: $f0 $90
	and $1f                                       ; $2116: $e6 $1f
	rla                                           ; $2118: $17
	rla                                           ; $2119: $17
	rla                                           ; $211a: $17
	add $08                                       ; $211b: $c6 $08
	ldh [$8e], a                                  ; $211d: $e0 $8e
	ret                                           ; $211f: $c9


TableJump::
	add a                                         ; $2120: $87
	pop hl                                        ; $2121: $e1
	ld e, a                                       ; $2122: $5f
	ld d, $00                                     ; $2123: $16 $00
	add hl, de                                    ; $2125: $19
	ld e, [hl]                                    ; $2126: $5e
	inc hl                                        ; $2127: $23
	ld d, [hl]                                    ; $2128: $56
	push de                                       ; $2129: $d5
	pop hl                                        ; $212a: $e1
	jp hl                                         ; $212b: $e9

; turn off LCD at next VBlank
LCDOff::
	ldh a, [rIE]
	ldh [$92], a                                  ; Save interrupts configuration
	res 0, a

.waitForEndOfLine
	ldh a, [rLY]
	cp $91
	jr nz, .waitForEndOfLine                      ; Wait for row 145

	ldh a, [rLCDC]                                ; \
	and $7f                                       ; | Switch off LCD screen
	ldh [rLCDC], a                                ; /
	ldh a, [$92]
	ldh [rIE], a                                  ; Restore interrupts configuration
	ret


Call_000_2143::
	ld a, $00                                     ; $2143: $3e $00
	ld [hl+], a                                   ; $2145: $22
	dec bc                                        ; $2146: $0b
	ld a, c                                       ; $2147: $79
	or b                                          ; $2148: $b0
	jr nz, Call_000_2143                          ; $2149: $20 $f8
	ret                                           ; $214b: $c9

; fill the background map with $d4
ClearBGMap::
	ld hl, $9bff                                  ; $214c: $21 $ff $9b
	ld bc, $0400                                  ; $214f: $01 $00 $04

.loop
	ld a, $d4                                     ; $2152: $3e $d4
	ld [hl-], a                                   ; $2154: $32
	dec bc                                        ; $2155: $0b
	ld a, b                                       ; $2156: $78
	or c                                          ; $2157: $b1
	jr nz, .loop             		              ; $2158: $20 $f8
	ret                                           ; $215a: $c9


CopyData::
	ld a, [hl+]                                   ; $215b: $2a
	ld [de], a                                    ; $215c: $12
	inc de                                        ; $215d: $13
	dec bc                                        ; $215e: $0b
	ld a, b                                       ; $215f: $78
	or c                                          ; $2160: $b1
	jr nz, CopyData                              ; $2161: $20 $f8
	ret                                           ; $2163: $c9


Jump_000_2164::
	push hl                                       ; $2164: $e5
	add hl, de                                    ; $2165: $19
	ld a, [hl]                                    ; $2166: $7e
	pop hl                                        ; $2167: $e1
	ret                                           ; $2168: $c9


Jump_000_2169::
	push hl                                       ; $2169: $e5
	add hl, de                                    ; $216a: $19
	ld [hl], a                                    ; $216b: $77
	pop hl                                        ; $216c: $e1
	ret                                           ; $216d: $c9


; Adds e to hl and puts the value into a
; Input:
;  hl = base address
;  e = offset
; Output:
;  a = value at hl + e
; Destroys:
;  d = set to 0
Jump_000_216e::
	push hl                                       ; $216e: $e5
	ld d, $00                                     ; Clear out upper byte of de
	add hl, de                                    ; Add offset
	ld a, [hl]                                    ; Grab value
	pop hl                                        ; Restore hl
	ret                                           ; 


Call_000_2175::
	push hl                                       ; $2175: $e5
	ld d, $00                                     ; $2176: $16 $00
	add hl, de                                    ; $2178: $19
	ld [hl], a                                    ; $2179: $77
	pop hl                                        ; $217a: $e1
	ret                                           ; $217b: $c9


Call_000_217c::
	call Call_000_25b5                            ; $217c: $cd $b5 $25
	ld hl, $2679                                  ; $217f: $21 $79 $26
	call Call_000_25d1                            ; $2182: $cd $d1 $25

Call_000_2185::
	ld bc, $008c                                  ; $2185: $01 $8c $00
	ld hl, wC2FC                                  ; $2188: $21 $fc $c2
	jp Call_000_2143                              ; $218b: $c3 $43 $21


Call_000_218e::
	ld b, $02                                     ; $218e: $06 $02
	ld de, wC384                                  ; $2190: $11 $84 $c3
	ld hl, wC2FC                                  ; $2193: $21 $fc $c2

jr_000_2196::
	ld a, [de]                                    ; $2196: $1a
	ld c, a                                       ; $2197: $4f
	inc de                                        ; $2198: $13
	inc de                                        ; $2199: $13
	ld a, [de]                                    ; $219a: $1a
	cp c                                          ; $219b: $b9
	call nz, Call_000_23f5                        ; $219c: $c4 $f5 $23
	dec de                                        ; $219f: $1b
	push de                                       ; $21a0: $d5
	ld de, $0040                                  ; $21a1: $11 $40 $00
	add hl, de                                    ; $21a4: $19
	pop de                                        ; $21a5: $d1
	dec b                                         ; $21a6: $05
	jr nz, jr_000_2196                            ; $21a7: $20 $ed

	ld a, $08                                     ; $21a9: $3e $08
	ld hl, wC2FC                                  ; $21ab: $21 $fc $c2

jr_000_21ae::
	ld [wC388], a                                 ; $21ae: $ea $88 $c3
	ld a, [hl]                                    ; $21b1: $7e
	or a                                          ; $21b2: $b7
	jr z, Jump_000_21e5                           ; $21b3: $28 $30

	ld e, $0b                                     ; $21b5: $1e $0b
	call Jump_000_216e                            ; $21b7: $cd $6e $21
	or a                                          ; $21ba: $b7
	jr z, jr_000_21d3                             ; $21bb: $28 $16

	dec a                                         ; $21bd: $3d
	call Call_000_2175                            ; $21be: $cd $75 $21
	or a                                          ; $21c1: $b7
	jr nz, jr_000_21d3                            ; $21c2: $20 $0f

	call Call_000_21f2                            ; $21c4: $cd $f2 $21
	jr z, jr_000_21cb                             ; $21c7: $28 $02

	ld a, $40                                     ; $21c9: $3e $40

jr_000_21cb::
	ld e, $03                                     ; $21cb: $1e $03
	call Call_000_2175                            ; $21cd: $cd $75 $21
	call Call_000_22d1                            ; $21d0: $cd $d1 $22

jr_000_21d3::
	call Call_000_21f2                            ; $21d3: $cd $f2 $21
	jp z, Jump_000_2397                           ; $21d6: $ca $97 $23

	ld e, $0a                                     ; $21d9: $1e $0a
	call Jump_000_216e                            ; $21db: $cd $6e $21
	dec a                                         ; $21de: $3d
	jp z, Jump_000_21fb                           ; $21df: $ca $fb $21

	call Call_000_2175                            ; $21e2: $cd $75 $21

Jump_000_21e5::
	ld de, $0010                                  ; $21e5: $11 $10 $00
	add hl, de                                    ; $21e8: $19
	ld a, [wC388]                                 ; $21e9: $fa $88 $c3
	dec a                                         ; $21ec: $3d
	jr nz, jr_000_21ae                            ; $21ed: $20 $bf

	jp Jump_000_24f5                              ; $21ef: $c3 $f5 $24


Call_000_21f2::
	ld a, [wC388]                                 ; $21f2: $fa $88 $c3
	sub $01                                       ; $21f5: $d6 $01
	ret z                                         ; $21f7: $c8

	sub $04                                       ; $21f8: $d6 $04
	ret                                           ; $21fa: $c9


Jump_000_21fb::
	call Call_000_24bf                            ; $21fb: $cd $bf $24
	cp $ff                                        ; $21fe: $fe $ff
	jr z, jr_000_2243                             ; $2200: $28 $41

	cp $f0                                        ; $2202: $fe $f0
	jr z, jr_000_2221                             ; $2204: $28 $1b

Call_000_2206::
	cp $60                                        ; $2206: $fe $60
	jr c, jr_000_225a                             ; $2208: $38 $50

	cp $70                                        ; $220a: $fe $70
	jp c, Jump_000_22d6                           ; $220c: $da $d6 $22

	cp $80                                        ; $220f: $fe $80
	jp c, Jump_000_22e7                           ; $2211: $da $e7 $22

	cp $90                                        ; $2214: $fe $90
	jp c, Jump_000_2309                           ; $2216: $da $09 $23

	cp $a2                                        ; $2219: $fe $a2
	jp z, Jump_000_2325                           ; $221b: $ca $25 $23

	jp Jump_000_21fb                              ; $221e: $c3 $fb $21


jr_000_2221::
	xor a                                         ; $2221: $af
	ld [wC384], a                                 ; $2222: $ea $84 $c3
	ld [wC386], a                                 ; $2225: $ea $86 $c3
	ld a, [wC385]                                 ; $2228: $fa $85 $c3
	or a                                          ; $222b: $b7
	jr z, jr_000_2238                             ; $222c: $28 $0a

	push hl                                       ; $222e: $e5
	ld de, $0040                                  ; $222f: $11 $40 $00
	add hl, de                                    ; $2232: $19
	ld a, [hl]                                    ; $2233: $7e
	or $80                                        ; $2234: $f6 $80
	ld [hl], a                                    ; $2236: $77
	pop hl                                        ; $2237: $e1

jr_000_2238::
	push hl                                       ; $2238: $e5
	ld bc, $0010                                  ; $2239: $01 $10 $00
	call Call_000_2143                            ; $223c: $cd $43 $21
	pop hl                                        ; $223f: $e1
	jp Jump_000_21e5                              ; $2240: $c3 $e5 $21


jr_000_2243::
	ld e, $08                                     ; $2243: $1e $08
	call Jump_000_216e                            ; $2245: $cd $6e $21
	ld e, $06                                     ; $2248: $1e $06
	call Call_000_2175                            ; $224a: $cd $75 $21
	ld e, $09                                     ; $224d: $1e $09
	call Jump_000_216e                            ; $224f: $cd $6e $21
	ld e, $07                                     ; $2252: $1e $07
	call Call_000_2175                            ; $2254: $cd $75 $21
	jp Jump_000_21fb                              ; $2257: $c3 $fb $21


jr_000_225a::
	ld de, Jump_000_23a6                          ; $225a: $11 $a6 $23
	push de                                       ; $225d: $d5
	ld b, a                                       ; $225e: $47
	call Call_000_21f2                            ; $225f: $cd $f2 $21
	jp z, Call_000_23dc                           ; $2262: $ca $dc $23

	pop de                                        ; $2265: $d1
	ld a, b                                       ; $2266: $78
	or a                                          ; $2267: $b7
	jp z, Jump_000_233c                           ; $2268: $ca $3c $23

	cp $01                                        ; $226b: $fe $01
	jp z, Jump_000_2346                           ; $226d: $ca $46 $23

	push hl                                       ; $2270: $e5
	dec a                                         ; $2271: $3d
	dec a                                         ; $2272: $3d
	add a                                         ; $2273: $87
	ld l, a                                       ; $2274: $6f
	ld h, $00                                     ; $2275: $26 $00
	ld de, $25df                                  ; $2277: $11 $df $25
	add hl, de                                    ; $227a: $19
	ld a, [hl+]                                   ; $227b: $2a
	ld c, a                                       ; $227c: $4f
	ld a, [hl]                                    ; $227d: $7e
	pop hl                                        ; $227e: $e1
	ld e, $04                                     ; $227f: $1e $04
	call Call_000_2175                            ; $2281: $cd $75 $21
	inc e                                         ; $2284: $1c
	call Jump_000_216e                            ; $2285: $cd $6e $21
	and $f8                                       ; $2288: $e6 $f8
	or c                                          ; $228a: $b1
	call Call_000_2175                            ; $228b: $cd $75 $21
	ld a, [wC388]                                 ; $228e: $fa $88 $c3
	cp $07                                        ; $2291: $fe $07
	call z, Call_000_2350                         ; $2293: $cc $50 $23
	cp $03                                        ; $2296: $fe $03
	call z, Call_000_2350                         ; $2298: $cc $50 $23
	ld e, $0c                                     ; $229b: $1e $0c
	call Jump_000_216e                            ; $229d: $cd $6e $21
	ld e, $03                                     ; $22a0: $1e $03
	call Call_000_2175                            ; $22a2: $cd $75 $21

Jump_000_22a5::
	call Call_000_24bf                            ; $22a5: $cd $bf $24
	ld e, $0a                                     ; $22a8: $1e $0a
	call Call_000_2175                            ; $22aa: $cd $75 $21

Jump_000_22ad::
	ld c, a                                       ; $22ad: $4f
	ld a, [hl]                                    ; $22ae: $7e
	and $03                                       ; $22af: $e6 $03
	jr z, jr_000_22c6                             ; $22b1: $28 $13

	cp $01                                        ; $22b3: $fe $01
	jr z, jr_000_22c4                             ; $22b5: $28 $0d

	cp $02                                        ; $22b7: $fe $02
	jr z, jr_000_22bf                             ; $22b9: $28 $04

	ld a, $01                                     ; $22bb: $3e $01
	jr jr_000_22c6                                ; $22bd: $18 $07

jr_000_22bf::
	ld a, c                                       ; $22bf: $79
	srl a                                         ; $22c0: $cb $3f
	jr jr_000_22c6                                ; $22c2: $18 $02

jr_000_22c4::
	ld a, c                                       ; $22c4: $79
	dec a                                         ; $22c5: $3d

jr_000_22c6::
	ld e, $0b                                     ; $22c6: $1e $0b
	call Call_000_2175                            ; $22c8: $cd $75 $21
	call Call_000_22d1                            ; $22cb: $cd $d1 $22
	jp Jump_000_21e5                              ; $22ce: $c3 $e5 $21


Call_000_22d1::
	ld a, [hl]                                    ; $22d1: $7e
	or $c0                                        ; $22d2: $f6 $c0
	ld [hl], a                                    ; $22d4: $77
	ret                                           ; $22d5: $c9


Jump_000_22d6::
	and $03                                       ; $22d6: $e6 $03
	ld b, a                                       ; $22d8: $47
	ld a, [hl]                                    ; $22d9: $7e
	and $fc                                       ; $22da: $e6 $fc
	or b                                          ; $22dc: $b0
	ld [hl], a                                    ; $22dd: $77
	call Call_000_21f2                            ; $22de: $cd $f2 $21
	jp z, Jump_000_23a6                           ; $22e1: $ca $a6 $23

	jp Jump_000_21fb                              ; $22e4: $c3 $fb $21


Jump_000_22e7::
	push hl                                       ; $22e7: $e5
	and $03                                       ; $22e8: $e6 $03
	inc a                                         ; $22ea: $3c
	ld e, a                                       ; $22eb: $5f
	call Call_000_24bf                            ; $22ec: $cd $bf $24
	ld d, a                                       ; $22ef: $57
	ld hl, wC37C                                  ; $22f0: $21 $7c $c3
	ld a, [wC388]                                 ; $22f3: $fa $88 $c3
	cp $05                                        ; $22f6: $fe $05
	jr nc, jr_000_22fe                            ; $22f8: $30 $04

	ld bc, $0004                                  ; $22fa: $01 $04 $00
	add hl, bc                                    ; $22fd: $09

jr_000_22fe::
	ld a, d                                       ; $22fe: $7a
	call Call_000_2175                            ; $22ff: $cd $75 $21
	ld a, $80                                     ; $2302: $3e $80
	ld [hl], a                                    ; $2304: $77
	pop hl                                        ; $2305: $e1
	jp Jump_000_21fb                              ; $2306: $c3 $fb $21


Jump_000_2309::
	and $07                                       ; $2309: $e6 $07
	inc a                                         ; $230b: $3c
	ld e, a                                       ; $230c: $5f
	call Call_000_24bf                            ; $230d: $cd $bf $24
	ld b, a                                       ; $2310: $47
	call Call_000_2175                            ; $2311: $cd $75 $21
	ld a, e                                       ; $2314: $7b
	cp $03                                        ; $2315: $fe $03
	jr z, jr_000_231c                             ; $2317: $28 $03

	jp Jump_000_21fb                              ; $2319: $c3 $fb $21


jr_000_231c::
	ld a, b                                       ; $231c: $78
	ld e, $0c                                     ; $231d: $1e $0c
	call Call_000_2175                            ; $231f: $cd $75 $21
	jp Jump_000_21fb                              ; $2322: $c3 $fb $21


Jump_000_2325::
	ld e, $06                                     ; $2325: $1e $06
	call Jump_000_216e                            ; $2327: $cd $6e $21
	ld b, a                                       ; $232a: $47
	inc e                                         ; $232b: $1c
	call Jump_000_216e                            ; $232c: $cd $6e $21
	ld e, $09                                     ; $232f: $1e $09
	call Call_000_2175                            ; $2331: $cd $75 $21
	dec e                                         ; $2334: $1d
	ld a, b                                       ; $2335: $78
	call Call_000_2175                            ; $2336: $cd $75 $21
	jp Jump_000_21fb                              ; $2339: $c3 $fb $21


Jump_000_233c::
	ld a, $08                                     ; $233c: $3e $08
	ld e, $03                                     ; $233e: $1e $03
	call Call_000_2175                            ; $2340: $cd $75 $21
	jp Jump_000_22a5                              ; $2343: $c3 $a5 $22


Jump_000_2346::
	ld a, $40                                     ; $2346: $3e $40
	ld e, $03                                     ; $2348: $1e $03
	call Call_000_2175                            ; $234a: $cd $75 $21
	jp Jump_000_22a5                              ; $234d: $c3 $a5 $22


Call_000_2350::
	ld e, $04                                     ; $2350: $1e $04
	call Jump_000_216e                            ; $2352: $cd $6e $21
	dec a                                         ; $2355: $3d
	call Call_000_2175                            ; $2356: $cd $75 $21
	ret                                           ; $2359: $c9


Jump_000_235a::
	push de                                       ; $235a: $d5
	push bc                                       ; $235b: $c5
	push hl                                       ; $235c: $e5
	ld a, b                                       ; $235d: $78
	cp $01                                        ; $235e: $fe $01
	jr z, jr_000_2386                             ; $2360: $28 $24

	ld a, [wC385]                                 ; $2362: $fa $85 $c3
	or a                                          ; $2365: $b7
	jr z, jr_000_2386                             ; $2366: $28 $1e

	ld de, $0010                                  ; $2368: $11 $10 $00
	ld b, $04                                     ; $236b: $06 $04
	ld a, $80                                     ; $236d: $3e $80
	ld [wC380], a                                 ; $236f: $ea $80 $c3

jr_000_2372::
	ld a, [hl]                                    ; $2372: $7e
	or a                                          ; $2373: $b7
	jr z, jr_000_2382                             ; $2374: $28 $0c

	push hl                                       ; $2376: $e5
	push de                                       ; $2377: $d5
	ld de, $0040                                  ; $2378: $11 $40 $00
	add hl, de                                    ; $237b: $19
	ld a, [hl]                                    ; $237c: $7e
	or $80                                        ; $237d: $f6 $80
	ld [hl], a                                    ; $237f: $77
	pop de                                        ; $2380: $d1
	pop hl                                        ; $2381: $e1

jr_000_2382::
	add hl, de                                    ; $2382: $19
	dec b                                         ; $2383: $05
	jr nz, jr_000_2372                            ; $2384: $20 $ec

jr_000_2386::
	pop hl                                        ; $2386: $e1
	push hl                                       ; $2387: $e5
	ld b, $04                                     ; $2388: $06 $04
	ld de, $0010                                  ; $238a: $11 $10 $00
	xor a                                         ; $238d: $af

jr_000_238e::
	ld [hl], a                                    ; $238e: $77
	add hl, de                                    ; $238f: $19
	dec b                                         ; $2390: $05
	jr nz, jr_000_238e                            ; $2391: $20 $fb

	pop hl                                        ; $2393: $e1
	pop bc                                        ; $2394: $c1
	pop de                                        ; $2395: $d1
	ret                                           ; $2396: $c9


Jump_000_2397::
	ld e, $0a                                     ; $2397: $1e $0a
	call Jump_000_216e                            ; $2399: $cd $6e $21
	dec a                                         ; $239c: $3d
	jp z, Jump_000_23a6                           ; $239d: $ca $a6 $23

	call Call_000_2175                            ; $23a0: $cd $75 $21
	jp Jump_000_21e5                              ; $23a3: $c3 $e5 $21


Jump_000_23a6::
	call Call_000_24da                            ; $23a6: $cd $da $24
	cp $ff                                        ; $23a9: $fe $ff
	jp z, Jump_000_21fb                           ; $23ab: $ca $fb $21

	cp $60                                        ; $23ae: $fe $60
	jr c, jr_000_23ba                             ; $23b0: $38 $08

	cp $70                                        ; $23b2: $fe $70
	jp c, Jump_000_22d6                           ; $23b4: $da $d6 $22

	jp Jump_000_23a6                              ; $23b7: $c3 $a6 $23


jr_000_23ba::
	push hl                                       ; $23ba: $e5
	add a                                         ; $23bb: $87
	ld l, a                                       ; $23bc: $6f
	ld h, $00                                     ; $23bd: $26 $00
	ld de, $2657                                  ; $23bf: $11 $57 $26
	add hl, de                                    ; $23c2: $19
	ld a, [hl+]                                   ; $23c3: $2a
	ld c, a                                       ; $23c4: $4f
	ld a, [hl]                                    ; $23c5: $7e
	pop hl                                        ; $23c6: $e1
	ld e, $03                                     ; $23c7: $1e $03
	call Call_000_2175                            ; $23c9: $cd $75 $21
	ld a, c                                       ; $23cc: $79
	inc e                                         ; $23cd: $1c
	call Call_000_2175                            ; $23ce: $cd $75 $21
	call Call_000_24da                            ; $23d1: $cd $da $24
	ld e, $0a                                     ; $23d4: $1e $0a
	call Call_000_2175                            ; $23d6: $cd $75 $21
	jp Jump_000_22ad                              ; $23d9: $c3 $ad $22


Call_000_23dc::
	push hl                                       ; $23dc: $e5
	ld l, b                                       ; $23dd: $68
	ld h, $00                                     ; $23de: $26 $00
	add hl, hl                                    ; $23e0: $29
	ld de, $3b61                                  ; $23e1: $11 $61 $3b
	add hl, de                                    ; $23e4: $19
	ld b, h                                       ; $23e5: $44
	ld c, l                                       ; $23e6: $4d
	pop hl                                        ; $23e7: $e1
	ld e, $0d                                     ; $23e8: $1e $0d
	ld a, [bc]                                    ; $23ea: $0a
	inc bc                                        ; $23eb: $03
	call Call_000_2175                            ; $23ec: $cd $75 $21
	inc e                                         ; $23ef: $1c
	ld a, [bc]                                    ; $23f0: $0a
	call Call_000_2175                            ; $23f1: $cd $75 $21
	ret                                           ; $23f4: $c9


Call_000_23f5::
	ld a, c                                       ; $23f5: $79
	ld [de], a                                    ; $23f6: $12
	or a                                          ; $23f7: $b7
	jp z, Jump_000_235a                           ; $23f8: $ca $5a $23

	push hl                                       ; $23fb: $e5
	push bc                                       ; $23fc: $c5
	push de                                       ; $23fd: $d5
	push hl                                       ; $23fe: $e5
	dec a                                         ; $23ff: $3d
	add a                                         ; $2400: $87
	ld hl, $2e46                                  ; $2401: $21 $46 $2e
	ld e, a                                       ; $2404: $5f
	ld d, $00                                     ; $2405: $16 $00
	add hl, de                                    ; $2407: $19
	ld a, [hl+]                                   ; $2408: $2a
	ld e, a                                       ; $2409: $5f
	ld a, [hl]                                    ; $240a: $7e
	ld d, a                                       ; $240b: $57
	push de                                       ; $240c: $d5
	ld hl, wC37C                                  ; $240d: $21 $7c $c3
	ld a, b                                       ; $2410: $78
	ld b, $03                                     ; $2411: $06 $03
	cp $02                                        ; $2413: $fe $02
	jr z, jr_000_241b                             ; $2415: $28 $04

	ld de, $0004                                  ; $2417: $11 $04 $00
	add hl, de                                    ; $241a: $19

jr_000_241b::
	ld a, $80                                     ; $241b: $3e $80
	ld [hl+], a                                   ; $241d: $22
	ld de, $268a                                  ; $241e: $11 $8a $26

jr_000_2421::
	ld a, [de]                                    ; $2421: $1a
	inc de                                        ; $2422: $13
	ld [hl+], a                                   ; $2423: $22
	dec b                                         ; $2424: $05
	jr nz, jr_000_2421                            ; $2425: $20 $fa

	pop de                                        ; $2427: $d1
	pop hl                                        ; $2428: $e1
	push hl                                       ; $2429: $e5
	push de                                       ; $242a: $d5
	ld bc, $0040                                  ; $242b: $01 $40 $00
	call Call_000_2143                            ; $242e: $cd $43 $21
	pop bc                                        ; $2431: $c1
	pop hl                                        ; $2432: $e1
	push hl                                       ; $2433: $e5
	ld a, $04                                     ; $2434: $3e $04

jr_000_2436::
	ld [wC388], a                                 ; $2436: $ea $88 $c3
	ld a, $c1                                     ; $2439: $3e $c1
	ld [hl], a                                    ; $243b: $77
	ld e, $06                                     ; $243c: $1e $06
	ld a, [bc]                                    ; $243e: $0a
	inc bc                                        ; $243f: $03
	call Call_000_2175                            ; $2440: $cd $75 $21
	inc e                                         ; $2443: $1c
	ld a, [bc]                                    ; $2444: $0a
	inc bc                                        ; $2445: $03
	or a                                          ; $2446: $b7
	call z, Call_000_24bd                         ; $2447: $cc $bd $24
	call Call_000_2175                            ; $244a: $cd $75 $21
	ld e, $0a                                     ; $244d: $1e $0a
	ld a, $01                                     ; $244f: $3e $01
	call Call_000_2175                            ; $2451: $cd $75 $21
	ld de, $0010                                  ; $2454: $11 $10 $00
	add hl, de                                    ; $2457: $19
	ld a, [wC388]                                 ; $2458: $fa $88 $c3
	dec a                                         ; $245b: $3d
	jr nz, jr_000_2436                            ; $245c: $20 $d8

	pop hl                                        ; $245e: $e1
	ld a, $04                                     ; $245f: $3e $04

jr_000_2461::
	ld [wC388], a                                 ; $2461: $ea $88 $c3
	ld a, [hl]                                    ; $2464: $7e
	or a                                          ; $2465: $b7
	jr z, jr_000_24a2                             ; $2466: $28 $3a

	call Call_000_24bf                            ; $2468: $cd $bf $24
	ld e, $01                                     ; $246b: $1e $01
	call Call_000_2175                            ; $246d: $cd $75 $21
	call Call_000_24bf                            ; $2470: $cd $bf $24
	inc e                                         ; $2473: $1c
	call Call_000_2175                            ; $2474: $cd $75 $21
	call Call_000_24bf                            ; $2477: $cd $bf $24
	inc e                                         ; $247a: $1c
	call Call_000_2175                            ; $247b: $cd $75 $21
	call Call_000_24bf                            ; $247e: $cd $bf $24
	inc e                                         ; $2481: $1c
	inc e                                         ; $2482: $1c
	call Call_000_2175                            ; $2483: $cd $75 $21
	inc e                                         ; $2486: $1c
	call Jump_000_216e                            ; $2487: $cd $6e $21
	inc e                                         ; $248a: $1c
	inc e                                         ; $248b: $1c
	call Call_000_2175                            ; $248c: $cd $75 $21
	dec e                                         ; $248f: $1d
	call Jump_000_216e                            ; $2490: $cd $6e $21
	inc e                                         ; $2493: $1c
	inc e                                         ; $2494: $1c
	call Call_000_2175                            ; $2495: $cd $75 $21
	ld e, $03                                     ; $2498: $1e $03
	call Jump_000_216e                            ; $249a: $cd $6e $21
	ld e, $0c                                     ; $249d: $1e $0c
	call Call_000_2175                            ; $249f: $cd $75 $21

jr_000_24a2::
	ld a, [wC388]                                 ; $24a2: $fa $88 $c3
	dec a                                         ; $24a5: $3d
	jr z, jr_000_24ae                             ; $24a6: $28 $06

	ld de, $0010                                  ; $24a8: $11 $10 $00
	add hl, de                                    ; $24ab: $19
	jr jr_000_2461                                ; $24ac: $18 $b3

jr_000_24ae::
	call Call_000_24bf                            ; $24ae: $cd $bf $24
	ld b, a                                       ; $24b1: $47
	call Call_000_23dc                            ; $24b2: $cd $dc $23
	ld de, $0010                                  ; $24b5: $11 $10 $00
	add hl, de                                    ; $24b8: $19
	pop de                                        ; $24b9: $d1
	pop bc                                        ; $24ba: $c1
	pop hl                                        ; $24bb: $e1
	ret                                           ; $24bc: $c9


Call_000_24bd::
	ld [hl], a                                    ; $24bd: $77
	ret                                           ; $24be: $c9


Call_000_24bf::
	push de                                       ; $24bf: $d5
	ld e, $06                                     ; $24c0: $1e $06
	call Jump_000_216e                            ; $24c2: $cd $6e $21
	ld c, a                                       ; $24c5: $4f
	inc e                                         ; $24c6: $1c
	call Jump_000_216e                            ; $24c7: $cd $6e $21
	ld b, a                                       ; $24ca: $47
	ld a, [bc]                                    ; $24cb: $0a
	push af                                       ; $24cc: $f5
	inc bc                                        ; $24cd: $03
	ld a, b                                       ; $24ce: $78
	call Call_000_2175                            ; $24cf: $cd $75 $21
	dec e                                         ; $24d2: $1d
	ld a, c                                       ; $24d3: $79
	call Call_000_2175                            ; $24d4: $cd $75 $21
	pop af                                        ; $24d7: $f1
	pop de                                        ; $24d8: $d1
	ret                                           ; $24d9: $c9


Call_000_24da::
	push de                                       ; $24da: $d5
	ld e, $0d                                     ; $24db: $1e $0d
	call Jump_000_216e                            ; $24dd: $cd $6e $21
	ld c, a                                       ; $24e0: $4f
	inc e                                         ; $24e1: $1c
	call Jump_000_216e                            ; $24e2: $cd $6e $21
	ld b, a                                       ; $24e5: $47
	ld a, [bc]                                    ; $24e6: $0a
	push af                                       ; $24e7: $f5
	inc bc                                        ; $24e8: $03
	ld a, b                                       ; $24e9: $78
	call Call_000_2175                            ; $24ea: $cd $75 $21
	dec e                                         ; $24ed: $1d
	ld a, c                                       ; $24ee: $79
	call Call_000_2175                            ; $24ef: $cd $75 $21
	pop af                                        ; $24f2: $f1
	pop de                                        ; $24f3: $d1
	ret                                           ; $24f4: $c9


Jump_000_24f5::
	ld b, $02                                     ; $24f5: $06 $02
	ld c, $24                                     ; $24f7: $0e $24
	ld hl, wC37C                                  ; $24f9: $21 $7c $c3

jr_000_24fc::
	ld a, [hl]                                    ; $24fc: $7e
	or a                                          ; $24fd: $b7
	jr nz, jr_000_2509                            ; $24fe: $20 $09

	ld de, $0004                                  ; $2500: $11 $04 $00
	add hl, de                                    ; $2503: $19
	dec b                                         ; $2504: $05
	jr nz, jr_000_24fc                            ; $2505: $20 $f5

	jr jr_000_2513                                ; $2507: $18 $0a

jr_000_2509::
	ld b, $03                                     ; $2509: $06 $03
	xor a                                         ; $250b: $af
	ld [hl+], a                                   ; $250c: $22

jr_000_250d::
	ld a, [hl+]                                   ; $250d: $2a
	ld [c], a                                     ; $250e: $e2
	inc c                                         ; $250f: $0c
	dec b                                         ; $2510: $05
	jr nz, jr_000_250d                            ; $2511: $20 $fa

jr_000_2513::
	ld hl, wC2F8                                  ; $2513: $21 $f8 $c2
	ld bc, $0004                                  ; $2516: $01 $04 $00
	call Call_000_2143                            ; $2519: $cd $43 $21
	ld a, $08                                     ; $251c: $3e $08
	ld c, $10                                     ; $251e: $0e $10
	ld hl, wC2FC                                  ; $2520: $21 $fc $c2

Jump_000_2523::
	push hl                                       ; $2523: $e5
	ld hl, wC2F8                                  ; $2524: $21 $f8 $c2
	ld [wC388], a                                 ; $2527: $ea $88 $c3
	cp $05                                        ; $252a: $fe $05
	jr c, jr_000_2530                             ; $252c: $38 $02

	sub $04                                       ; $252e: $d6 $04

jr_000_2530::
	dec a                                         ; $2530: $3d
	ld e, a                                       ; $2531: $5f
	call Jump_000_216e                            ; $2532: $cd $6e $21
	pop hl                                        ; $2535: $e1
	or a                                          ; $2536: $b7
	jr nz, jr_000_25a9                            ; $2537: $20 $70

	ld a, [hl]                                    ; $2539: $7e
	or a                                          ; $253a: $b7
	jr z, jr_000_25a9                             ; $253b: $28 $6c

	and $80                                       ; $253d: $e6 $80
	jr z, jr_000_25af                             ; $253f: $28 $6e

	ld a, [wC388]                                 ; $2541: $fa $88 $c3
	cp $06                                        ; $2544: $fe $06
	jr z, jr_000_254c                             ; $2546: $28 $04

	cp $02                                        ; $2548: $fe $02
	jr nz, jr_000_254f                            ; $254a: $20 $03

jr_000_254c::
	xor a                                         ; $254c: $af
	ldh [rNR30], a                                ; $254d: $e0 $1a

jr_000_254f::
	ld b, $05                                     ; $254f: $06 $05
	ld e, $01                                     ; $2551: $1e $01

jr_000_2553::
	call Jump_000_216e                            ; $2553: $cd $6e $21
	ld [c], a                                     ; $2556: $e2
	inc c                                         ; $2557: $0c
	inc e                                         ; $2558: $1c
	dec b                                         ; $2559: $05
	jr nz, jr_000_2553                            ; $255a: $20 $f7

	ld a, [hl]                                    ; $255c: $7e
	and $7f                                       ; $255d: $e6 $7f
	ld [hl], a                                    ; $255f: $77

jr_000_2560::
	push hl                                       ; $2560: $e5
	ld hl, wC2F8                                  ; $2561: $21 $f8 $c2
	ld a, [wC388]                                 ; $2564: $fa $88 $c3
	cp $05                                        ; $2567: $fe $05
	jr c, jr_000_256d                             ; $2569: $38 $02

	sub $04                                       ; $256b: $d6 $04

jr_000_256d::
	dec a                                         ; $256d: $3d
	ld e, a                                       ; $256e: $5f
	ld a, $ff                                     ; $256f: $3e $ff
	call Call_000_2175                            ; $2571: $cd $75 $21
	pop hl                                        ; $2574: $e1

jr_000_2575::
	ld de, $0010                                  ; $2575: $11 $10 $00
	add hl, de                                    ; $2578: $19
	ld a, [wC388]                                 ; $2579: $fa $88 $c3
	dec a                                         ; $257c: $3d
	ld [wC388], a                                 ; $257d: $ea $88 $c3
	cp $04                                        ; $2580: $fe $04
	jr z, jr_000_25a4                             ; $2582: $28 $20

	or a                                          ; $2584: $b7
	jr nz, Jump_000_2523                          ; $2585: $20 $9c

	ld b, $04                                     ; $2587: $06 $04
	ld c, $12                                     ; $2589: $0e $12
	ld hl, wC2FB                                  ; $258b: $21 $fb $c2

jr_000_258e::
	ld a, [hl-]                                   ; $258e: $3a
	or a                                          ; $258f: $b7
	jr nz, jr_000_259c                            ; $2590: $20 $0a

	ld a, $08                                     ; $2592: $3e $08
	ld [c], a                                     ; $2594: $e2
	ld d, c                                       ; $2595: $51
	inc c                                         ; $2596: $0c
	inc c                                         ; $2597: $0c
	ld a, $80                                     ; $2598: $3e $80
	ld [c], a                                     ; $259a: $e2
	ld c, d                                       ; $259b: $4a

jr_000_259c::
	ld a, $05                                     ; $259c: $3e $05
	add c                                         ; $259e: $81
	ld c, a                                       ; $259f: $4f
	dec b                                         ; $25a0: $05
	jr nz, jr_000_258e                            ; $25a1: $20 $eb

	ret                                           ; $25a3: $c9


jr_000_25a4::
	ld c, $10                                     ; $25a4: $0e $10
	jp Jump_000_2523                              ; $25a6: $c3 $23 $25


jr_000_25a9::
	ld a, $05                                     ; $25a9: $3e $05
	add c                                         ; $25ab: $81
	ld c, a                                       ; $25ac: $4f
	jr jr_000_2575                                ; $25ad: $18 $c6

jr_000_25af::
	ld a, $05                                     ; $25af: $3e $05
	add c                                         ; $25b1: $81
	ld c, a                                       ; $25b2: $4f
	jr jr_000_2560                                ; $25b3: $18 $ab

Call_000_25b5::
	ld hl, $2689                                  ; $25b5: $21 $89 $26
	ld de, wC37C                                  ; $25b8: $11 $7c $c3
	ld b, $08                                     ; $25bb: $06 $08

jr_000_25bd::
	ld a, [hl+]                                   ; $25bd: $2a
	ld [de], a                                    ; $25be: $12
	inc de                                        ; $25bf: $13
	dec b                                         ; $25c0: $05
	jr nz, jr_000_25bd                            ; $25c1: $20 $fa

	ld hl, wC37F                                  ; $25c3: $21 $7f $c3
	ld c, $26                                     ; $25c6: $0e $26
	ld b, $03                                     ; $25c8: $06 $03

jr_000_25ca::
	ld a, [hl-]                                   ; $25ca: $3a
	ld [c], a                                     ; $25cb: $e2
	dec c                                         ; $25cc: $0d
	dec b                                         ; $25cd: $05
	jr nz, jr_000_25ca                            ; $25ce: $20 $fa

	ret                                           ; $25d0: $c9


Call_000_25d1::
	xor a                                         ; $25d1: $af
	ldh [rNR30], a                                ; $25d2: $e0 $1a
	ld b, $10                                     ; $25d4: $06 $10
	ld c, $30                                     ; $25d6: $0e $30

jr_000_25d8::
	ld a, [hl+]                                   ; $25d8: $2a
	ld [c], a                                     ; $25d9: $e2
	inc c                                         ; $25da: $0c
	dec b                                         ; $25db: $05
	jr nz, jr_000_25d8                            ; $25dc: $20 $fa

	ret                                           ; $25de: $c9


	nop                                           ; $25df: $00
	inc l                                         ; $25e0: $2c
	nop                                           ; $25e1: $00
	sbc l                                         ; $25e2: $9d
	ld bc, $0107                                  ; $25e3: $01 $07 $01
	ld l, e                                       ; $25e6: $6b
	ld bc, $02c9                                  ; $25e7: $01 $c9 $02
	inc hl                                        ; $25ea: $23
	ld [bc], a                                    ; $25eb: $02
	ld [hl], a                                    ; $25ec: $77
	ld [bc], a                                    ; $25ed: $02
	add $03                                       ; $25ee: $c6 $03
	ld [de], a                                    ; $25f0: $12
	inc bc                                        ; $25f1: $03
	ld e, b                                       ; $25f2: $58
	inc bc                                        ; $25f3: $03
	sbc e                                         ; $25f4: $9b
	inc bc                                        ; $25f5: $03
	jp c, Jump_000_1604                           ; $25f6: $da $04 $16

	inc b                                         ; $25f9: $04
	ld c, [hl]                                    ; $25fa: $4e
	inc b                                         ; $25fb: $04
	add e                                         ; $25fc: $83
	inc b                                         ; $25fd: $04
	or l                                          ; $25fe: $b5
	inc b                                         ; $25ff: $04
	push hl                                       ; $2600: $e5
	dec b                                         ; $2601: $05
	ld de, $3b05                                  ; $2602: $11 $05 $3b
	dec b                                         ; $2605: $05
	ld h, e                                       ; $2606: $63
	dec b                                         ; $2607: $05
	adc c                                         ; $2608: $89
	dec b                                         ; $2609: $05
	xor h                                         ; $260a: $ac
	dec b                                         ; $260b: $05
	adc $05                                       ; $260c: $ce $05
	db $ed                                        ; $260e: $ed
	ld b, $0b                                     ; $260f: $06 $0b
	ld b, $27                                     ; $2611: $06 $27
	ld b, $42                                     ; $2613: $06 $42
	ld b, $5b                                     ; $2615: $06 $5b
	ld b, $72                                     ; $2617: $06 $72
	ld b, $89                                     ; $2619: $06 $89
	ld b, $9e                                     ; $261b: $06 $9e
	ld b, $b2                                     ; $261d: $06 $b2
	ld b, $c4                                     ; $261f: $06 $c4
	ld b, $d6                                     ; $2621: $06 $d6
	ld b, $e7                                     ; $2623: $06 $e7
	ld b, $f7                                     ; $2625: $06 $f7
	rlca                                          ; $2627: $07
	ld b, $07                                     ; $2628: $06 $07
	inc d                                         ; $262a: $14
	rlca                                          ; $262b: $07
	ld hl, $2d07                                  ; $262c: $21 $07 $2d
	rlca                                          ; $262f: $07
	add hl, sp                                    ; $2630: $39
	rlca                                          ; $2631: $07
	ld b, h                                       ; $2632: $44
	rlca                                          ; $2633: $07
	ld c, a                                       ; $2634: $4f
	rlca                                          ; $2635: $07
	ld e, c                                       ; $2636: $59
	rlca                                          ; $2637: $07
	ld h, d                                       ; $2638: $62
	rlca                                          ; $2639: $07
	ld l, e                                       ; $263a: $6b
	rlca                                          ; $263b: $07
	ld [hl], e                                    ; $263c: $73
	rlca                                          ; $263d: $07
	ld a, e                                       ; $263e: $7b
	rlca                                          ; $263f: $07
	add e                                         ; $2640: $83
	rlca                                          ; $2641: $07
	adc d                                         ; $2642: $8a
	rlca                                          ; $2643: $07
	sub b                                         ; $2644: $90
	rlca                                          ; $2645: $07
	sub a                                         ; $2646: $97
	rlca                                          ; $2647: $07
	sbc l                                         ; $2648: $9d
	rlca                                          ; $2649: $07
	and d                                         ; $264a: $a2
	rlca                                          ; $264b: $07
	and a                                         ; $264c: $a7
	rlca                                          ; $264d: $07
	xor h                                         ; $264e: $ac
	rlca                                          ; $264f: $07
	or c                                          ; $2650: $b1
	rlca                                          ; $2651: $07
	or [hl]                                       ; $2652: $b6
	rlca                                          ; $2653: $07
	cp d                                          ; $2654: $ba
	rlca                                          ; $2655: $07
	cp [hl]                                       ; $2656: $be
	nop                                           ; $2657: $00
	ld [$f146], sp                                ; $2658: $08 $46 $f1
	daa                                           ; $265b: $27
	pop af                                        ; $265c: $f1
	ld bc, $27a1                                  ; $265d: $01 $a1 $27
	ld c, $01                                     ; $2660: $0e $01
	and e                                         ; $2662: $a3
	ld bc, $6951                                  ; $2663: $01 $51 $69
	ld h, $79                                     ; $2666: $26 $79
	ld h, $ff                                     ; $2668: $26 $ff
	rst $38                                       ; $266a: $ff
	rst $38                                       ; $266b: $ff
	rst $38                                       ; $266c: $ff
	rst $38                                       ; $266d: $ff
	rst $38                                       ; $266e: $ff
	rst $38                                       ; $266f: $ff
	rst $38                                       ; $2670: $ff
	rst $38                                       ; $2671: $ff
	rst $38                                       ; $2672: $ff
	rst $38                                       ; $2673: $ff
	rst $38                                       ; $2674: $ff
	rst $38                                       ; $2675: $ff
	rst $38                                       ; $2676: $ff
	rst $38                                       ; $2677: $ff
	rst $38                                       ; $2678: $ff
	ld bc, $ad36                                  ; $2679: $01 $36 $ad
	rst $28                                       ; $267c: $ef
	cp $ca                                        ; $267d: $fe $ca
	sbc b                                         ; $267f: $98
	add [hl]                                      ; $2680: $86
	ld d, [hl]                                    ; $2681: $56
	adc d                                         ; $2682: $8a
	call $ceec                                    ; $2683: $cd $ec $ce
	db $db                                        ; $2686: $db
	sub [hl]                                      ; $2687: $96
	ld sp, $7700                                  ; $2688: $31 $00 $77
	rst $38                                       ; $268b: $ff
	adc a                                         ; $268c: $8f
	nop                                           ; $268d: $00
	ld [hl], a                                    ; $268e: $77
	rst $38                                       ; $268f: $ff
	adc a                                         ; $2690: $8f

Call_000_2691::
	ld a, [wC384]                                 ; $2691: $fa $84 $c3
	or a                                          ; $2694: $b7
	ret nz                                        ; $2695: $c0

	ld a, [wC0F1]                                 ; $2696: $fa $f1 $c0
	or a                                          ; $2699: $b7
	ret nz                                        ; $269a: $c0

	ld a, [wGameplayType]                         ; $269b: $fa $ec $c2
	cp $10                                        ; $269e: $fe $10
	jr z, jr_000_26ba                             ; $26a0: $28 $18

	cp $70                                        ; $26a2: $fe $70
	jr z, jr_000_26ba                             ; $26a4: $28 $14

	and $f0                                       ; $26a6: $e6 $f0
	 ret nz                                       ; $26a8: $c0

	ld a, [wGameplayType]                         ; $26a9: $fa $ec $c2
	or a                                          ; $26ac: $b7
	jr z, jr_000_26c6                             ; $26ad: $28 $17

	cp $01                                        ; $26af: $fe $01
	jr z, jr_000_26c1                             ; $26b1: $28 $0e

	cp $06                                        ; $26b3: $fe $06
	jr z, jr_000_26be                             ; $26b5: $28 $07

	cp $08                                        ; $26b7: $fe $08
	ret z                                         ; $26b9: $c8

jr_000_26ba::
	ld a, $02                                     ; $26ba: $3e $02
	jr jr_000_26c8                                ; $26bc: $18 $0a

jr_000_26be::
	xor a                                         ; $26be: $af
	jr jr_000_26c8                                ; $26bf: $18 $07

jr_000_26c1::
	ld a, [wC2ED]                                 ; $26c1: $fa $ed $c2
	or a                                          ; $26c4: $b7
	ret nz                                        ; $26c5: $c0

jr_000_26c6::
	ld a, $03                                     ; $26c6: $3e $03

jr_000_26c8::
	ld [wC385], a                                 ; $26c8: $ea $85 $c3
	ret                                           ; $26cb: $c9


jr_000_26cc::
	ld a, [wC384]                                 ; $26cc: $fa $84 $c3
	and a                                         ; $26cf: $a7
	jr nz, jr_000_26cc                            ; $26d0: $20 $fa

	ret                                           ; $26d2: $c9


jr_000_26d3::
	call Call_000_2185                            ; $26d3: $cd $85 $21
	ld a, [wC386]                                 ; $26d6: $fa $86 $c3
	or a                                          ; $26d9: $b7
	jr nz, jr_000_26d3                            ; $26da: $20 $f7

	ld c, $26                                     ; $26dc: $0e $26
	ld a, $8f                                     ; $26de: $3e $8f
	ld [c], a                                     ; $26e0: $e2
	dec c                                         ; $26e1: $0d
	ld a, $ff                                     ; $26e2: $3e $ff
	ld [c], a                                     ; $26e4: $e2
	dec c                                         ; $26e5: $0d
	ld a, $77                                     ; $26e6: $3e $77
	ld [c], a                                     ; $26e8: $e2
	ld hl, $2669                                  ; $26e9: $21 $69 $26
	call Call_000_25d1                            ; $26ec: $cd $d1 $25
	ld c, $1a                                     ; $26ef: $0e $1a
	ld a, $80                                     ; $26f1: $3e $80
	ld [c], a                                     ; $26f3: $e2
	inc c                                         ; $26f4: $0c
	ld a, $00                                     ; $26f5: $3e $00
	ld [c], a                                     ; $26f7: $e2
	inc c                                         ; $26f8: $0c
	ld a, $20                                     ; $26f9: $3e $20
	ld [c], a                                     ; $26fb: $e2
	inc c                                         ; $26fc: $0c
	ld a, $00                                     ; $26fd: $3e $00
	ld [c], a                                     ; $26ff: $e2
	inc c                                         ; $2700: $0c
	ld a, $80                                     ; $2701: $3e $80
	ld [c], a                                     ; $2703: $e2
	ld hl, wC3A8                                  ; $2704: $21 $a8 $c3
	ld b, $08                                     ; $2707: $06 $08
	ld c, $1c                                     ; $2709: $0e $1c
	ld e, $aa                                     ; $270b: $1e $aa
	ld a, [hl+]                                   ; $270d: $2a
	ld d, a                                       ; $270e: $57
	di                                            ; $270f: $f3

jr_000_2710::
	xor a                                         ; $2710: $af
	rl d                                          ; $2711: $cb $12
	rra                                           ; $2713: $1f
	rra                                           ; $2714: $1f
	rra                                           ; $2715: $1f
	ld [c], a                                     ; $2716: $e2
	dec b                                         ; $2717: $05
	jr z, jr_000_2720                             ; $2718: $28 $06

Call_000_271a::
	push hl                                       ; $271a: $e5
	pop hl                                        ; $271b: $e1
	nop                                           ; $271c: $00
	nop                                           ; $271d: $00
	jr jr_000_2710                                ; $271e: $18 $f0

jr_000_2720::
	ld a, [hl+]                                   ; $2720: $2a
	ld d, a                                       ; $2721: $57
	cp e                                          ; $2722: $bb
	jr z, jr_000_2729                             ; $2723: $28 $04

	ld b, $08                                     ; $2725: $06 $08
	jr jr_000_2710                                ; $2727: $18 $e7

jr_000_2729::
	ei                                            ; $2729: $fb
	ld a, $00                                     ; $272a: $3e $00
	ld c, $1c                                     ; $272c: $0e $1c
	ld [c], a                                     ; $272e: $e2
	ld hl, $2679                                  ; $272f: $21 $79 $26
	call Call_000_25d1                            ; $2732: $cd $d1 $25
	ret                                           ; $2735: $c9


Call_000_2736::
	xor a                                         ; $2736: $af
	ld [wC2F2], a                                 ; $2737: $ea $f2 $c2
	ld [wC2F3], a                                 ; $273a: $ea $f3 $c2
	ld [wC2F6], a                                 ; $273d: $ea $f6 $c2
	ld de, wC3A8                                  ; $2740: $11 $a8 $c3
	ld a, [hl+]                                   ; $2743: $2a
	ld [wC2F1], a                                 ; $2744: $ea $f1 $c2
	ld a, [hl+]                                   ; $2747: $2a
	ld c, a                                       ; $2748: $4f
	ld a, [hl+]                                   ; $2749: $2a
	ld b, a                                       ; $274a: $47
	dec bc                                        ; $274b: $0b
	dec bc                                        ; $274c: $0b
	dec bc                                        ; $274d: $0b

Jump_000_274e::
	ld a, [hl+]                                   ; $274e: $2a
	push hl                                       ; $274f: $e5
	push bc                                       ; $2750: $c5
	ld c, a                                       ; $2751: $4f
	cp $ff                                        ; $2752: $fe $ff
	jr z, jr_000_275b                             ; $2754: $28 $05

	ld a, $01                                     ; $2756: $3e $01
	ld [wC2F3], a                                 ; $2758: $ea $f3 $c2

jr_000_275b::
	ld a, [wC2F2]                                 ; $275b: $fa $f2 $c2
	or a                                          ; $275e: $b7
	jr z, jr_000_278a                             ; $275f: $28 $29

	ld b, a                                       ; $2761: $47
	ld a, [wC2F1]                                 ; $2762: $fa $f1 $c2
	or a                                          ; $2765: $b7
	jr z, jr_000_2779                             ; $2766: $28 $11

jr_000_2768::
	ld a, [wC2F6]                                 ; $2768: $fa $f6 $c2
	scf                                           ; $276b: $37
	rla                                           ; $276c: $17
	ld [wC2F6], a                                 ; $276d: $ea $f6 $c2
	dec c                                         ; $2770: $0d
	jp z, Jump_000_27da                           ; $2771: $ca $da $27

	dec b                                         ; $2774: $05
	jr nz, jr_000_2768                            ; $2775: $20 $f1

	jr jr_000_2788                                ; $2777: $18 $0f

jr_000_2779::
	ld a, [wC2F6]                                 ; $2779: $fa $f6 $c2
	or a                                          ; $277c: $b7
	rla                                           ; $277d: $17
	ld [wC2F6], a                                 ; $277e: $ea $f6 $c2
	dec c                                         ; $2781: $0d
	jp z, Jump_000_27da                           ; $2782: $ca $da $27

	dec b                                         ; $2785: $05
	jr nz, jr_000_2779                            ; $2786: $20 $f1

jr_000_2788::
	ld [de], a                                    ; $2788: $12
	inc de                                        ; $2789: $13

jr_000_278a::
	xor a                                         ; $278a: $af
	ld [wC2F2], a                                 ; $278b: $ea $f2 $c2
	ld [wC2F6], a                                 ; $278e: $ea $f6 $c2
	ld h, a                                       ; $2791: $67
	ld l, c                                       ; $2792: $69
	ld b, $08                                     ; $2793: $06 $08
	ld c, $08                                     ; $2795: $0e $08

jr_000_2797::
	add hl, hl                                    ; $2797: $29
	ld a, h                                       ; $2798: $7c
	sub c                                         ; $2799: $91
	jr c, jr_000_279e                             ; $279a: $38 $02

	inc l                                         ; $279c: $2c
	ld h, a                                       ; $279d: $67

jr_000_279e::
	dec b                                         ; $279e: $05
	jr nz, jr_000_2797                            ; $279f: $20 $f6

	ld a, l                                       ; $27a1: $7d
	or a                                          ; $27a2: $b7
	jr z, jr_000_27ae                             ; $27a3: $28 $09

	ld b, a                                       ; $27a5: $47
	ld a, [wC2F1]                                 ; $27a6: $fa $f1 $c2

jr_000_27a9::
	ld [de], a                                    ; $27a9: $12
	inc de                                        ; $27aa: $13
	dec b                                         ; $27ab: $05
	jr nz, jr_000_27a9                            ; $27ac: $20 $fb

jr_000_27ae::
	ld b, $08                                     ; $27ae: $06 $08
	ld a, h                                       ; $27b0: $7c
	ld c, a                                       ; $27b1: $4f
	or a                                          ; $27b2: $b7
	jp z, jr_000_27eb                             ; $27b3: $ca $eb $27

	ld a, [wC2F1]                                 ; $27b6: $fa $f1 $c2
	or a                                          ; $27b9: $b7
	jr z, jr_000_27cb                             ; $27ba: $28 $0f

jr_000_27bc::
	ld a, [wC2F6]                                 ; $27bc: $fa $f6 $c2
	scf                                           ; $27bf: $37
	rla                                           ; $27c0: $17
	ld [wC2F6], a                                 ; $27c1: $ea $f6 $c2
	dec c                                         ; $27c4: $0d
	jp z, Jump_000_27da                           ; $27c5: $ca $da $27

	dec b                                         ; $27c8: $05
	jr jr_000_27bc                                ; $27c9: $18 $f1

jr_000_27cb::
	ld a, [wC2F6]                                 ; $27cb: $fa $f6 $c2
	or a                                          ; $27ce: $b7
	rla                                           ; $27cf: $17
	ld [wC2F6], a                                 ; $27d0: $ea $f6 $c2
	dec c                                         ; $27d3: $0d
	jp z, Jump_000_27da                           ; $27d4: $ca $da $27

	dec b                                         ; $27d7: $05
	jr jr_000_27cb                                ; $27d8: $18 $f1

Jump_000_27da::
	dec b                                         ; $27da: $05
	ld a, b                                       ; $27db: $78
	ld [wC2F2], a                                 ; $27dc: $ea $f2 $c2
	or a                                          ; $27df: $b7
	jr nz, jr_000_27eb                            ; $27e0: $20 $09

	ld a, [wC2F6]                                 ; $27e2: $fa $f6 $c2
	ld [de], a                                    ; $27e5: $12
	inc de                                        ; $27e6: $13
	xor a                                         ; $27e7: $af
	ld [wC2F6], a                                 ; $27e8: $ea $f6 $c2

jr_000_27eb::
	pop bc                                        ; $27eb: $c1
	pop hl                                        ; $27ec: $e1
	dec bc                                        ; $27ed: $0b
	ld a, b                                       ; $27ee: $78
	or c                                          ; $27ef: $b1
	jr z, jr_000_2808                             ; $27f0: $28 $16

	ld a, [wC2F3]                                 ; $27f2: $fa $f3 $c2
	or a                                          ; $27f5: $b7
	jp z, Jump_000_274e                           ; $27f6: $ca $4e $27

	ld a, [wC2F1]                                 ; $27f9: $fa $f1 $c2
	xor $ff                                       ; $27fc: $ee $ff
	ld [wC2F1], a                                 ; $27fe: $ea $f1 $c2
	xor a                                         ; $2801: $af
	ld [wC2F3], a                                 ; $2802: $ea $f3 $c2
	jp Jump_000_274e                              ; $2805: $c3 $4e $27


jr_000_2808::
	ld a, [wC2F2]                                 ; $2808: $fa $f2 $c2
	ld b, a                                       ; $280b: $47
	or a                                          ; $280c: $b7
	jr z, jr_000_2821                             ; $280d: $28 $12

	ld a, [wC2F1]                                 ; $280f: $fa $f1 $c2
	or a                                          ; $2812: $b7
	ld a, [wC2F6]                                 ; $2813: $fa $f6 $c2
	scf                                           ; $2816: $37
	jr z, jr_000_281a                             ; $2817: $28 $01

	ccf                                           ; $2819: $3f

jr_000_281a::
	rla                                           ; $281a: $17
	ld [wC2F6], a                                 ; $281b: $ea $f6 $c2
	dec b                                         ; $281e: $05
	jr nz, jr_000_2808                            ; $281f: $20 $e7

jr_000_2821::
	ld [de], a                                    ; $2821: $12
	inc de                                        ; $2822: $13
	ld a, $aa                                     ; $2823: $3e $aa
	ld [de], a                                    ; $2825: $12
	inc de                                        ; $2826: $13
	ret                                           ; $2827: $c9


Call_000_2828::
	ld a, [wC132]                                 ; $2828: $fa $32 $c1
	and a                                         ; $282b: $a7
	jp nz, Jump_000_2903                          ; $282c: $c2 $03 $29

	ld a, [wC120]                                 ; $282f: $fa $20 $c1
	ld e, a                                       ; $2832: $5f
	ld hl, $78d3                                  ; $2833: $21 $d3 $78
	call Jump_000_216e                            ; $2836: $cd $6e $21
	ld [wC138], a                                 ; $2839: $ea $38 $c1
	ld a, [wC138]                                 ; $283c: $fa $38 $c1
	ld e, a                                       ; $283f: $5f
	ld hl, $78df                                  ; $2840: $21 $df $78
	call Jump_000_216e                            ; $2843: $cd $6e $21
	ld [wC139], a                                 ; $2846: $ea $39 $c1
	ld a, [wC138]                                 ; $2849: $fa $38 $c1
	cp $01                                        ; $284c: $fe $01
	jr z, jr_000_2854                             ; $284e: $28 $04

	cp $02                                        ; $2850: $fe $02
	jr nz, jr_000_285d                            ; $2852: $20 $09

jr_000_2854::
	ld hl, wC050                                  ; $2854: $21 $50 $c0
	ld de, $78b6                                  ; $2857: $11 $b6 $78
	call Call_000_2c11                            ; $285a: $cd $11 $2c

jr_000_285d::
	ld hl, WORK_RAM                                  ; $285d: $21 $00 $c0
	ld de, $789d                                  ; $2860: $11 $9d $78
	call Call_000_2c11                            ; $2863: $cd $11 $2c
	ld a, [wC120]                                 ; $2866: $fa $20 $c1
	cp $0b                                        ; $2869: $fe $0b
	jr nz, jr_000_287d                            ; $286b: $20 $10

	ld hl, wC090                                  ; $286d: $21 $90 $c0
	ld de, $7889                                  ; $2870: $11 $89 $78
	call Call_000_2c11                            ; $2873: $cd $11 $2c
	ld a, $02                                     ; $2876: $3e $02
	ld [wC135], a                                 ; $2878: $ea $35 $c1
	jr jr_000_28e7                                ; $287b: $18 $6a

jr_000_287d::
	ld hl, wC070                                  ; $287d: $21 $70 $c0
	ld de, $78b1                                  ; $2880: $11 $b1 $78
	call Call_000_2c11                            ; $2883: $cd $11 $2c
	ld hl, wC090                                  ; $2886: $21 $90 $c0
	ld de, $7884                                  ; $2889: $11 $84 $78
	ld a, [wC138]                                 ; $288c: $fa $38 $c1
	cp $04                                        ; $288f: $fe $04
	jr z, jr_000_289c                             ; $2891: $28 $09

	cp $03                                        ; $2893: $fe $03
	jr nz, jr_000_289f                            ; $2895: $20 $08

	ld a, $02                                     ; $2897: $3e $02
	ld [wC135], a                                 ; $2899: $ea $35 $c1

jr_000_289c::
	ld de, $78b6                                  ; $289c: $11 $b6 $78

jr_000_289f::
	call Call_000_2c11                            ; $289f: $cd $11 $2c
	ld hl, wC072                                  ; $28a2: $21 $72 $c0
	ld a, [wC138]                                 ; $28a5: $fa $38 $c1
	cp $04                                        ; $28a8: $fe $04
	jr nz, jr_000_28b0                            ; $28aa: $20 $04

	ld a, $e0                                     ; $28ac: $3e $e0
	jr jr_000_28b2                                ; $28ae: $18 $02

jr_000_28b0::
	ld a, $a4                                     ; $28b0: $3e $a4

jr_000_28b2::
	call SetSpriteId                            ; $28b2: $cd $59 $12
	ld hl, wC090                                  ; $28b5: $21 $90 $c0
	ld a, [wC120]                                 ; $28b8: $fa $20 $c1
	sub $08                                       ; $28bb: $d6 $08
	jr c, jr_000_28e7                             ; $28bd: $38 $28

	and a                                         ; $28bf: $a7
	jr nz, jr_000_28cd                            ; $28c0: $20 $0b

	ld a, $40                                     ; $28c2: $3e $40
	ld [hl+], a                                   ; $28c4: $22
	ld a, $28                                     ; $28c5: $3e $28
	ld [hl+], a                                   ; $28c7: $22
	ld a, $b1                                     ; $28c8: $3e $b1
	ld [hl], a                                    ; $28ca: $77
	jr jr_000_28e7                                ; $28cb: $18 $1a

jr_000_28cd::
	cp $01                                        ; $28cd: $fe $01
	jr nz, jr_000_28d9                            ; $28cf: $20 $08

	ld de, $7893                                  ; $28d1: $11 $93 $78
	call Call_000_2c11                            ; $28d4: $cd $11 $2c
	jr jr_000_28df                                ; $28d7: $18 $06

jr_000_28d9::
	ld de, $7898                                  ; $28d9: $11 $98 $78
	call Call_000_2c11                            ; $28dc: $cd $11 $2c

jr_000_28df::
	ld hl, wC092                                  ; $28df: $21 $92 $c0
	ld a, $e8                                     ; $28e2: $3e $e8
	call SetSpriteId                            ; $28e4: $cd $59 $12

jr_000_28e7::
	xor a                                         ; $28e7: $af
	ld [wC385], a                                 ; $28e8: $ea $85 $c3
	ld [wC2D9], a                                 ; $28eb: $ea $d9 $c2
	ld [wC13A], a                                 ; $28ee: $ea $3a $c1
	ld [wC0E2], a                                 ; $28f1: $ea $e2 $c0
	inc a                                         ; $28f4: $3c
	ld [wC132], a                                 ; $28f5: $ea $32 $c1
	ld a, [wTileSize]                                 ; $28f8: $fa $d1 $c0
	ld [wC134], a                                 ; $28fb: $ea $34 $c1
	ld a, $09                                     ; $28fe: $3e $09
	ld [wC384], a                                 ; $2900: $ea $84 $c3

Jump_000_2903::
	ld a, [wFrameCounter]                                 ; $2903: $fa $a4 $c0
	and $01                                       ; $2906: $e6 $01
	ret nz                                        ; $2908: $c0

	call Call_000_0db8                            ; $2909: $cd $b8 $0d
	ld a, [wC135]                                 ; $290c: $fa $35 $c1
	cp $03                                        ; $290f: $fe $03
	jp nc, Jump_000_29b9                          ; $2911: $d2 $b9 $29

	cp $01                                        ; $2914: $fe $01
	jr z, jr_000_2948                             ; $2916: $28 $30

	ld a, [wC138]                                 ; $2918: $fa $38 $c1
	cp $03                                        ; $291b: $fe $03
	jr z, jr_000_292a                             ; $291d: $28 $0b

	ld a, [wC139]                                 ; $291f: $fa $39 $c1
	and a                                         ; $2922: $a7
	jr z, jr_000_292a                             ; $2923: $28 $05

	ld a, $01                                     ; $2925: $3e $01
	ld [wC0E2], a                                 ; $2927: $ea $e2 $c0

jr_000_292a::
	ld a, $01                                     ; $292a: $3e $01
	ld [wC133], a                                 ; $292c: $ea $33 $c1
	ld a, [wC120]                                 ; $292f: $fa $20 $c1
	cp $0b                                        ; $2932: $fe $0b
	jr nz, jr_000_293b                            ; $2934: $20 $05

	ld de, $786f                                  ; $2936: $11 $6f $78
	jr jr_000_293e                                ; $2939: $18 $03

jr_000_293b::
	ld de, $786d                                  ; $293b: $11 $6d $78

jr_000_293e::
	ld hl, WORK_RAM                                  ; $293e: $21 $00 $c0
	ld a, $f0                                     ; Disable arrow keys
	ldh [hKeys], a                                ; $2943: $e0 $8b
	call Call_000_2be3                            ; $2945: $cd $e3 $2b

jr_000_2948::
	ld a, [wC135]                                 ; $2948: $fa $35 $c1
	cp $02                                        ; $294b: $fe $02
	jr z, jr_000_29a0                             ; $294d: $28 $51

	ld a, $02                                     ; $294f: $3e $02
	ld [wC133], a                                 ; $2951: $ea $33 $c1
	ld a, [wC138]                                 ; $2954: $fa $38 $c1
	cp $03                                        ; $2957: $fe $03
	jr z, jr_000_296b                             ; $2959: $28 $10

	cp $04                                        ; $295b: $fe $04
	jr z, jr_000_296b                             ; $295d: $28 $0c

	ld a, [wC139]                                 ; $295f: $fa $39 $c1
	ld e, a                                       ; $2962: $5f
	ld hl, $78d1                                  ; $2963: $21 $d1 $78
	call Jump_000_216e                            ; $2966: $cd $6e $21
	jr jr_000_296d                                ; $2969: $18 $02

jr_000_296b::
	ld a, $d0                                     ; $296b: $3e $d0

jr_000_296d::
	ld [wC136], a                                 ; $296d: $ea $36 $c1
	ld a, [wC139]                                 ; $2970: $fa $39 $c1
	ld hl, $7865                                  ; $2973: $21 $65 $78
	call Call_000_0e7c                            ; $2976: $cd $7c $0e
	push hl                                       ; $2979: $e5
	ld a, [wC139]                                 ; $297a: $fa $39 $c1
	ld e, a                                       ; $297d: $5f
	ld hl, $78cd                                  ; $297e: $21 $cd $78
	call Jump_000_216e                            ; $2981: $cd $6e $21
	ld [wC137], a                                 ; $2984: $ea $37 $c1
	ld e, a                                       ; $2987: $5f
	ld d, $00                                     ; $2988: $16 $00
	ld hl, WORK_RAM                                  ; $298a: $21 $00 $c0
	add hl, de                                    ; $298d: $19
	pop de                                        ; $298e: $d1
	ld a, [wC139]                                 ; $298f: $fa $39 $c1
	cp $02                                        ; $2992: $fe $02
	jr c, jr_000_2999                             ; $2994: $38 $03

	xor a                                         ; $2996: $af
	jr jr_000_299b                                ; $2997: $18 $02

jr_000_2999::
	ld a, $f0                                     ; $2999: $3e $f0

jr_000_299b::
	ldh [hKeys], a                                  ; $299b: $e0 $8b
	call Call_000_2be3                            ; $299d: $cd $e3 $2b

jr_000_29a0::
	call Call_000_1236                            ; $29a0: $cd $36 $12
	ld a, [wC134]                                 ; $29a3: $fa $34 $c1
	dec a                                         ; $29a6: $3d
	ld [wC134], a                                 ; $29a7: $ea $34 $c1
	ret nz                                        ; $29aa: $c0

	ld a, [wC2D9]                                 ; $29ab: $fa $d9 $c2
	inc a                                         ; $29ae: $3c
	ld [wC2D9], a                                 ; $29af: $ea $d9 $c2
	ld a, [wTileSize]                                 ; $29b2: $fa $d1 $c0
	ld [wC134], a                                 ; $29b5: $ea $34 $c1
	ret                                           ; $29b8: $c9


Jump_000_29b9::
	xor a                                         ; $29b9: $af
	ld [wC2D9], a                                 ; $29ba: $ea $d9 $c2
	ld a, [wC13A]                                 ; $29bd: $fa $3a $c1
	cp $06                                        ; $29c0: $fe $06
	jp z, Jump_000_2ba6                           ; $29c2: $ca $a6 $2b

	cp $05                                        ; $29c5: $fe $05
	jp z, Jump_000_2b31                           ; $29c7: $ca $31 $2b

	and a                                         ; $29ca: $a7
	jp nz, Jump_000_2aa1                          ; $29cb: $c2 $a1 $2a

	ld a, [wC138]                                 ; $29ce: $fa $38 $c1
	cp $05                                        ; $29d1: $fe $05
	jp z, Jump_000_2af5                           ; $29d3: $ca $f5 $2a

	and a                                         ; $29d6: $a7
	jr nz, jr_000_29fb                            ; $29d7: $20 $22

	ld a, $01                                     ; $29d9: $3e $01
	ld [wC135], a                                 ; $29db: $ea $35 $c1
	ld [wC139], a                                 ; $29de: $ea $39 $c1
	ld hl, wC002                                  ; $29e1: $21 $02 $c0
	ld a, $80                                     ; $29e4: $3e $80
	call SetSpriteId                            ; $29e6: $cd $59 $12
	call Call_000_0663                            ; $29e9: $cd $63 $06
	call Call_000_2c04                            ; $29ec: $cd $04 $2c
	ld hl, wC080                                  ; $29ef: $21 $80 $c0
	ld de, $78a2                                  ; $29f2: $11 $a2 $78
	call Call_000_2c11                            ; $29f5: $cd $11 $2c
	jp Jump_000_2aef                              ; $29f8: $c3 $ef $2a


jr_000_29fb::
	cp $03                                        ; $29fb: $fe $03
	jr nc, jr_000_2a39                            ; $29fd: $30 $3a

	call Call_000_2c04                            ; $29ff: $cd $04 $2c
	call Call_000_2c04                            ; $2a02: $cd $04 $2c
	ld a, [wC120]                                 ; $2a05: $fa $20 $c1
	cp $08                                        ; $2a08: $fe $08
	jr nc, jr_000_2a36                            ; $2a0a: $30 $2a

	call Call_000_0650                            ; $2a0c: $cd $50 $06
	ld a, [wC138]                                 ; $2a0f: $fa $38 $c1
	cp $02                                        ; $2a12: $fe $02
	jr nz, jr_000_2a36                            ; $2a14: $20 $20

	ld hl, wC030                                  ; $2a16: $21 $30 $c0
	ld de, $78a2                                  ; $2a19: $11 $a2 $78
	call Call_000_2c11                            ; $2a1c: $cd $11 $2c
	ld hl, wC032                                  ; $2a1f: $21 $32 $c0
	ld a, $e4                                     ; $2a22: $3e $e4
	call SetSpriteId                            ; $2a24: $cd $59 $12
	ld a, [wC120]                                 ; $2a27: $fa $20 $c1
	cp $02                                        ; $2a2a: $fe $02
	jr nz, jr_000_2a36                            ; $2a2c: $20 $08

	ld a, $d4                                     ; $2a2e: $3e $d4
	ld [wC032], a                                 ; $2a30: $ea $32 $c0
	ld [wC036], a                                 ; $2a33: $ea $36 $c0

jr_000_2a36::
	jp Jump_000_2aef                              ; $2a36: $c3 $ef $2a


jr_000_2a39::
	xor a                                         ; $2a39: $af
	ld [wC0E2], a                                 ; $2a3a: $ea $e2 $c0
	inc a                                         ; $2a3d: $3c
	ld [wC135], a                                 ; $2a3e: $ea $35 $c1
	ld [wC139], a                                 ; $2a41: $ea $39 $c1
	ld a, [wC138]                                 ; $2a44: $fa $38 $c1
	cp $03                                        ; $2a47: $fe $03
	jr nz, jr_000_2a65                            ; $2a49: $20 $1a

	call Call_000_0663                            ; $2a4b: $cd $63 $06
	ld hl, wC002                                  ; $2a4e: $21 $02 $c0
	ld a, $c8                                     ; $2a51: $3e $c8
	call SetSpriteId                            ; $2a53: $cd $59 $12
	ld a, $78                                     ; $2a56: $3e $78
	ld [wC030], a                                 ; $2a58: $ea $30 $c0
	ld a, $30                                     ; $2a5b: $3e $30
	ld [wC031], a                                 ; $2a5d: $ea $31 $c0
	ld a, $ec                                     ; $2a60: $3e $ec
	ld [wC032], a                                 ; $2a62: $ea $32 $c0

jr_000_2a65::
	call Call_000_2c04                            ; $2a65: $cd $04 $2c
	ld hl, wC092                                  ; $2a68: $21 $92 $c0
	ld a, $c4                                     ; $2a6b: $3e $c4
	call SetSpriteId                            ; $2a6d: $cd $59 $12
	call Call_000_2c04                            ; $2a70: $cd $04 $2c
	ld a, [wC138]                                 ; $2a73: $fa $38 $c1
	cp $03                                        ; $2a76: $fe $03
	jr nz, jr_000_2a7f                            ; $2a78: $20 $05

	ld a, $d4                                     ; $2a7a: $3e $d4
	ld [wC032], a                                 ; $2a7c: $ea $32 $c0

jr_000_2a7f::
	call Call_000_0663                            ; $2a7f: $cd $63 $06
	ld hl, wC002                                  ; $2a82: $21 $02 $c0
	ld a, $b8                                     ; $2a85: $3e $b8
	call SetSpriteId                            ; $2a87: $cd $59 $12
	call Call_000_2c04                            ; $2a8a: $cd $04 $2c
	ld hl, wC002                                  ; $2a8d: $21 $02 $c0
	ld a, $b4                                     ; $2a90: $3e $b4
	call SetSpriteId                            ; $2a92: $cd $59 $12
	ld hl, wC080                                  ; $2a95: $21 $80 $c0
	ld de, $78a2                                  ; $2a98: $11 $a2 $78
	call Call_000_2c11                            ; $2a9b: $cd $11 $2c
	jp Jump_000_2aef                              ; $2a9e: $c3 $ef $2a


Jump_000_2aa1::
	call Call_000_2bba                            ; $2aa1: $cd $ba $2b
	ld a, [wC138]                                 ; $2aa4: $fa $38 $c1
	cp $03                                        ; $2aa7: $fe $03
	jr nz, jr_000_2aad                            ; $2aa9: $20 $02

	jr jr_000_2ab1                                ; $2aab: $18 $04

jr_000_2aad::
	cp $04                                        ; $2aad: $fe $04
	jr nz, jr_000_2ab8                            ; $2aaf: $20 $07

jr_000_2ab1::
	ld a, $0b                                     ; $2ab1: $3e $0b
	ld [wC384], a                                 ; $2ab3: $ea $84 $c3
	jr jr_000_2abd                                ; $2ab6: $18 $05

jr_000_2ab8::
	ld a, $0a                                     ; $2ab8: $3e $0a
	ld [wC384], a                                 ; $2aba: $ea $84 $c3

jr_000_2abd::
	call jr_000_26cc                              ; $2abd: $cd $cc $26
	ld a, [wC120]                                 ; $2ac0: $fa $20 $c1
	and a                                         ; $2ac3: $a7
	jr z, jr_000_2aca                             ; $2ac4: $28 $04

	ld a, $40                                     ; $2ac6: $3e $40
	jr jr_000_2aca                                ; $2ac8: $18 $00

jr_000_2aca::
	ld [wGameplayType], a                         ; $2aca: $ea $ec $c2
	ld [wC133], a                                 ; $2acd: $ea $33 $c1
	xor a                                         ; $2ad0: $af
	ld [wGameplaySubtype], a                      ; $2ad1: $ea $f0 $c2
	ld a, [wC12D]                                 ; $2ad4: $fa $2d $c1
	and a                                         ; $2ad7: $a7
	jr nz, jr_000_2add                            ; $2ad8: $20 $03

	jp Jump_000_0198                              ; $2ada: $c3 $98 $01


jr_000_2add::
	ld a, $06                                     ; $2add: $3e $06
	ld [wGameplayType], a                         ; $2adf: $ea $ec $c2
	ld [wC133], a                                 ; $2ae2: $ea $33 $c1
	ld a, [wC120]                                 ; $2ae5: $fa $20 $c1
	inc a                                         ; $2ae8: $3c
	ld [wC120], a                                 ; $2ae9: $ea $20 $c1
	jp Jump_000_0198                              ; $2aec: $c3 $98 $01


Jump_000_2aef::
	ld a, $01                                     ; $2aef: $3e $01
	ld [wC13A], a                                 ; $2af1: $ea $3a $c1
	ret                                           ; $2af4: $c9


Jump_000_2af5::
	ld a, $01                                     ; $2af5: $3e $01
	ld [wC135], a                                 ; $2af7: $ea $35 $c1
	ld [wC139], a                                 ; $2afa: $ea $39 $c1
	call Call_000_0663                            ; $2afd: $cd $63 $06
	ld hl, wC002                                  ; $2b00: $21 $02 $c0
	ld a, $ea                                     ; $2b03: $3e $ea
	call SetSpriteId                            ; $2b05: $cd $59 $12
	ld a, $78                                     ; $2b08: $3e $78
	ld [wC030], a                                 ; $2b0a: $ea $30 $c0
	ld a, $50                                     ; $2b0d: $3e $50
	ld [wC031], a                                 ; $2b0f: $ea $31 $c0
	ld a, $ee                                     ; $2b12: $3e $ee
	ld [wC032], a                                 ; $2b14: $ea $32 $c0
	ld hl, wC092                                  ; $2b17: $21 $92 $c0
	ld a, $bc                                     ; $2b1a: $3e $bc
	call SetSpriteId                            ; $2b1c: $cd $59 $12
	call Call_000_2c04                            ; $2b1f: $cd $04 $2c
	ld hl, wC080                                  ; $2b22: $21 $80 $c0
	ld de, $78a7                                  ; $2b25: $11 $a7 $78
	call Call_000_2c11                            ; $2b28: $cd $11 $2c
	ld a, $05                                     ; $2b2b: $3e $05
	ld [wC13A], a                                 ; $2b2d: $ea $3a $c1
	ret                                           ; $2b30: $c9


Jump_000_2b31::
	ld hl, $3e94                                  ; $2b31: $21 $94 $3e
	call Call_000_2736                            ; $2b34: $cd $36 $27
	ld hl, wC082                                  ; $2b37: $21 $82 $c0
	ld a, $d4                                     ; $2b3a: $3e $d4
	call SetSpriteId                            ; $2b3c: $cd $59 $12
	ld a, $d4                                     ; $2b3f: $3e $d4
	ld [wC032], a                                 ; $2b41: $ea $32 $c0
	call Call_000_0650                            ; $2b44: $cd $50 $06
	call jr_000_26d3                              ; $2b47: $cd $d3 $26
	ld a, $01                                     ; $2b4a: $3e $01
	ld [wC384], a                                 ; $2b4c: $ea $84 $c3
	call Call_000_2c04                            ; $2b4f: $cd $04 $2c
	ld hl, wC090                                  ; $2b52: $21 $90 $c0
	ld de, $788e                                  ; $2b55: $11 $8e $78
	call Call_000_2c11                            ; $2b58: $cd $11 $2c
	ld a, $d8                                     ; $2b5b: $3e $d8
	ld [wC133], a                                 ; $2b5d: $ea $33 $c1
	ld a, $de                                     ; $2b60: $3e $de
	ld b, $03                                     ; $2b62: $06 $03

jr_000_2b64::
	push bc                                       ; $2b64: $c5
	push af                                       ; $2b65: $f5
	call Call_000_1236                            ; $2b66: $cd $36 $12
	call Call_000_2c04                            ; $2b69: $cd $04 $2c
	ld hl, wC092                                  ; $2b6c: $21 $92 $c0
	ld a, $d4                                     ; $2b6f: $3e $d4
	call SetSpriteId                            ; $2b71: $cd $59 $12
	pop af                                        ; $2b74: $f1
	ld hl, wC002                                  ; $2b75: $21 $02 $c0
	call SetSpriteId                            ; $2b78: $cd $59 $12
	push af                                       ; $2b7b: $f5
	ld a, [wC133]                                 ; $2b7c: $fa $33 $c1
	ld [wC096], a                                 ; $2b7f: $ea $96 $c0
	inc a                                         ; $2b82: $3c
	ld [wC09E], a                                 ; $2b83: $ea $9e $c0
	inc a                                         ; $2b86: $3c
	ld [wC133], a                                 ; $2b87: $ea $33 $c1
	pop af                                        ; $2b8a: $f1
	pop bc                                        ; $2b8b: $c1
	dec b                                         ; $2b8c: $05
	jr nz, jr_000_2b64                            ; $2b8d: $20 $d5

	ld a, $01                                     ; $2b8f: $3e $01
	ld [wC135], a                                 ; $2b91: $ea $35 $c1
	ld [wC139], a                                 ; $2b94: $ea $39 $c1
	ld hl, wC080                                  ; $2b97: $21 $80 $c0
	ld de, $78ac                                  ; $2b9a: $11 $ac $78
	call Call_000_2c11                            ; $2b9d: $cd $11 $2c
	ld a, $06                                     ; $2ba0: $3e $06
	ld [wC13A], a                                 ; $2ba2: $ea $3a $c1
	ret                                           ; $2ba5: $c9


Jump_000_2ba6::
	call Call_000_2c04                            ; $2ba6: $cd $04 $2c
	xor a                                         ; $2ba9: $af
	ld [wC133], a                                 ; $2baa: $ea $33 $c1
	ld [wC0A2], a                                 ; $2bad: $ea $a2 $c0
	ld [wC0D7], a                                 ; $2bb0: $ea $d7 $c0
	inc a                                         ; $2bb3: $3c
	ld [wHasWon], a                                 ; $2bb4: $ea $a3 $c0
	jp Jump_000_02cd                              ; $2bb7: $c3 $cd $02


Call_000_2bba::
	ld hl, TextSpacesShort                                  ; $2bba: $21 $50 $78
	call CopyTilesToVRAM                            ; $2bbd: $cd $0a $1f
	ld hl, $78e5                                  ; $2bc0: $21 $e5 $78
	ld a, [wC120]                                 ; $2bc3: $fa $20 $c1
	call Call_000_0e7c                            ; $2bc6: $cd $7c $0e
	call Call_000_149f                            ; $2bc9: $cd $9f $14
	call jr_000_1f0d                              ; $2bcc: $cd $0d $1f
	ld hl, $9905                                  ; $2bcf: $21 $05 $99
	ld a, $f0                                     ; $2bd2: $3e $f0
	ld [wGameplayType], a                         ; $2bd4: $ea $ec $c2
	call Call_000_1ef9                                    ; $2bd7: $cd $f9 $1e
	ld a, $06                                     ; $2bda: $3e $06
	ld [wGameplayType], a                         ; $2bdc: $ea $ec $c2
	call Call_000_2c04                            ; $2bdf: $cd $04 $2c
	ret                                           ; $2be2: $c9


Call_000_2be3::
	ld a, [wC2D9]                                 ; $2be3: $fa $d9 $c2
	add e                                         ; $2be6: $83
	ld e, a                                       ; $2be7: $5f
	ld a, d                                       ; $2be8: $7a
	adc $00                                       ; $2be9: $ce $00
	ld d, a                                       ; $2beb: $57
	ld a, [de]                                    ; $2bec: $1a
	cp $fe                                        ; $2bed: $fe $fe
	jr z, jr_000_2bf8                             ; $2bef: $28 $07

	ld [wC0D0], a                                 ; $2bf1: $ea $d0 $c0
	call Call_000_0800                            ; $2bf4: $cd $00 $08
	ret                                           ; $2bf7: $c9


jr_000_2bf8::
	ld a, [wC133]                                 ; $2bf8: $fa $33 $c1
	ld b, a                                       ; $2bfb: $47
	ld a, [wC135]                                 ; $2bfc: $fa $35 $c1
	add b                                         ; $2bff: $80
	ld [wC135], a                                 ; $2c00: $ea $35 $c1
	ret                                           ; $2c03: $c9


Call_000_2c04::
	ld a, [wTimerSeconds]                                 ; $2c04: $fa $f2 $c0
	ld b, a                                       ; $2c07: $47

jr_000_2c08::
	ld a, [wTimerSeconds]                                 ; $2c08: $fa $f2 $c0
	sub b                                         ; $2c0b: $90
	cp $02                                        ; $2c0c: $fe $02
	jr nz, jr_000_2c08                            ; $2c0e: $20 $f8

	ret                                           ; $2c10: $c9


Call_000_2c11::
	push hl                                       ; $2c11: $e5
	ld a, [de]                                    ; $2c12: $1a
	inc de                                        ; $2c13: $13
	push de                                       ; $2c14: $d5
	push hl                                       ; $2c15: $e5
	ld hl, $78bb                                  ; $2c16: $21 $bb $78
	call Call_000_0e7c                            ; $2c19: $cd $7c $0e
	push hl                                       ; $2c1c: $e5
	pop de                                        ; $2c1d: $d1
	pop hl                                        ; $2c1e: $e1
	call Call_000_2c29                            ; $2c1f: $cd $29 $2c
	pop de                                        ; $2c22: $d1
	pop hl                                        ; $2c23: $e1
	inc hl                                        ; $2c24: $23
	call Call_000_2c29                            ; $2c25: $cd $29 $2c
	ret                                           ; $2c28: $c9


Call_000_2c29::
	ld b, $04                                     ; $2c29: $06 $04

jr_000_2c2b::
	ld a, [de]                                    ; $2c2b: $1a
	ld [hl+], a                                   ; $2c2c: $22
	inc de                                        ; $2c2d: $13
	inc hl                                        ; $2c2e: $23
	inc hl                                        ; $2c2f: $23
	inc hl                                        ; $2c30: $23
	dec b                                         ; $2c31: $05
	jr nz, jr_000_2c2b                            ; $2c32: $20 $f7

	ret                                           ; $2c34: $c9


Call_000_2c35::
	ld a, [wGameplayType]                         ; $2c35: $fa $ec $c2
	cp $06                                        ; $2c38: $fe $06
	ret nz                                        ; $2c3a: $c0

	call Call_000_0c0d                            ; $2c3b: $cd $0d $0c
	ld a, $10                                     ; $2c3e: $3e $10
	ld [wTileSize], a                                 ; $2c40: $ea $d1 $c0
	ld hl, wC092                                  ; $2c43: $21 $92 $c0
	ld a, $bc                                     ; $2c46: $3e $bc
	call SetSpriteId                            ; $2c48: $cd $59 $12
	ld hl, wC082                                  ; $2c4b: $21 $82 $c0
	ld a, $cc                                     ; $2c4e: $3e $cc
	call SetSpriteId                            ; $2c50: $cd $59 $12
	ld hl, wC052                                  ; $2c53: $21 $52 $c0
	ld a, $a4                                     ; $2c56: $3e $a4
	call SetSpriteId                            ; $2c58: $cd $59 $12
	ld hl, wC032                                  ; $2c5b: $21 $32 $c0
	ld a, $d4                                     ; $2c5e: $3e $d4
	call SetSpriteId                            ; $2c60: $cd $59 $12
	ld hl, wC042                                  ; $2c63: $21 $42 $c0
	ld a, $d4                                     ; $2c66: $3e $d4
	call SetSpriteId                            ; $2c68: $cd $59 $12
	ld hl, wC052                                  ; $2c6b: $21 $52 $c0
	ld a, $d4                                     ; $2c6e: $3e $d4
	call SetSpriteId                            ; $2c70: $cd $59 $12
	ld hl, wC132                                  ; $2c73: $21 $32 $c1
	ld bc, $0009                                  ; $2c76: $01 $09 $00
	call Call_000_2143                            ; $2c79: $cd $43 $21
	xor a                                         ; $2c7c: $af
	ld [wC0E2], a                                 ; $2c7d: $ea $e2 $c0
	ld [wC0CC], a                                 ; $2c80: $ea $cc $c0
	ld [wC0F1], a                                 ; $2c83: $ea $f1 $c0
	ld [wC0E1], a                                 ; $2c86: $ea $e1 $c0
	ret                                           ; $2c89: $c9


Call_000_2c8a::
	ld a, [wGameplayType]                         ; $2c8a: $fa $ec $c2
	cp $06                                        ; $2c8d: $fe $06
	jr nz, jr_000_2cbc                            ; $2c8f: $20 $2b

	ld hl, $7285                                  ; $2c91: $21 $85 $72
	ld de, $8b40                                  ; $2c94: $11 $40 $8b
	ld bc, $0200                                  ; $2c97: $01 $00 $02
	call CopyData                                 ; $2c9a: $cd $5b $21
	ld hl, $7485                                  ; $2c9d: $21 $85 $74
	ld de, vTiles1                                ; $2ca0: $11 $80 $8d
	ld bc, Start                                  ; $2ca3: $01 $50 $01
	call CopyData                                 ; $2ca6: $cd $5b $21
	ld a, [wC120]                                 ; $2ca9: $fa $20 $c1
	cp $0b                                        ; $2cac: $fe $0b
	jr nz, jr_000_2cbc                            ; $2cae: $20 $0c

	ld hl, $75d5                                  ; $2cb0: $21 $d5 $75
	ld de, vTiles1                                ; $2cb3: $11 $80 $8d
	ld bc, $0170                                  ; $2cb6: $01 $70 $01
	call CopyData                                 ; $2cb9: $cd $5b $21

jr_000_2cbc::
	ret                                           ; $2cbc: $c9


Call_000_2cbd::
	ld a, [wGameplayType]                         ; $2cbd: $fa $ec $c2
	cp $08                                        ; $2cc0: $fe $08
	ret nz                                        ; $2cc2: $c0

	call ClearBGMap                            ; $2cc3: $cd $4c $21
	ld a, $02                                     ; $2cc6: $3e $02
	ld [wC2F7], a                                 ; $2cc8: $ea $f7 $c2
	ld a, $98                                     ; $2ccb: $3e $98
	ld [wVRAMPointerHigh], a                                 ; $2ccd: $ea $f7 $c0
	ld a, $80                                     ; $2cd0: $3e $80
	ld [wVRAMPointerLow], a                                 ; $2cd2: $ea $f8 $c0
	ld hl, TextSpacesLong                                  ; $2cd5: $21 $47 $78
	call CopyTilesToVRAM                            ; $2cd8: $cd $0a $1f
	ld hl, $2dd3                                  ; $2cdb: $21 $d3 $2d
	call Call_000_149f                            ; $2cde: $cd $9f $14
	call jr_000_1f0d                              ; $2ce1: $cd $0d $1f
	call RenderText                            ; $2ce4: $cd $e1 $1b
	ld a, $00                                     ; $2ce7: $3e $00
	ld [wVRAMPointerLow], a                                 ; $2ce9: $ea $f8 $c0
	ld a, $99                                     ; $2cec: $3e $99
	ld [wVRAMPointerHigh], a                                 ; $2cee: $ea $f7 $c0
	ld hl, TextSpacesLong                                  ; $2cf1: $21 $47 $78
	call CopyTilesToVRAM                            ; $2cf4: $cd $0a $1f
	ld hl, $2dec                                  ; $2cf7: $21 $ec $2d
	call Call_000_149f                            ; $2cfa: $cd $9f $14
	call jr_000_1f0d                              ; $2cfd: $cd $0d $1f
	call RenderText                            ; $2d00: $cd $e1 $1b
	ld hl, wC032                                  ; $2d03: $21 $32 $c0
	ld a, $d4                                     ; $2d06: $3e $d4

Call_000_2d08::
	call SetSpriteId                            ; $2d08: $cd $59 $12
	ld hl, wC042                                  ; $2d0b: $21 $42 $c0
	ld a, $d4                                     ; $2d0e: $3e $d4
	call SetSpriteId                            ; $2d10: $cd $59 $12
	ld hl, wC052                                  ; $2d13: $21 $52 $c0
	ld a, $d4                                     ; $2d16: $3e $d4
	call SetSpriteId                            ; $2d18: $cd $59 $12
	ret                                           ; $2d1b: $c9


Call_000_2d1c::
	call Call_000_1295                            ; $2d1c: $cd $95 $12
	call Call_000_1295                            ; $2d1f: $cd $95 $12
	ldh a, [hKeys]                                  ; $2d22: $f0 $8b
	and $c0                                       ; $2d24: $e6 $c0
	ret z                                         ; $2d26: $c8

	and $80                                       ; $2d27: $e6 $80
	jr z, jr_000_2d35                             ; $2d29: $28 $0a

	ld a, [wC2F7]                                 ; $2d2b: $fa $f7 $c2
	dec a                                         ; $2d2e: $3d
	jr nz, jr_000_2d3f                            ; $2d2f: $20 $0e

	ld a, $07                                     ; $2d31: $3e $07
	jr jr_000_2d3f                                ; $2d33: $18 $0a

jr_000_2d35::
	ld a, [wC2F7]                                 ; $2d35: $fa $f7 $c2
	inc a                                         ; $2d38: $3c
	cp $08                                        ; $2d39: $fe $08
	jr nz, jr_000_2d3f                            ; $2d3b: $20 $02

	ld a, $01                                     ; $2d3d: $3e $01

jr_000_2d3f::
	ld [wC2F7], a                                 ; $2d3f: $ea $f7 $c2
	ld a, $f0                                     ; $2d42: $3e $f0
	ld [wGameplayType], a                         ; $2d44: $ea $ec $c2
	ld hl, TextSpacesLong                                  ; $2d47: $21 $47 $78
	call CopyTilesToVRAM                            ; $2d4a: $cd $0a $1f
	ld hl, $9900                                  ; $2d4d: $21 $00 $99
	call Call_000_2db7                            ; $2d50: $cd $b7 $2d
	ld hl, $2dc3                                  ; $2d53: $21 $c3 $2d
	ld a, [wC2F7]                                 ; $2d56: $fa $f7 $c2
	call Call_000_0e7c                            ; $2d59: $cd $7c $0e
	call Call_000_149f                            ; $2d5c: $cd $9f $14
	call jr_000_1f0d                              ; $2d5f: $cd $0d $1f
	ld hl, $9900                                  ; $2d62: $21 $00 $99
	call Call_000_2db7                            ; $2d65: $cd $b7 $2d
	ld a, $08                                     ; $2d68: $3e $08
	ld [wGameplayType], a                         ; $2d6a: $ea $ec $c2
	ld a, [wC2F7]                                 ; $2d6d: $fa $f7 $c2
	cp $07                                        ; $2d70: $fe $07
	jr z, jr_000_2d7c                             ; $2d72: $28 $08

	cp $05                                        ; $2d74: $fe $05
	jr nc, jr_000_2d87                            ; $2d76: $30 $0f

	ld [wC385], a                                 ; $2d78: $ea $85 $c3
	ret                                           ; $2d7b: $c9


jr_000_2d7c::
	ld [wC384], a                                 ; $2d7c: $ea $84 $c3
	xor a                                         ; $2d7f: $af
	ld [wC385], a                                 ; $2d80: $ea $85 $c3
	call jr_000_26cc                              ; $2d83: $cd $cc $26
	ret                                           ; $2d86: $c9


jr_000_2d87::
	cp $05                                        ; $2d87: $fe $05
	jr z, jr_000_2da0                             ; $2d89: $28 $15

	ld a, $09                                     ; $2d8b: $3e $09
	ld [wC384], a                                 ; $2d8d: $ea $84 $c3
	call jr_000_26cc                              ; $2d90: $cd $cc $26
	xor a                                         ; $2d93: $af
	ld [wC385], a                                 ; $2d94: $ea $85 $c3
	ld a, $0a                                     ; $2d97: $3e $0a

jr_000_2d99::
	ld [wC384], a                                 ; $2d99: $ea $84 $c3
	call jr_000_26cc                              ; $2d9c: $cd $cc $26
	ret                                           ; $2d9f: $c9


jr_000_2da0::
	ld [wC384], a                                 ; $2da0: $ea $84 $c3
	xor a                                         ; $2da3: $af
	ld [wC385], a                                 ; $2da4: $ea $85 $c3
	ld hl, $3e94                                  ; $2da7: $21 $94 $3e
	call Call_000_2736                            ; $2daa: $cd $36 $27

jr_000_2dad::
	call jr_000_26cc                              ; $2dad: $cd $cc $26
	call jr_000_26d3                              ; $2db0: $cd $d3 $26
	ld a, $06                                     ; $2db3: $3e $06
	jr jr_000_2d99                                ; $2db5: $18 $e2

Call_000_2db7::
	ld a, h                                       ; $2db7: $7c
	ld [wVRAMPointerHigh], a                                 ; $2db8: $ea $f7 $c0
	ld a, l                                       ; $2dbb: $7d
	ld [wVRAMPointerLow], a                                 ; $2dbc: $ea $f8 $c0
	call CopyTextToBuffer                            ; $2dbf: $cd $17 $1f
	ret                                           ; $2dc2: $c9
