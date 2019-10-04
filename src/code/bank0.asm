; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

Start:
    ld a, $04
    ld [wGameplayType], a
    ld a, $06
    ld [wGameplaySubtype], a
    ld hl, $411a
    ld de, $c398
    ld bc, $0007
    call Call_000_215b
    call Call_000_217c
    ld a, $03
    ldh [rTAC], a
    ld a, $07
    ldh [rTAC], a
    ld a, $02
    ld [$c385], a
    xor a
    ld [$c2ee], a
    ld [$c2ef], a
    ld a, $10
    ld [$c2d7], a
    ld [$c2d9], a
    call Call_000_0c04
    call Call_000_1793
    ld b, $03
    ld hl, $c38c

jr_000_0190:
    xor a
    ld [hl+], a
    ld a, $9b
    ld [hl+], a
    dec b
    jr nz, jr_000_0190

Jump_000_0198:
    call Call_000_0c0d
    ld a, $04
    ldh [rIE], a
    xor a
    ld [$c0f2], a
    call Call_000_212c
    ld sp, $fffe
    call Call_000_20b5
    ld hl, $61b5
    ld de, $87b0
    ld bc, $0dd0
    call Call_000_215b
    ld hl, $6785
    ld de, $9000
    ld bc, $06d0
    call Call_000_215b
    ld hl, $6a85
    ld de, $8d80
    ld bc, $0140
    call Call_000_215b
    ld a, [wGameplayType]
    cp $04
    jr nz, jr_000_01e3

    ld hl, $6d55
    ld de, $8800
    ld bc, $0530
    call Call_000_215b

jr_000_01e3:
    call Call_000_2c8a
    call Call_000_214c
    ld b, $a0
    ld a, $00
    ld hl, $c000

jr_000_01f0:
    ld [hl+], a
    dec b
    jr nz, jr_000_01f0

    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_1391
    call Call_000_12db
    call Call_000_0b33
    call Call_000_0384
    call Call_000_2c35
    call Call_000_2cbd
    call Call_000_0ab1
    call Call_000_1f34
    call Call_000_1b56
    ld a, $c3
    ldh [rLCDC], a
    ld a, $05
    ldh [rIE], a
    ldh [$93], a
    ei

Jump_000_0222:
    ld a, [$c0a4]
    inc a
    ld [$c0a4], a
    call Call_000_2691
    xor a
    ldh [$8b], a
    call Call_000_2084
    ld a, [wGameplayType]
    and $f0
    jr nz, jr_000_0288

    ld a, [wGameplayType]
    cp $01
    jr z, jr_000_027e

    cp $02
    jr z, jr_000_0283

    cp $03
    jr z, jr_000_028d

    cp $04
    jr z, jr_000_02a8

    cp $05
    jr z, jr_000_0292

    cp $06
    jr z, jr_000_029e

    cp $08
    jr z, jr_000_02a3

    call Call_000_0340
    ld a, [$c0fd]
    and $09
    jr nz, jr_000_0277

    ldh a, [$8b]
    and $08
    jp z, Jump_000_0277

    ld a, $30
    ld [wGameplayType], a
    xor a
    ld [$c385], a
    ld a, $07
    ld [$c384], a

Jump_000_0277:
jr_000_0277:
    ldh a, [$8b]
    ld [$c0fd], a
    jr jr_000_02f4

jr_000_027e:
    call Call_000_1616
    jr jr_000_02f4

jr_000_0283:
    call Call_000_1010
    jr jr_000_02f4

jr_000_0288:
    call Call_000_1bfe
    jr jr_000_0295

jr_000_028d:
    call Call_000_16af
    jr jr_000_02f4

jr_000_0292:
    call Call_000_17bf

jr_000_0295:
    ld a, [$c0fe]
    and a
    jp nz, Jump_000_0198

    jr jr_000_02f4

jr_000_029e:
    call Call_000_2828
    jr jr_000_02f4

jr_000_02a3:
    call Call_000_2d1c
    jr jr_000_02f4

jr_000_02a8:
    call Call_000_13de
    ld a, [$c0a3]
    and a
    jr nz, jr_000_02f4

    ldh a, [$8b]
    cp $08
    jr nz, jr_000_02c4

    ld a, $10
    ld [wGameplayType], a
    ld a, $08
    ld [$c384], a
    jp Jump_000_0198


jr_000_02c4:
    ldh a, [$8b]
    cp $47
    jr nz, jr_000_02d8

    ld [$c0a3], a

Jump_000_02cd:
    ld a, $04
    ld [wGameplayType], a
    ld [$c0d7], a
    jp Jump_000_0198


jr_000_02d8:
    ld a, [$c0f2]
    cp $05
    jr c, jr_000_02f4

    xor a
    ld [$c100], a
    ldh [rSCY], a
    inc a
    ld [$c2ed], a
    ld [wGameplayType], a
    ld a, $18
    ld [$c2d9], a
    jp Jump_000_0198


jr_000_02f4:
    db $76
    ldh a, [$91]
    and a
    jr z, jr_000_02f4

    xor a
    ldh [$91], a
    jp Jump_000_0222


InterruptVBlank:
    push af
    push bc
    push de
    push hl
    ld a, [wGameplayType]
    and $f0
    jr nz, jr_000_031d

    call $ff80
    xor a
    ld [$c0f5], a

jr_000_0312:
    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_0312

    call Call_000_053d

jr_000_031d:
    xor a
    ld [$c0ab], a
    call Call_000_1bdb
    ld a, $01
    ldh [$91], a
    pop hl
    pop de
    pop bc
    pop af
    reti


InterruptTimer:
    push af
    push bc
    push de
    push hl
    call Call_000_127d
    call Call_000_218e
    ld a, $01
    ldh [$97], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_0340:
Jump_000_0340:
    ldh a, [$8b]
    and a
    jr nz, jr_000_035f

    ld a, [$c0f2]
    cp $3c
    jr nz, jr_000_0363

    ld a, [$c0f1]
    and a
    jr nz, jr_000_0363

    ld [$c0d0], a
    ld a, $04
    ld [$c385], a
    ld [$c0f1], a
    jr jr_000_0363

jr_000_035f:
    xor a
    ld [$c0f2], a

jr_000_0363:
    call Call_000_06a8
    ld a, [$c0f1]
    and a
    ret z

    ld a, [$c0f2]
    and $01
    jr z, jr_000_0375

    call Call_000_0cd6

jr_000_0375:
    ldh a, [$8b]
    and $f0
    ret z

    xor a
    ld [$c0f1], a
    ld a, $03
    ld [$c385], a
    ret


Call_000_0384:
    ld a, [wGameplayType]
    cp $04
    ret nc

    call Call_000_1f7e
    ld a, [$c0ce]
    ld [$c0d7], a
    call Call_000_0572
    ld a, [$c0dd]
    ld l, a
    ld a, [$c0de]
    ld h, a
    ld de, $c87a

Jump_000_03a1:
    ld a, l
    ldh [$90], a
    ld a, h
    ldh [$8f], a
    xor a
    ld [$c0e3], a
    push bc
    push de
    push hl
    ld a, [de]
    and a
    ld [$c0e3], a
    jr z, jr_000_03bb

    call Call_000_04b0
    call Call_000_054c

jr_000_03bb:
    call Call_000_04f3
    and a
    ld c, a
    jr z, jr_000_03d3

    ld a, [$c0e3]
    sla a
    ld b, a
    ld a, $02
    add b
    push bc
    call Call_000_04b0
    call Call_000_054c
    pop bc

jr_000_03d3:
    ld a, [$c0e3]
    and c
    ld [$c0e3], a
    call Call_000_04f3
    and a
    jr z, jr_000_0416

    ld a, [$c0e3]
    and a
    jr z, jr_000_040e

    ld a, [$c0e6]
    and a
    jr z, jr_000_040e

    call Call_000_20fa
    ldh a, [$8d]
    and $f8
    ld [$c0a9], a
    ldh a, [$8e]
    and $f8
    ld [$c0aa], a
    call Call_000_0b2a
    xor a
    ld [$c0e6], a
    ld a, $d4
    ld [$c0ac], a
    call Call_000_054c
    jr jr_000_0416

jr_000_040e:
    ld a, $03
    call Call_000_04b0
    call Call_000_054c

jr_000_0416:
    xor a
    ld [$c0e3], a
    pop hl
    call Call_000_0500
    pop de
    ld a, [$c0d7]
    and a
    jr z, jr_000_0428

    inc de
    jr jr_000_0439

jr_000_0428:
    or a
    ld a, [$c0ce]
    ld b, a
    ld a, $14
    sub b
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    jr jr_000_043b

jr_000_0439:
    pop bc
    dec bc

jr_000_043b:
    ld a, c
    or b
    jp nz, Jump_000_03a1

    call Call_000_1fb9
    ld a, $01
    ld [$c0e7], a
    ld a, [wGameplayType]
    cp $02
    ret z

    ld a, [$c2ee]
    and a
    jr nz, jr_000_045b

    xor a
    ld [$c0a1], a
    jp Jump_000_11f2


jr_000_045b:
    call Call_000_047a
    call Call_000_0b2a
    xor a
    ld [$c0e6], a
    ld a, [$c2ef]
    sla a
    ld e, a
    ld d, $00
    ld hl, $c392
    add hl, de
    ld a, [hl+]
    ld [$c0c2], a
    ld a, [hl]
    ld [$c0c3], a
    ret


Call_000_047a:
    ld a, [$c2ef]
    sla a
    ld hl, $c38c
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ldh [$90], a
    ld a, [hl]
    ldh [$8f], a
    call Call_000_20fa
    ldh a, [$8d]
    and $f8
    ld [$c0a9], a
    ldh a, [$8e]
    and $f8
    ld [$c0aa], a
    ret


Call_000_049e:
Jump_000_049e:
    ld a, [$c0d3]
    call Call_000_04b0

Call_000_04a4:
Jump_000_04a4:
    ld a, $01
    ld [$c0ab], a

jr_000_04a9:
    ld a, [$c0ab]
    and a
    jr nz, jr_000_04a9

    ret


Call_000_04b0:
    push hl
    push de
    cp $02
    jr nz, jr_000_04d0

    ld a, [$c0e7]
    and a
    ld a, $02
    jr z, jr_000_04d0

    ld a, [$c0c6]
    ld e, a
    ld a, [$c0c7]
    ld d, a
    ld hl, $c87a

Jump_000_04c9:
    call Call_000_2164
    sla a
    add $02

Jump_000_04d0:
jr_000_04d0:
    ld e, a
    ld a, [$c0d1]
    cp $10
    jr z, jr_000_04dd

    ld hl, $04ee
    jr jr_000_04e0

jr_000_04dd:
    ld hl, $04e9

jr_000_04e0:
    call Call_000_216e
    ld [$c0ac], a
    pop de
    pop hl
    ret


    call nc, $a4a0
    xor b
    xor h
    call nc, $b9b8
    cp d
    cp e

Call_000_04f3:
    or a
    ld a, [$c2d0]
    add e
    ld e, a
    ld a, [$c2d1]
    adc d
    ld d, a
    ld a, [de]
    ret


Call_000_0500:
    ld a, [$c0ce]
    ld e, a
    ld a, [$c0d1]
    cp $08
    jr nz, jr_000_0518

    ld a, [$c0d7]
    and a

Call_000_050f:
    jr z, jr_000_0514

    inc hl
    jr jr_000_0535

jr_000_0514:
    ld a, $20
    jr jr_000_0526

jr_000_0518:
    ld a, [$c0d7]
    and a
    jr z, jr_000_0522

    inc hl
    inc hl
    jr jr_000_0535

jr_000_0522:
    sla e
    ld a, $40

jr_000_0526:
    sub e
    or a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [$c0ce]
    ld [$c0d7], a
    ret


jr_000_0535:
    ld a, [$c0d7]
    dec a
    ld [$c0d7], a
    ret


Call_000_053d:
    ld a, [wGameplayType]
    and $f0
    ret nz

    ld a, [$c0f3]
    and a
    jr z, jr_000_054c

    jp Jump_000_1be1


Call_000_054c:
Jump_000_054c:
jr_000_054c:
    ldh a, [$90]
    ld l, a
    ldh a, [$8f]
    ld h, a
    ld a, [$c0ac]
    ld [hl+], a
    inc a
    push af
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0570

    pop af
    ld [hl], a
    push af
    ld a, $1f
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop af
    inc a
    ld [hl+], a
    inc a
    ld [hl], a
    ret


jr_000_0570:
    pop af
    ret


Call_000_0572:
    ld hl, $0168
    ld a, l
    ld [$c2d0], a
    ld c, a
    ld a, h
    ld [$c2d1], a
    ld b, a
    push bc
    pop de
    ret


Call_000_0582:
    call Call_000_0627
    and a
    ret nz

    ld a, [$c0f4]
    and a
    jr z, jr_000_05b3

    ld a, $05
    ld [$c384], a
    xor a
    ld [$c385], a
    ld hl, $3e94
    call Call_000_2736
    call Call_000_26cc
    call Call_000_1f4a
    call Call_000_0650
    call Call_000_04a4
    call Call_000_26d3
    ld a, $06
    ld [$c384], a
    call Call_000_26cc

Jump_000_05b3:
jr_000_05b3:
    ld a, [$c0f2]
    ld b, a

jr_000_05b7:
    ld a, [$c0f2]
    sub b
    cp $02
    jr z, jr_000_05b7

    ld a, [$c2ee]
    and a
    jr z, jr_000_05cd

Jump_000_05c5:
    ld a, $70
    ld [wGameplayType], a
    jp Jump_000_0198


jr_000_05cd:
    call Call_000_05d8
    ld a, $40
    ld [wGameplayType], a
    jp Jump_000_0198


Call_000_05d8:
    call Call_000_061c
    ld hl, $c121
    ld a, [$c2ef]
    cp $05
    jr nc, jr_000_05e8

    ld a, [hl]
    jr jr_000_05ea

jr_000_05e8:
    inc hl
    ld a, [hl]

jr_000_05ea:
    or b
    and $1f
    ld [hl], a
    ld a, [$c121]
    cp $1f
    jr nz, jr_000_061b

    ld a, [$c122]
    cp $1f
    jr nz, jr_000_061b

    ld a, [$c120]
    add $01
    ld [$c120], a
    xor a
    ld [$c121], a
    ld [$c122], a
    ld [$c2ef], a
    ld a, $01
    ld [$c0e9], a
    ld a, $06
    ld [wGameplayType], a
    jp Jump_000_0198


jr_000_061b:
    ret


Call_000_061c:
    call Call_000_0c9c
    xor a
    scf

jr_000_0621:
    rla
    dec b
    jr nz, jr_000_0621

    ld b, a
    ret


Call_000_0627:
    call Call_000_0572
    xor a
    ld [$c0f4], a
    ld hl, $c87a

jr_000_0631:
    ld a, [hl]
    and a
    jr z, jr_000_0646

    push bc
    ld b, a
    ld a, [$c0f4]
    or b
    ld [$c0f4], a
    pop bc
    push hl
    add hl, de
    ld a, [hl]
    and a
    pop hl
    jr z, jr_000_064d

jr_000_0646:
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0631

    ret


jr_000_064d:
    ld a, $01
    ret


Call_000_0650:
    ld hl, $c002
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_065e

    ld a, $7b
    jr jr_000_0660

jr_000_065e:
    ld a, $7f

jr_000_0660:
    call Call_000_1259

Call_000_0663:
    ld hl, $c003
    xor a
    ld b, $04
    call Call_000_1275
    jp Jump_000_1236


Call_000_066f:
    ld hl, $c000
    ld a, [$c0d1]
    ld c, a
    ld a, [$c0d0]
    cp $00
    jr z, jr_000_0690

    cp $01
    jr z, jr_000_0698

    cp $02
    jr z, jr_000_06a0

    cp $03
    ret nz

    ld a, [hl+]
    add c
    ldh [$8d], a
    ld a, [hl]
    ldh [$8e], a
    ret


jr_000_0690:
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl]
    add c
    ldh [$8e], a
    ret


jr_000_0698:
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl]
    sub c
    ldh [$8e], a
    ret


jr_000_06a0:
    ld a, [hl+]
    sub c
    ldh [$8d], a
    ld a, [hl]
    ldh [$8e], a
    ret


Call_000_06a8:
    ld a, [$c0d1]
    cp $10
    jr z, jr_000_06bc

    call Call_000_04a4
    ld a, [$c0a4]
    and $01
    jr nz, jr_000_06bc

    call Call_000_04a4

jr_000_06bc:
    ld hl, $c000
    ld a, [$c0cf]
    and a
    jp nz, Jump_000_07f9

    ld [$c0cc], a
    ld a, [$c0d1]
    ld [$c0cf], a
    ld a, [wGameplayType]
    and a
    jr nz, jr_000_06f7

    ld a, [$c0e1]
    and a
    jr z, jr_000_06f7

    ld hl, $c0c2
    ld de, $c0ca
    ld a, [hl+]
    ld c, a
    ld a, [de]
    inc de
    cp c
    jr nz, jr_000_06f0

    ld a, [hl]
    ld c, a
    ld a, [de]
    cp c
    jr nz, jr_000_06f0

    jr jr_000_06f7

jr_000_06f0:
    ldh a, [$8b]
    cp $01
    jp z, Jump_000_0884

jr_000_06f7:
    call Call_000_0582
    call Call_000_093e
    cp $ff
    jp z, Jump_000_085b

    call Call_000_10c8
    and a
    jp nz, Jump_000_085b

    xor a
    ld [$c0d5], a
    ld a, $02
    ld [$c0d2], a
    call Call_000_0973
    cp $01
    ld [$c0e2], a
    jp z, Jump_000_085b

    ld a, $01
    ld [$c0d2], a
    call Call_000_0973
    ld hl, $c0d4
    ld a, [hl+]
    and [hl]
    jp nz, Jump_000_085b

    ld a, [$c0d4]

Jump_000_0730:
    ld [$c0e2], a
    ld [$c0e1], a
    call Call_000_0a68
    ld a, [$c0cc]
    and a
    jr nz, jr_000_077c

    call Call_000_0a19
    ld a, [$c0c2]
    ld [$c0ca], a
    ld a, [$c0c3]
    ld [$c0cb], a
    ld a, [$c0c4]
    ld [$c0c2], a
    ld e, a
    ld a, [$c0c5]
    ld [$c0c3], a
    ld d, a
    xor a
    call Call_000_2169
    ld a, [$c0d4]
    and a
    jr z, jr_000_078d

    ld a, [$c0c8]
    ld [$c0c6], a
    ld e, a
    ld a, [$c0c9]
    ld [$c0c7], a
    ld d, a
    ld a, $01
    call Call_000_2169
    call Call_000_08f4

jr_000_077c:
    ld hl, $c87a
    ld a, [$c0c6]
    ld e, a
    ld a, [$c0c7]
    ld d, a
    call Call_000_2164
    call Call_000_0912

jr_000_078d:
    ld a, [wGameplayType]
    cp $01
    jr z, jr_000_07f9

    ld a, [$c0cc]
    and a
    jr nz, jr_000_07b8

    call Call_000_0867
    call Call_000_0eea
    ld a, [$c2d7]
    add $01
    ld [$c2d7], a
    ld [$c2d9], a
    ld a, [$c2d8]
    adc $00
    ld [$c2d8], a
    ld [$c2da], a
    jr jr_000_07f6

jr_000_07b8:
    ld a, [$c101]
    and a
    jr z, jr_000_07c4

    dec a
    ld [$c101], a
    jr jr_000_07da

jr_000_07c4:
    ld a, [$c102]
    ld h, a
    ld a, [$c103]
    ld l, a
    dec hl
    ld a, h
    ld [$c102], a
    ld a, l
    ld [$c103], a
    ld a, $03
    ld [$c101], a

jr_000_07da:
    ld a, [$c0a5]
    ld [$c107], a
    ld a, [$c2d7]
    sub $01
    ld [$c2d7], a
    ld [$c2d9], a
    ld a, [$c2d8]
    sbc $00
    ld [$c2d8], a
    ld [$c2da], a

jr_000_07f6:
    call Call_000_1f7e

Jump_000_07f9:
jr_000_07f9:
    xor a
    ld [$c0d5], a
    ld hl, $c000

Call_000_0800:
Jump_000_0800:
    ld a, [$c0d0]
    cp $00
    jr z, jr_000_0818

    cp $01
    jr z, jr_000_081d

    cp $02
    jr z, jr_000_0822

    cp $03
    jp nz, Jump_000_0cc5

    ld c, $01
    jr jr_000_0824

jr_000_0818:
    inc hl
    ld c, $01
    jr jr_000_0824

jr_000_081d:
    inc hl
    ld c, $ff
    jr jr_000_0824

jr_000_0822:
    ld c, $ff

jr_000_0824:
    push hl
    pop de
    ld a, [$c0cc]
    and a
    jr z, jr_000_0832

    ld a, c
    xor $ff
    or $01
    ld c, a

jr_000_0832:
    ld b, $04

jr_000_0834:
    ld a, [hl]
    add c
    ld [hl+], a
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0851

    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_0834

jr_000_0844:
    call Call_000_0a32
    ld a, [$c0cf]
    dec a
    ld [$c0cf], a
    jp Jump_000_0cc5


jr_000_0851:
    ld a, $0f
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    jr jr_000_0844

Jump_000_085b:
    ld a, $01
    ld [$c0e2], a
    xor a
    ld [$c0cf], a
    jp Jump_000_0cc5


Call_000_0867:
    ld a, [$c2d8]
    cp $13
    ret c

    ld a, [$c2d7]
    cp $88
    ret c

    xor a
    ld [$c2d7], a
    ld [$c2d8], a
    ld [$c2d9], a
    ld [$c2da], a
    ld [$c0ff], a
    ret


Jump_000_0884:
    ld [$c0cc], a
    call Call_000_08da
    ld hl, $c9e2
    ld a, [$c0c6]
    ld e, a
    ld a, [$c0c7]
    ld d, a
    call Call_000_2164
    ld c, a
    xor a
    call Call_000_2169
    ld a, c
    and a
    jr z, jr_000_08ae

    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    ld a, $01
    call Call_000_2169

jr_000_08ae:
    ld a, [$c0ca]
    ld [$c0c2], a
    ld a, [$c0cb]
    ld [$c0c3], a
    ld a, $01
    ld [$c0d2], a
    call Call_000_0973
    ld a, [$c0c4]
    ld [$c0c6], a
    ld [$c0c8], a
    ld a, [$c0c5]
    ld [$c0c7], a
    ld [$c0c9], a
    ld a, [$c0d4]
    jp Jump_000_0730


Call_000_08da:
    call Call_000_066f
    call Call_000_20cd
    ld hl, $c87a
    ld a, [$c0c6]
    ld e, a
    ld a, [$c0c7]
    ld d, a
    call Call_000_2164
    ld [$c0d3], a
    jp Jump_000_049e


Call_000_08f4:
    call Call_000_066f
    call Call_000_20cd
    xor a
    ld [$c0d2], a
    call Call_000_0a19
    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    call Call_000_2164
    ld [$c0d3], a
    jp Jump_000_049e


Call_000_0912:
    and a
    jr z, jr_000_092b

    push hl
    ld hl, $c012
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0924

    ld a, $ac
    jr jr_000_0926

jr_000_0924:
    ld a, $bb

jr_000_0926:
    call Call_000_1259
    pop hl
    ret


jr_000_092b:
    push hl
    ld hl, $c012
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_093a

    ld a, $a4
    jr jr_000_0926

jr_000_093a:
    ld a, $b9
    jr jr_000_0926

Call_000_093e:
    ld a, [wGameplayType]
    and $01
    ret nz

    ldh a, [$8b]
    and $f0
    jr z, jr_000_095a

    cp $10
    jr z, jr_000_0961

    cp $20
    jr z, jr_000_0965

    cp $40
    jr z, jr_000_0969

    cp $80
    jr z, jr_000_095d

jr_000_095a:
    ld a, $ff
    ret


jr_000_095d:
    ld a, $03
    jr jr_000_096b

jr_000_0961:
    ld a, $00
    jr jr_000_096b

jr_000_0965:
    ld a, $01
    jr jr_000_096b

jr_000_0969:
    ld a, $02

jr_000_096b:
    ld [$c0d0], a
    xor a
    ld [$c0e1], a
    ret


Call_000_0973:
    ld a, [$c0d0]
    and $02
    jr z, jr_000_097f

    ld a, $14
    ld c, a
    jr jr_000_0981

jr_000_097f:
    ld c, $01

jr_000_0981:
    ld b, $00
    push bc
    ld a, c
    call Call_000_0a19
    ld a, [$c0d0]
    cp $01
    jr z, jr_000_09a8

    cp $02
    jr z, jr_000_09a8

    or a
    ld a, [$c0c2]
    add c
    ld c, a
    ld a, [$c0c3]
    adc $00
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [$c0d4], a
    pop bc
    add hl, bc
    jr jr_000_09c1

jr_000_09a8:
    or a
    ld a, [$c0c2]
    sub c
    ld c, a
    ld a, [$c0c3]
    sbc $00
    ld b, a
    add hl, bc
    ld a, [hl]
    ld [$c0d4], a
    pop bc
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc $00
    ld h, a

jr_000_09c1:
    ld a, [$c0d0]
    cp $01
    jr z, jr_000_09ee

    cp $02
    jr z, jr_000_09ee

    or a
    ld a, [$c0c2]
    add c
    ld [$c0c4], a
    ld a, [$c0c3]
    adc $00
    ld [$c0c5], a
    or a
    ld a, [$c0c4]
    add c
    ld [$c0c8], a
    ld a, [$c0c5]
    adc $00
    ld [$c0c9], a
    jr jr_000_0a0e

jr_000_09ee:
    or a
    ld a, [$c0c2]
    sub c
    ld [$c0c4], a
    ld a, [$c0c3]
    sbc $00
    ld [$c0c5], a
    or a
    ld a, [$c0c4]
    sub c
    ld [$c0c8], a
    ld a, [$c0c5]
    sbc $00
    ld [$c0c9], a

jr_000_0a0e:
    ld a, [$c0d5]
    or [hl]
    ld [$c0d5], a
    ld a, [$c0d4]
    ret


Call_000_0a19:
    ld hl, $c87a
    ld a, [$c0d2]
    and a
    ret z

    ld a, [$c2d0]
    ld e, a
    ld a, [$c2d1]
    ld d, a
    add hl, de
    ld a, [$c0d2]
    cp $01
    ret z

    add hl, de
    ret


Call_000_0a32:
    ld a, [$c0e1]
    and a
    jr z, jr_000_0a67

    ld b, $04
    ld a, [$c0d1]
    ld c, a
    cp $08
    jr nz, jr_000_0a44

    ld b, $01

jr_000_0a44:
    ld a, [$c0d0]
    cp $00
    jr z, jr_000_0a56

    cp $01
    jr z, jr_000_0a5a

    cp $02
    jr z, jr_000_0a5a

    cp $03
    ret nz

jr_000_0a56:
    ld a, [de]
    add c
    jr jr_000_0a5c

jr_000_0a5a:
    ld a, [de]
    sub c

jr_000_0a5c:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_0a44

jr_000_0a67:
    ret


Call_000_0a68:
    ld a, [$c0cc]
    and a
    jr nz, jr_000_0a86

    ld de, $c010
    ld a, [de]
    ldh [$8d], a
    and a
    jr z, jr_000_0a86

    inc de
    ld a, [de]
    ldh [$8e], a
    call Call_000_20cd
    ld a, $02
    ld [$c0d3], a
    call Call_000_049e

jr_000_0a86:
    ld a, [$c0e1]
    and a
    jr z, jr_000_0aa2

    ld hl, $c000
    ld de, $c010
    ld b, $04

jr_000_0a94:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc hl
    inc hl
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_0a94

    ret


jr_000_0aa2:
    ld de, $c010
    ld b, $04
    xor a

jr_000_0aa8:
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_0aa8

    ret


Call_000_0ab1:
Jump_000_0ab1:
    ld hl, $c002
    ld a, [$c0d1]
    cp $10
    jr z, jr_000_0ac6

    ld a, $b0
    ld [hl], a
    ld hl, $c012
    ld a, $b9
    ld [hl], a
    jr jr_000_0ad3

jr_000_0ac6:
    ld a, $80
    call Call_000_1259
    ld hl, $c012
    ld a, $a4
    call Call_000_1259

jr_000_0ad3:
    ld hl, $c020
    ld a, [wGameplayType]
    cp $02
    jr z, jr_000_0ae9

    xor a
    ld b, $04

jr_000_0ae0:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_0ae0

    jr jr_000_0b29

jr_000_0ae9:
    call Call_000_047a
    call Call_000_0b2a
    ld a, $40
    ld [$c0a9], a
    ld a, $48
    ld [$c0aa], a
    ld hl, $c020

jr_000_0afc:
    ld b, $00

jr_000_0afe:
    ld a, [$c0a9]
    ld [hl], a
    ld a, b
    and $02
    jr z, jr_000_0b0b

    ld a, [hl]
    add $08
    ld [hl], a

jr_000_0b0b:
    inc hl
    ld a, [$c0aa]
    ld [hl], a
    ld a, b
    and $01

Call_000_0b13:
    jr z, jr_000_0b19

    ld a, [hl]
    add $08
    ld [hl], a

jr_000_0b19:
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0b29

    inc hl
    inc hl
    inc hl
    inc b
    ld a, b
    cp $04
    jr nz, jr_000_0afe

jr_000_0b29:
    ret


Call_000_0b2a:
    ld hl, $c000
    ld a, [$c0d1]
    ld c, a
    jr jr_000_0afc

Call_000_0b33:
    ld a, [wGameplayType]
    cp $04
    ret nc

    ld a, [$c120]
    cp $0a
    jr nz, jr_000_0b9f

    ld a, [$c121]
    cp $1f
    jr nz, jr_000_0b9f

    ld a, [$c122]
    cp $07
    jr nz, jr_000_0b52

    ld a, $01
    jr jr_000_0b58

jr_000_0b52:
    cp $0f
    jr nz, jr_000_0b9f

    ld a, $02

jr_000_0b58:
    ld [$c0d9], a
    ld [$c2ee], a
    cp $01
    jr z, jr_000_0b66

    ld a, $08
    jr jr_000_0b68

jr_000_0b66:
    ld a, $10

jr_000_0b68:
    ld [$c0d1], a
    xor a
    ld [$c2ef], a
    call Call_000_12fa
    ld hl, $0bf4
    ld a, [$c0d9]
    dec a
    call Call_000_0e7c
    ld de, $c13b
    ld bc, $0087
    call Call_000_215b
    ld hl, $0bf8
    ld a, [$c0d9]
    dec a
    call Call_000_0e7c
    ld a, [hl+]
    ld [$c38c], a
    ld a, [hl+]
    ld [$c38d], a
    ld a, [hl+]
    ld [$c392], a
    ld a, [hl]
    ld [$c393], a

jr_000_0b9f:
    xor a
    ld [$c0cf], a
    ld [$c0d5], a
    ld [$c0d7], a
    ld [$c0ac], a
    ld [$c0e7], a
    ld [$c0f3], a
    ld [$c0f4], a
    ld [$c0fd], a
    ldh [rSCY], a
    ld a, $01
    ld [$c0e6], a
    ld a, [$c120]
    cp $0a
    jr nz, jr_000_0bce

    ld a, [$c122]
    or $18
    ld [$c122], a

jr_000_0bce:
    call Call_000_0c16
    xor a
    ld [$c0ee], a
    call Call_000_0e8f
    ld a, [wGameplayType]
    cp $02
    ret z

    call Call_000_0dc9
    ld a, [$c0d9]
    and a
    ret z

    xor a
    ld [$c0d9], a
    ld [$c120], a
    ld [$c121], a
    ld [$c122], a
    ret


    xor a
    ld b, d
    pop de
    ld b, d
    db $fc
    dec bc
    nop
    inc c
    add [hl]
    sbc b
    dec hl
    nop
    rrca
    sbc c
    xor a
    nop

Call_000_0c04:
    ld bc, $024a
    ld hl, $c0a0
    jp Jump_000_2143


Call_000_0c0d:
    ld bc, $0438
    ld hl, $c87a
    jp Jump_000_2143


Call_000_0c16:
    xor a
    ld [$c109], a
    call Call_000_0e02
    ld b, $03
    ld de, $c87a

jr_000_0c22:
    push bc
    push de
    ld a, [$c0cd]
    ld [$c0d7], a

jr_000_0c2a:
    call Call_000_0fb3
    push hl
    ld hl, $c10c
    ld a, [$c0ce]
    ld c, a
    ld b, $00
    push de
    call Call_000_215b
    pop de
    pop hl
    ld a, $14
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [$c0d7]
    dec a
    ld [$c0d7], a
    and a
    jr nz, jr_000_0c2a

    pop de
    ld bc, $0168
    ld a, c
    add e
    ld e, a
    ld a, b
    adc d
    ld d, a
    pop bc
    dec b
    jr nz, jr_000_0c22

    ld a, [wGameplayType]
    cp $02
    jr z, jr_000_0c7e

    ld a, [$c2ee]
    and a
    ret nz

    call Call_000_0cbd
    ret nc

    ld a, [$c0ee]
    and a
    ret nz

    ld hl, $c87a
    ld de, $c9e2
    ld bc, $0168
    jp Jump_000_215b


jr_000_0c7e:
    call Call_000_0dc9
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0c8c

    ld a, $40
    jr jr_000_0c8e

jr_000_0c8c:
    ld a, $80

jr_000_0c8e:
    ld [$c0c2], a
    ld [$c0c4], a
    xor a
    ld [$c0c3], a
    ld [$c0c5], a
    ret


Call_000_0c9c:
    ld a, [$c2ef]
    cp $05
    jr c, jr_000_0cb7

    sub $04
    ld b, a
    ld a, [$c120]
    cp $0a
    jr nz, jr_000_0cb3

    ld a, [$c122]
    or $18
    ret


jr_000_0cb3:
    ld a, [$c122]
    ret


jr_000_0cb7:
    inc a
    ld b, a
    ld a, [$c121]
    ret


Call_000_0cbd:
    call Call_000_0c9c

jr_000_0cc0:
    rrca
    dec b
    jr nz, jr_000_0cc0

    ret


Jump_000_0cc5:
    ld a, [wGameplayType]
    cp $02
    ret z

    ld a, [$c2ed]
    and a
    jr nz, jr_000_0cd6

    ldh a, [$8b]
    and $f1
    ret z

Call_000_0cd6:
jr_000_0cd6:
    ld a, [wGameplayType]
    cp $06
    jr z, jr_000_0ce0

    call Call_000_0db8

jr_000_0ce0:
    ld a, [$c0d1]
    cp $10
    jr nz, jr_000_0d1f

    ld hl, $0db4
    ld a, [wGameplayType]
    cp $06
    jr nz, jr_000_0cfb

    ld a, [$c133]
    cp $02
    jr nz, jr_000_0cfb

    ld hl, $c136

jr_000_0cfb:
    ld a, [$c0e2]
    ld e, a
    call Call_000_216e
    ld b, a
    ld a, [$c0f1]
    and a
    jr z, jr_000_0d0e

    ld b, $bc
    xor a
    jr jr_000_0d17

jr_000_0d0e:
    ld a, [$c0d0]
    and $02
    sla a
    sla a

jr_000_0d17:
    add b
    ld b, a
    ld a, [$c0e5]
    add b
    jr jr_000_0d44

jr_000_0d1f:
    ld hl, $0db6
    ld a, [$c0e2]
    ld e, a
    call Call_000_216e
    ld b, a
    ld a, [$c0f1]
    and a
    jr z, jr_000_0d35

    ld b, $c4
    xor a
    jr jr_000_0d3a

jr_000_0d35:
    ld a, [$c0d0]
    and $02

jr_000_0d3a:
    add b
    ld b, a
    ld a, [$c0e5]
    srl a
    srl a
    add b

jr_000_0d44:
    ld [$c0e4], a
    ld a, [$c0d0]
    and $01
    jr z, jr_000_0d55

    ld a, [$c0d0]
    cp $01
    jr z, jr_000_0d57

jr_000_0d55:
    and $02

jr_000_0d57:
    ld c, a
    swap a
    sla a
    ld [$c0ed], a
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_0d95

    ld a, c
    ld hl, $0da2
    call Call_000_0e7c
    ld de, $c002
    ld a, [$c133]
    cp $02
    jr nz, jr_000_0d80

    ld a, [$c137]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a

jr_000_0d80:
    ld b, $04

jr_000_0d82:
    ld a, [hl+]
    ld c, a
    ld a, [$c0e4]
    add c
    ld [de], a
    inc de
    ld a, [$c0ed]
    ld [de], a
    inc de
    inc de
    inc de
    dec b
    jr nz, jr_000_0d82

    ret


jr_000_0d95:
    ld a, [$c0e4]
    ld [$c002], a
    ld a, [$c0ed]
    ld [$c003], a
    ret


    xor b
    dec c
    xor h
    dec c
    or b
    dec c
    nop
    ld bc, $0302
    ld bc, $0300
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld bc, $9080
    or b
    or h

Call_000_0db8:
    ld a, [$c0e8]
    inc a
    ld [$c0e8], a
    and $08
    srl a
    and $04
    ld [$c0e5], a
    ret


Call_000_0dc9:
    call Call_000_0572
    ld hl, $c87a

jr_000_0dcf:
    ld a, [hl]
    and a
    push hl
    jr z, jr_000_0dde

    add hl, de
    ld a, [hl]
    and a
    jr z, jr_000_0dde

    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_000_0de6

jr_000_0dde:
    pop hl
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_000_0dcf

    ret


jr_000_0de6:
    pop hl
    ld hl, $0168
    or a
    ld a, l
    sub c
    ld [$c0c2], a
    ld [$c0c4], a
    ld [$c0ca], a
    ld a, h
    sbc b
    ld [$c0c3], a
    ld [$c0c5], a
    ld [$c0cb], a
    ret


Call_000_0e02:
    ld a, [$c2ee]
    and a
    jr nz, jr_000_0e5a

    ld hl, $41d7
    ld a, [$c120]
    sla a
    sla a

Call_000_0e12:
    ld e, a
    sla a
    sla a
    add e
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c2ef]
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c2ed]
    and a
    jr z, jr_000_0e30

    ld de, $4358
    jr jr_000_0e34

jr_000_0e30:
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a

jr_000_0e34:
    ld a, [de]
    ld [$c0ce], a
    inc de
    ld a, [de]
    ld [$c0cd], a
    inc de
    push de
    pop hl
    ld a, [$c0ce]
    cp $0b
    jr nc, jr_000_0e54

    ld a, [$c0cd]
    cp $0a
    jr nc, jr_000_0e54

    ld a, $10
    ld [$c0d1], a
    ret


jr_000_0e54:
    ld a, $08
    ld [$c0d1], a
    ret


jr_000_0e5a:
    call Call_000_12c4
    ld [$c0d1], a
    ld a, [$c2ef]
    ld e, a
    ld hl, $c2e4
    call Call_000_216e
    ld [$c0cd], a
    ld hl, $c2e7
    call Call_000_216e
    ld [$c0ce], a

Call_000_0e76:
    ld hl, $0e89
    ld a, [$c2ef]

Call_000_0e7c:
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ret


    dec sp
    pop bc
    jp nz, $49c1

    db $c2

Call_000_0e8f:
    call Call_000_0ea0
    call Call_000_20cd
    ldh a, [$90]
    ld [$c0dd], a
    ldh a, [$8f]
    ld [$c0de], a
    ret


Call_000_0ea0:
    ld a, [$c0d1]
    cp $08
    jr nz, jr_000_0ec7

    ld a, [$c0ce]
    ld b, a
    ld a, $14
    sub b
    sla a
    sla a
    add $08
    ldh [$8e], a
    ld a, [$c0cd]
    ld b, a
    ld a, $12
    sub b
    sla a
    sla a
    add $10
    ldh [$8d], a
    jr jr_000_0ee9

jr_000_0ec7:
    ld a, [$c0ce]
    ld b, a
    ld a, $0a
    sub b
    sla a
    sla a
    sla a
    add $08
    ldh [$8e], a
    ld a, [$c0cd]
    ld b, a
    ld a, $09
    sub b
    sla a
    sla a
    sla a
    add $10
    ldh [$8d], a

jr_000_0ee9:
    ret


Call_000_0eea:
    ld a, [$c0ff]
    cp $00
    jr nz, jr_000_0f06

    ld [$c101], a
    ld [$c107], a
    inc a
    ld [$c0ff], a
    ld hl, $c398
    ld a, h
    ld [$c102], a
    ld a, l
    ld [$c103], a

jr_000_0f06:
    ld a, [$c0d0]
    ld b, a
    ld a, [$c107]
    ld [$c0a5], a
    sla a
    sla a
    or b
    ld [$c107], a
    ld a, [$c101]
    ld b, a
    ld a, $03
    sub b
    cp $00
    jr z, jr_000_0f39

    ld b, a
    ld a, [$c107]

jr_000_0f27:
    sla a
    sla a
    dec b
    jr nz, jr_000_0f27

    ld b, a
    ld a, [$c102]
    ld h, a
    ld a, [$c103]
    ld l, a
    ld a, b
    ld [hl], a

jr_000_0f39:
    ld a, [$c101]
    inc a
    ld [$c101], a
    cp $04
    ret nz

    ld a, [$c102]
    ld h, a
    ld a, [$c103]
    ld l, a
    ld a, [$c107]
    ld [hl], a
    inc hl
    ld a, h
    ld [$c102], a
    ld a, l
    ld [$c103], a
    xor a
    ld [$c101], a
    ld [$c107], a
    ret


Call_000_0f60:
    ld a, [$c100]
    cp $00
    jr nz, jr_000_0f7d

    ld [$c104], a
    inc a
    ld [$c100], a
    ld hl, $c398
    ld a, [hl]
    ld [$c108], a
    ld a, h
    ld [$c105], a
    ld a, l
    ld [$c106], a

jr_000_0f7d:
    ld a, [$c108]
    ld b, $00
    rlca
    rl b
    rlca
    rl b
    ld [$c108], a
    ld a, b
    ld [$c0d0], a
    ld a, [$c104]
    inc a
    ld [$c104], a
    cp $04
    ret nz

    ld a, [$c105]
    ld h, a
    ld a, [$c106]
    ld l, a
    inc hl
    ld a, [hl]
    ld [$c108], a
    ld a, h
    ld [$c105], a
    ld a, l
    ld [$c106], a
    xor a
    ld [$c104], a
    ret


Call_000_0fb3:
    push de
    ld de, $c10c
    ld a, [$c0ce]
    ld [$c10a], a
    ld a, [$c109]
    and a
    jr z, jr_000_0fcb

    ld b, a
    call Call_000_0ff3
    xor a
    ld [$c109], a

jr_000_0fcb:
    ld a, [$c10a]
    and a
    jr z, jr_000_0ff1

    sub $08
    jr c, jr_000_0fe0

    ld a, [hl+]
    ld [$c10b], a
    ld b, $08
    call Call_000_0ff3
    jr jr_000_0fcb

jr_000_0fe0:
    ld a, [$c10a]
    ld b, a
    ld a, $08
    sub b
    ld [$c109], a
    ld a, [hl+]
    ld [$c10b], a
    call Call_000_0ff3

jr_000_0ff1:
    pop de
    ret


Call_000_0ff3:
jr_000_0ff3:
    ld a, [$c10b]
    sla a
    ld [$c10b], a
    jr c, jr_000_1001

    xor a
    ld [de], a
    jr jr_000_1004

jr_000_1001:
    ld a, $01
    ld [de], a

jr_000_1004:
    inc de
    ld a, [$c10a]
    dec a
    ld [$c10a], a
    dec b
    jr nz, jr_000_0ff3

    ret


Call_000_1010:
    call Call_000_108f
    call Call_000_121f
    call Call_000_1264
    call Call_000_1236
    ldh a, [$8b]
    and $08
    ret z

    ld a, [$c020]
    ldh [$8d], a
    ld [$c0a9], a
    ld a, [$c021]
    ldh [$8e], a
    ld [$c0aa], a
    call Call_000_0b2a
    call Call_000_20cd
    ld a, [$c2ef]
    sla a
    ld e, a
    ld d, $00
    ld hl, $c38c
    add hl, de
    ldh a, [$90]
    ld [hl+], a
    ldh a, [$8f]
    ld [hl], a
    ld hl, $c392
    ld a, [$c2ef]
    sla a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c0c2]
    ld [hl+], a
    ld a, [$c0c3]
    ld [hl], a
    call Call_000_1f4a
    call Call_000_1198
    and a
    jr nz, jr_000_1089

    call Call_000_1330
    call Call_000_0627
    ld a, [$c0f4]
    ld [$c0ee], a
    and a
    jp z, Jump_000_05b3

    xor a
    ld [wGameplayType], a
    ld [$c0d3], a
    ld [$c2d7], a
    ld [$c2d9], a
    ld [$c2ed], a
    jp Jump_000_0ab1


jr_000_1089:
    call Call_000_1330
    jp Jump_000_05b3


Call_000_108f:
    ld a, [$c0cf]
    and a
    jr nz, jr_000_10be

    call Call_000_110f
    call Call_000_093e
    cp $ff
    ret z

    call Call_000_10c8
    and a
    ret nz

    ld a, [$c0d3]
    ld [$c0d2], a
    call Call_000_0973
    ld a, [$c0c4]
    ld [$c0c2], a
    ld a, [$c0c5]
    ld [$c0c3], a
    ld a, [$c0d1]
    ld [$c0cf], a

jr_000_10be:
    xor a
    ld [$c0e1], a
    ld hl, $c020
    jp Jump_000_0800


Call_000_10c8:
    ld hl, $c000
    ld a, [wGameplayType]
    cp $02
    jr nz, jr_000_10d5

    ld hl, $c020

jr_000_10d5:
    ld a, [$c0d1]
    ld b, a
    ld a, [$c0d0]
    cp $02
    jr c, jr_000_10f4

    cp $03
    jr z, jr_000_10ec

    ld a, [hl]
    sub b
    cp $10
    jr c, jr_000_110c

    jr jr_000_110a

jr_000_10ec:
    ld a, [hl]
    add b
    cp $a0
    jr nc, jr_000_110c

    jr jr_000_110a

jr_000_10f4:
    inc hl
    and a
    jr z, jr_000_1104

    ld a, [hl]
    sub b
    cp $08
    jr c, jr_000_110c

    cp $f8
    jr nc, jr_000_110c

    jr jr_000_110a

jr_000_1104:
    ld a, [hl]
    add b
    cp $a8
    jr nc, jr_000_110c

jr_000_110a:
    xor a
    ret


jr_000_110c:
    ld a, $01
    ret


Call_000_110f:
    ldh a, [$8b]
    and $01
    ret z

    ld a, [$c0d3]
    cp $03
    jr z, jr_000_1154

    cp $01
    jr z, jr_000_112c

    cp $02
    jr z, jr_000_1140

    xor a
    ld [$c0a1], a
    call Call_000_11f2
    jr jr_000_116b

jr_000_112c:
    ld hl, $cb4a
    call Call_000_1213
    ld hl, $c9e2
    call Call_000_11bc
    ld [$c0ec], a
    ld hl, $c87a
    jr jr_000_115e

jr_000_1140:
    ld hl, $cb4a
    call Call_000_1213
    ld hl, $c87a
    call Call_000_11bc
    ld [$c0ec], a
    ld hl, $c9e2
    jr jr_000_115e

jr_000_1154:
    xor a
    ld [$c0a1], a
    call Call_000_11f2
    ld hl, $cb4a

jr_000_115e:
    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    ld a, $01
    call Call_000_2169

jr_000_116b:
    push hl
    ld hl, $c020
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl]
    ldh [$8e], a
    call Call_000_20cd
    pop hl
    ld a, [$c0d3]
    and a
    jr z, jr_000_1195

    cp $03
    jr z, jr_000_1195

    call Call_000_11c7
    ld a, $01
    ld [$c0ab], a

jr_000_118b:
    ld a, [$c0ab]
    and a
    jr nz, jr_000_118b

    ld [$c0ec], a
    ret


jr_000_1195:
    jp Jump_000_049e


Call_000_1198:
    ld b, $02
    xor a
    ld [$c0a1], a

jr_000_119e:
    ld hl, $11b8
    ld a, b
    dec a
    call Call_000_0e7c
    call Call_000_11bc
    ld c, a
    ld a, [$c0a1]
    or c
    ld [$c0a1], a
    dec b
    jr nz, jr_000_119e

    ld a, [$c0a1]
    ret


    ld [c], a
    ret


    ld c, d
    db $cb

Call_000_11bc:
    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    jp Jump_000_2164


Call_000_11c7:
    push hl
    push de
    ld a, [$c0ec]
    and a
    ld a, [$c0d3]
    jp z, Jump_000_04d0

    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    ld a, [$c0d3]
    cp $01
    jr nz, jr_000_11e7

    ld hl, $c9e2
    jr jr_000_11ef

jr_000_11e7:
    cp $02
    jp nz, Jump_000_04d0

    ld hl, $c87a

jr_000_11ef:
    jp Jump_000_04c9


Call_000_11f2:
Jump_000_11f2:
    ld b, $03
    ld hl, $c87a
    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a

jr_000_11ff:
    ld a, [$c0a1]
    call Call_000_2169
    ld a, [$c2d0]
    add l
    ld l, a
    ld a, [$c2d1]
    adc h
    ld h, a
    dec b
    jr nz, jr_000_11ff

    ret


Call_000_1213:
    ld a, [$c0c2]
    ld e, a
    ld a, [$c0c3]
    ld d, a
    xor a
    jp Jump_000_2169


Call_000_121f:
    ldh a, [$8b]
    and $02
    ret z

    ld a, [$c0d3]
    inc a
    and $03
    ld [$c0d3], a
    call Call_000_1295
    call Call_000_1242
    call Call_000_1295

Call_000_1236:
Jump_000_1236:
    ld a, $01
    ld [$c0f5], a

jr_000_123b:
    ld a, [$c0f5]
    and a
    jr nz, jr_000_123b

    ret


Call_000_1242:
Jump_000_1242:
    ld hl, $04e9
    ld a, [$c0d1]
    cp $08
    jr nz, jr_000_124f

    ld hl, $04ee

jr_000_124f:
    ld a, [$c0d3]
    ld e, a
    call Call_000_216e
    ld hl, $c022

Call_000_1259:
    ld b, $04

jr_000_125b:
    ld [hl+], a
    inc a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_125b

    ret


Call_000_1264:
    ld a, [$c0a4]
    and $20
    jr nz, jr_000_126e

    jp Jump_000_1242


jr_000_126e:
    ld hl, $c022
    ld b, $04
    ld a, $c6

Call_000_1275:
jr_000_1275:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_1275

    ret


Call_000_127d:
    or a
    ld a, [$c0ef]
    add $01
    ld [$c0ef], a
    cp $40
    ret c

    ld a, [$c0f2]
    inc a
    ld [$c0f2], a
    xor a
    ld [$c0ef], a
    ret


Call_000_1295:
    push af
    push bc
    push de
    push hl
    xor a
    ld [$c0ef], a
    ld [$c0f0], a

jr_000_12a0:
    ldh a, [$91]
    and a
    jr z, jr_000_12a0

    ld a, [$c0ef]
    inc a
    ld [$c0ef], a
    cp $ff
    jr nz, jr_000_12a0

    xor a
    ld [$c0ef], a
    ld a, [$c0f0]
    inc a
    ld [$c0f0], a
    cp $18
    jr nz, jr_000_12a0

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_12c4:
    ld a, [$c2ef]
    ld e, a
    ld hl, $c389
    jp Jump_000_216e


Call_000_12ce:
    ld a, [$c2ef]
    ld e, a
    ld a, [$c0d1]
    ld hl, $c389
    jp Jump_000_2175


Call_000_12db:
    ld a, [wGameplayType]
    cp $02
    ret nz

    ld hl, $c023
    xor a
    ld b, $04
    call Call_000_1275
    call Call_000_12c4
    ld b, a
    ld a, [$c0d1]
    cp b
    jr z, jr_000_12fa

    call Call_000_0c0d
    call Call_000_1330

Call_000_12fa:
jr_000_12fa:
    call Call_000_12ce
    ld a, [$c0d1]
    cp $08
    jr nz, jr_000_1310

    ld a, $14
    ld [$c0ce], a
    ld a, $12
    ld [$c0cd], a
    jr jr_000_131a

jr_000_1310:
    ld a, $0a
    ld [$c0ce], a
    ld a, $09
    ld [$c0cd], a

jr_000_131a:
    ld a, [$c2ef]
    ld e, a
    ld hl, $c2e4
    ld a, [$c0cd]
    call Call_000_2175
    ld hl, $c2e7
    ld a, [$c0ce]
    jp Jump_000_2175


Call_000_1330:
    call Call_000_1f4a
    call Call_000_0e76
    ld de, $c87a
    ld b, $87
    ld a, $0a
    ld [$c0a5], a
    dec a
    ld [$c0a6], a

jr_000_1344:
    push bc
    ld b, $08
    ld c, $00

jr_000_1349:
    ld a, [de]
    inc de
    and $01
    jr z, jr_000_1350

    scf

jr_000_1350:
    rl c
    ld a, [$c0d1]
    cp $08
    jr z, jr_000_1380

    ld a, [$c0a5]
    dec a
    and a
    jr nz, jr_000_137d

    ld a, $0a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [$c0a6]
    dec a
    and a
    jr nz, jr_000_138a

    ld a, $b4
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, $09
    ld [$c0a6], a
    inc a

jr_000_137d:
    ld [$c0a5], a

jr_000_1380:
    dec b
    jr nz, jr_000_1349

    ld a, c
    ld [hl+], a
    pop bc
    dec b
    jr nz, jr_000_1344

    ret


jr_000_138a:
    ld [$c0a6], a
    ld a, $0a
    jr jr_000_137d

Call_000_1391:
    ld a, [wGameplayType]
    cp $04
    ret nz

    call Call_000_214c
    ld a, $44
    ld [$c0f8], a
    ld a, $98
    ld [$c0f7], a
    ld a, $0e
    ld [$c0a1], a
    ld [$c0f3], a
    ld hl, $4121

jr_000_13af:
    ld de, $c0ad
    ld c, $0d
    ld b, $00
    call Call_000_215b
    ld a, $ff
    ld [$c0ba], a
    push hl
    ld a, [$c0f8]
    add $20
    ld [$c0f8], a
    ld a, [$c0f7]
    adc $00
    ld [$c0f7], a
    call Call_000_1be1
    pop hl
    ld a, [$c0a1]
    dec a
    and a
    ret z

    ld [$c0a1], a
    jr jr_000_13af

Call_000_13de:
    ld a, [$c0a3]
    and a
    ret z

    ld a, [$c0a4]
    and $01
    ret nz

    xor a
    ld [$c0f2], a
    ld a, [$c0d7]
    and a
    jr z, jr_000_13ff

    ldh a, [rSCY]
    and a
    jr nz, jr_000_13ff

jr_000_13f8:
    ld a, [$c0f2]
    cp $03
    jr nz, jr_000_13f8

jr_000_13ff:
    xor a
    ld [$c0f2], a
    ldh a, [rSCY]
    cp $48
    jr nz, jr_000_141d

    ld a, [$c0d7]
    and a
    jr nz, jr_000_1425

jr_000_140f:
    ld a, [$c0f2]
    cp $03
    jr nz, jr_000_140f

    ld a, [$c0a2]
    cp $0c
    jr z, jr_000_148c

jr_000_141d:
    ldh a, [rSCY]
    inc a
    ldh [rSCY], a
    cp $90
    ret nz

jr_000_1425:
    ld a, [$c0d7]
    and a
    jr z, jr_000_1444

    di
    call Call_000_1f34
    ld de, $0064
    call Call_000_1bc5
    call Call_000_212c
    call Call_000_214c
    ld a, $c3
    ldh [rLCDC], a
    ei
    xor a
    ld [$c0d7], a

jr_000_1444:
    ldh [rSCY], a
    ld hl, $7847
    call Call_000_1f0a
    ld a, $00
    call Call_000_148e
    ld a, [$c0a2]
    ld hl, $14aa
    call Call_000_0e7c
    call Call_000_149f
    call Call_000_1f0d
    ld a, $00
    call Call_000_148e
    ld hl, $7847
    call Call_000_1f0a
    ld a, $44
    call Call_000_148e
    ld a, [$c0a2]
    ld hl, $1563
    call Call_000_0e7c
    call Call_000_149f
    call Call_000_1f0d
    ld a, $44
    call Call_000_148e
    ld a, [$c0a2]
    inc a
    ld [$c0a2], a
    ret


jr_000_148c:
    jr jr_000_148c

Call_000_148e:
    ld [$c0f8], a
    ld a, $9a
    ld [$c0f7], a
    call Call_000_04a4
    call Call_000_04a4
    jp Jump_000_1f4a


Call_000_149f:
    ld a, [hl+]
    ld de, $c0ad
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ret


    jp nz, $d814

    inc d
    add sp, $14
    ld hl, sp+$14
    dec b
    dec d
    inc c
    dec d
    ld e, $15
    add hl, hl
    dec d
    inc sp
    dec d
    ld a, $15
    ld d, e
    dec d
    ld h, c
    dec d
    nop
    ld a, $41
    jr c, @+$38

    jr c, jr_000_1506

    jr nc, jr_000_1506

    call nc, Call_000_3036
    inc a
    inc [hl]
    call nc, Call_000_3433
    ld b, d
    jr c, jr_000_150c

    dec a
    rst $38
    inc bc
    ccf
    ld b, c
    ld a, $36
    ld b, c
    jr nc, jr_000_151c

    call nc, Call_000_3433
    ld b, d
    jr c, jr_000_151c

    dec a
    rst $38
    inc bc
    ld [hl], $41
    jr nc, @+$41

    scf
    jr c, @+$34

    call nc, Call_000_3433
    ld b, d
    jr c, @+$38

    dec a

jr_000_14f7:
    rst $38
    inc b
    inc a
    ld b, h
    ld b, d
    jr c, jr_000_1530

    call nc, Call_000_3732
    jr c, jr_000_1537

    dec [hl]
    rst $38
    rlca

jr_000_1506:
    inc a
    ld b, h
    ld b, d
    jr c, @+$34

    rst $38

jr_000_150c:
    ld bc, $3732
    jr c, jr_000_1545

    dec [hl]
    call nc, $413f
    ld a, $36
    ld b, c
    jr nc, jr_000_1556

    inc a
    inc [hl]

jr_000_151c:
    ld b, c
    rst $38
    inc b
    add hl, bc
    inc bc
    jr jr_000_14f7

    dec bc
    ld d, b
    ld de, $2d03
    rst $38
    ld b, $33
    jr c, jr_000_156e

    inc [hl]
    ld [hl-], a
    ld b, e

jr_000_1530:
    ld a, $41
    rst $38
    dec b
    inc a
    jr nc, jr_000_1571

jr_000_1537:
    jr c, jr_000_1576

    ld [hl], $d4
    ld sp, $ff48
    ld bc, $413e
    jr c, jr_000_1579

    jr c, jr_000_1582

jr_000_1545:
    jr nc, jr_000_1582

    call nc, Call_000_303c
    ccf
    call nc, Call_000_3433
    ld b, d
    jr c, @+$38

    dec a
    rst $38
    inc bc
    ccf
    ld b, c

jr_000_1556:
    inc [hl]
    ld b, d
    inc [hl]
    dec a
    ld b, e
    inc [hl]
    inc sp
    call nc, $4831
    rst $38
    nop
    rst $38
    ld a, e
    dec d
    adc b
    dec d
    sub e
    dec d
    sbc [hl]
    dec d
    xor d
    dec d
    or l

jr_000_156e:
    dec d
    pop bc
    dec d

jr_000_1571:
    jp z, $d615

    dec d
    db $e4

jr_000_1576:
    dec d
    push af
    dec d

jr_000_1579:
    rlca
    ld d, $01
    ld bc, $191e
    ld l, $28
    dec bc

jr_000_1582:
    call nc, Call_000_271a
    add hl, hl
    ld b, $ff
    ld [bc], a
    ld bc, $0218
    inc bc
    call nc, Call_000_0b13
    daa
    ld [bc], a
    rst $38
    ld [bc], a
    jr jr_000_159b

    ld l, $1f
    call nc, Call_000_050f

jr_000_159b:
    add hl, hl
    ld b, $ff
    nop
    inc de
    rra
    ld a, [bc]
    ld l, $2b
    call nc, Call_000_2d08
    ld bc, $ff10
    ld bc, $050f
    add hl, de
    dec bc
    call nc, Call_000_2e09
    daa
    ld [bc], a
    rst $38
    nop
    dec b
    dec hl
    inc hl
    dec de
    ld l, $06
    call nc, Call_000_050f
    dec bc
    rst $38
    ld bc, $092a
    jr z, jr_000_15e4

    call nc, $0a10
    rst $38
    ld bc, $2400
    ld [hl+], a
    inc de
    call nc, $0c05
    ld l, $1a
    add hl, bc
    rst $38
    nop
    nop
    inc de
    inc h
    inc bc
    call nc, Call_000_2e13
    ld d, c
    ld d, e
    dec de
    ld l, $25
    rst $38

jr_000_15e4:
    nop
    ld b, e
    scf
    jr c, jr_000_1626

    ld a, [hl-]
    jr c, @+$3f

    ld [hl], $d4
    ld b, c
    jr nc, jr_000_1622

    ld sp, $4338
    rst $38
    nop
    ccf
    ld a, $3d
    ld c, b
    call nc, $3032
    dec a
    ld c, b
    ld a, $3d
    call nc, Call_000_3d38

Jump_000_1604:
    ld [hl-], a
    ld c, [hl]
    rst $38
    nop
    ld b, d
    inc [hl]
    inc [hl]
    call nc, $3e48
    ld b, h
    call nc, Call_000_3630
    jr nc, jr_000_164c

    dec a
    rst $38

Call_000_1616:
    ld a, [$c0cf]
    and a
    jr nz, jr_000_165c

    ld a, [$c2ed]
    and a
    jr nz, jr_000_169c

jr_000_1622:
    ldh a, [$8b]
    and $01

jr_000_1626:
    jr nz, jr_000_163f

    ldh a, [$8b]
    and $f8
    ret z

jr_000_162d:
    ld a, [$c2ed]
    and a
    jr z, jr_000_165f

    ld a, $04
    ld [wGameplayType], a
    xor a
    ld [$c2ed], a
    jp Jump_000_0198


jr_000_163f:
    ldh a, [$8b]
    or $81
    ldh [$8b], a
    ld a, [$c2da]
    ld b, a
    ld a, [$c2d9]

jr_000_164c:
    ld c, a
    or b
    jr z, jr_000_162d

    dec bc
    ld a, c
    ld [$c2d9], a
    ld a, b
    ld [$c2da], a
    call Call_000_0f60

jr_000_165c:
    jp Jump_000_0340


jr_000_165f:
    xor a
    ld [wGameplayType], a
    ld [$c0fd], a
    ld a, [$c2d9]
    ld b, a
    ld a, [$c2d7]
    sub b
    ld [$c2d7], a
    ld [$c2d9], a
    ld c, a
    ld a, [$c2da]
    ld b, a
    ld a, [$c2d8]
    sbc b
    ld [$c2d8], a
    ld [$c2da], a
    or c
    ld [$c0ff], a
    ld b, $03
    ld hl, $c104
    ld de, $c101

jr_000_168f:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_168f

    ld a, [$c108]
    ld [$c107], a
    ret


jr_000_169c:
    ldh a, [$8b]
    and $08
    jr z, jr_000_163f

    ld a, $10
    ld [wGameplayType], a
    ld a, $08
    ld [$c384], a
    jp Jump_000_0198


Call_000_16af:
    ldh a, [$8b]
    and $cb
    ret z

    ld a, [$c2ee]
    and a
    jr z, jr_000_16bf

    call Call_000_176a
    jr jr_000_16c2

jr_000_16bf:
    call Call_000_172e

jr_000_16c2:
    ld [$c2ef], a
    call Call_000_1295
    call Call_000_1295
    call Call_000_1295
    ldh a, [$8b]
    and $0b
    jp z, Jump_000_1726

    ld a, [$c2ee]
    and a
    jr nz, jr_000_170f

    ldh a, [$8b]
    and $02
    jr nz, jr_000_1708

jr_000_16e1:
    ld a, [$c2ee]
    and a
    jr z, jr_000_16f8

    call Call_000_1198
    and a
    jp nz, Jump_000_05c5

    call Call_000_0627
    ld a, [$c0f4]
    and a
    jp z, Jump_000_05c5

jr_000_16f8:
    xor a
    ld [wGameplayType], a
    call Call_000_0cbd
    ret nc

    ld a, $01
    ld [$c0ee], a
    jp Jump_000_0198


jr_000_1708:
    ld a, $20
    ld [wGameplayType], a
    jr jr_000_1726

jr_000_170f:
    ldh a, [$8b]
    and $08
    jr nz, jr_000_16e1

    ld a, $70
    ld [wGameplayType], a
    ld a, $08
    ld [$c384], a
    call Call_000_12c4
    ld [$c0d1], a
    ret


Jump_000_1726:
jr_000_1726:
    ld a, $08
    ld [$c384], a
    jp Jump_000_0198


Call_000_172e:
    ldh a, [$8b]
    and $c0
    cp $40
    jr z, jr_000_1753

    cp $80
    jp nz, Jump_000_178f

    ld a, [$c2ef]
    dec a
    cp $ff
    jr z, jr_000_1745

    jr jr_000_175c

jr_000_1745:
    ld a, $09
    push af
    ld a, [$c120]
    cp $0a
    jr nz, jr_000_1768

    pop af
    ld a, $07
    ret


jr_000_1753:
    ld a, [$c2ef]
    inc a
    cp $0a
    jr nz, jr_000_175c

    xor a

jr_000_175c:
    push af
    ld a, [$c120]
    cp $0a
    jr nz, jr_000_1768

    pop af
    and $07
    ret


jr_000_1768:
    pop af
    ret


Call_000_176a:
    ldh a, [$8b]
    and $c0
    cp $40
    jr z, jr_000_1785

    cp $80
    jp nz, Jump_000_178f

    ld a, [$c2ef]
    dec a
    cp $ff
    jr z, jr_000_1781

    jr jr_000_178e

jr_000_1781:
    ld a, $02
    jr jr_000_178e

jr_000_1785:
    ld a, [$c2ef]
    inc a
    cp $03
    jr nz, jr_000_178e

    xor a

jr_000_178e:
    ret


Jump_000_178f:
    ld a, [$c2ef]
    ret


Call_000_1793:
    ld b, $03
    ld a, $08
    ld hl, $c389

jr_000_179a:
    ld [hl+], a
    dec b
    jr nz, jr_000_179a

    ld b, $03
    ld a, $14
    ld hl, $c2e7

jr_000_17a5:
    ld [hl+], a
    dec b
    jr nz, jr_000_17a5

    ld b, $03
    ld a, $12
    ld hl, $c2e4

jr_000_17b0:
    ld [hl+], a
    dec b
    jr nz, jr_000_17b0

    ld a, $14
    ld [$c0ce], a
    ld a, $12
    ld [$c0cd], a
    ret


Call_000_17bf:
    ld a, [$c12b]
    and a
    jr nz, jr_000_17e8

    ld hl, $98e3
    ld a, h
    ld [$c124], a
    ld a, l
    ld [$c125], a
    call Call_000_1a92
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    xor a
    ld [$c0d9], a
    ld [$c0fe], a
    ld [$c12d], a
    ld a, $01
    ld [$c12b], a

jr_000_17e8:
    ld a, [$c124]
    ld [$c126], a
    ld a, [$c125]
    ld [$c127], a
    ld a, [$c0fd]
    and a
    jp nz, Jump_000_1a64

    ld a, [$c128]
    and a
    jp z, Jump_000_180b

    ldh a, [$8b]
    and a
    jp z, Jump_000_1a64

    jp Jump_000_19c6


Jump_000_180b:
    ldh a, [$8b]
    and $10
    jr nz, jr_000_183c

    ldh a, [$8b]
    and $20
    jr nz, jr_000_1864

    ldh a, [$8b]
    and $40
    jr nz, jr_000_188e

    ldh a, [$8b]
    and $80
    jp nz, Jump_000_18a9

    ldh a, [$8b]
    and $01
    jp nz, Jump_000_18cf

    ldh a, [$8b]
    and $02
    jp nz, Jump_000_1957

    ldh a, [$8b]
    and $04
    jp nz, Jump_000_1a3c

    jp Jump_000_1a64


jr_000_183c:
    ld a, [$c129]
    cp $04
    jr nz, jr_000_184e

    ld a, [$c12a]
    inc a
    cp $09
    jr nz, jr_000_1859

    xor a
    jr jr_000_185f

jr_000_184e:
    ld a, [$c12a]
    inc a
    cp $0d
    jr nz, jr_000_1859

    xor a
    jr jr_000_185f

jr_000_1859:
    cp $05
    jr nz, jr_000_185f

    ld a, $08

jr_000_185f:
    ld [$c12a], a
    jr jr_000_18c9

jr_000_1864:
    ld a, [$c129]
    cp $04
    jr nz, jr_000_1877

    ld a, [$c12a]
    dec a
    cp $ff
    jr nz, jr_000_1883

    ld a, $08
    jr jr_000_1889

jr_000_1877:
    ld a, [$c12a]
    dec a
    cp $ff
    jr nz, jr_000_1883

    ld a, $0c
    jr jr_000_1889

jr_000_1883:
    cp $07
    jr nz, jr_000_1889

    ld a, $04

jr_000_1889:
    ld [$c12a], a
    jr jr_000_18c9

jr_000_188e:
    ld a, [$c129]
    dec a
    cp $ff
    jr nz, jr_000_18a4

    ld a, [$c12a]
    cp $08
    jr c, jr_000_18a2

    ld a, $08
    ld [$c12a], a

jr_000_18a2:
    ld a, $04

jr_000_18a4:
    ld [$c129], a
    jr jr_000_18c9

Jump_000_18a9:
    ld a, [$c129]
    inc a
    cp $04
    jr nz, jr_000_18c1

    ld a, [$c12a]
    cp $08
    jr c, jr_000_18bd

    ld a, $08
    ld [$c12a], a

jr_000_18bd:
    ld a, $04
    jr jr_000_18c6

jr_000_18c1:
    cp $05
    jr nz, jr_000_18c6

    xor a

jr_000_18c6:
    ld [$c129], a

Jump_000_18c9:
jr_000_18c9:
    call Call_000_1a6a
    jp Jump_000_1a64


Jump_000_18cf:
    ld a, [$c12a]
    cp $08
    jr nz, jr_000_1905

    ld a, [$c129]
    cp $04
    jr nz, jr_000_1905

    call Call_000_1acc
    ld a, [$c128]
    and a
    jp z, Jump_000_19fb

    ld a, $0c
    ld [$c384], a
    ld hl, $7837
    call Call_000_1f0a
    ld a, $ff
    ld [wGameplayType], a
    ld hl, $98a2
    call Call_000_1ef9
    ld a, $05
    ld [wGameplayType], a
    jp Jump_000_1a64


jr_000_1905:
    ld a, [$c12c]
    cp $04
    jp z, Jump_000_1a64

    inc a
    ld [$c12c], a
    xor a
    ld [$c384], a

jr_000_1915:
    ld a, [$c386]
    or a
    jr nz, jr_000_1915

    ld a, $08
    ld [$c384], a

jr_000_1920:
    ld hl, $9864
    ld a, [$c12c]
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    ldh [$8f], a
    ld a, l
    ldh [$90], a
    ld a, $08
    ld [$c0d1], a
    ld a, [$c124]
    ld h, a
    ld a, [$c125]
    ld l, a
    ld de, $0020
    add hl, de
    ld a, [hl]
    ld [$c0ac], a
    call Call_000_04a4
    call Call_000_04a4
    call Call_000_04a4
    ld a, [$c0ac]
    cp $ff
    jr nz, jr_000_198a

    jr jr_000_1920

Jump_000_1957:
    ld a, [$c12c]
    and a
    jp z, Jump_000_1a64

jr_000_195e:
    ld hl, $9864
    ld a, [$c12c]
    ld e, a
    ld d, $00
    add hl, de
    ld a, h
    ldh [$8f], a
    ld a, l
    ldh [$90], a
    ld a, $08
    ld [$c0d1], a
    ld a, $d4
    ld [$c0ac], a
    call Call_000_04a4
    call Call_000_04a4
    call Call_000_04a4

jr_000_1981:
    ld a, [$c0ac]
    cp $ff
    jr nz, jr_000_198a

    jr jr_000_195e

jr_000_198a:
    ld a, [$c12c]
    dec a
    ld hl, $19be
    call Call_000_0e7c
    ld a, [$c0ac]
    ld [hl], a
    ldh a, [$8b]
    and $02
    jp nz, Jump_000_19b4

    ld a, [$c12c]
    cp $04
    jp nz, Jump_000_1a64

    ld a, $08
    ld [$c12a], a
    ld a, $04
    ld [$c129], a
    jp Jump_000_18c9


Jump_000_19b4:
    ld a, [$c12c]
    dec a
    ld [$c12c], a
    jp Jump_000_1a64


    jr nz, jr_000_1981

    ld hl, $22c1
    pop bc
    inc hl
    pop bc

Jump_000_19c6:
    ld hl, $7850
    call Call_000_1f0a
    ld a, $ff
    ld [wGameplayType], a
    ld [de], a
    ld hl, $9865
    call Call_000_1ef9
    ld hl, $784c
    call Call_000_1f0a
    ld hl, $98a2
    call Call_000_1ef9
    ld a, $05
    ld [wGameplayType], a
    xor a
    ld [$c12a], a
    ld [$c129], a
    ld [$c12b], a
    ld [$c128], a
    ld [$c12c], a
    jr jr_000_1a64

Jump_000_19fb:
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, [$c12d]
    ld hl, $1b50
    call Call_000_0e7c
    jp hl


    xor a
    ld [wGameplayType], a
    ld a, $01
    ld [$c0fe], a
    call Call_000_0cbd
    jp nc, Jump_000_1a64

    ld a, $03
    ld [wGameplayType], a
    jr jr_000_1a64

    xor a
    ld [$c120], a
    ld a, $06
    ld [wGameplayType], a
    ld [$c0fe], a
    ld [$c12d], a
    jr jr_000_1a64

    ld a, $08
    ld [wGameplayType], a
    ld [$c0fe], a
    jr jr_000_1a64

Jump_000_1a3c:
    ld a, [$c12e]
    ld [$c120], a
    ld a, [$c12f]
    ld [$c121], a
    ld a, [$c130]
    ld [$c122], a
    ld a, [$c131]
    ld [$c123], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ld a, $20
    ld [wGameplayType], a
    ld a, $01
    ld [$c0fe], a

Jump_000_1a64:
jr_000_1a64:
    ldh a, [$8b]
    ld [$c0fd], a
    ret


Call_000_1a6a:
    ld de, $98e3
    ld a, [$c12a]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld bc, $0040
    ld hl, $0000
    ld a, [$c129]
    and a
    jr z, jr_000_1a86

jr_000_1a82:
    add hl, bc
    dec a
    jr nz, jr_000_1a82

jr_000_1a86:
    add hl, de
    ld a, h
    ld [$c124], a
    ld a, l
    ld [$c125], a
    jp Jump_000_1a92


Call_000_1a92:
Jump_000_1a92:
    ld a, [$c126]
    ldh [$8f], a
    ld a, [$c127]
    ldh [$90], a
    ld a, $08
    ld [$c0d1], a
    ld a, $d4
    ld [$c0ac], a
    call Call_000_04a4
    call Call_000_04a4
    call Call_000_04a4
    ld a, [$c124]
    ldh [$8f], a
    ld a, [$c125]
    ldh [$90], a
    ld a, $08
    ld [$c0d1], a
    ld a, $4d
    ld [$c0ac], a
    call Call_000_04a4
    call Call_000_04a4
    jp Jump_000_04a4


Call_000_1acc:
    ld a, [$c120]
    cp $0b
    jr nc, jr_000_1af0

    ld a, [$c121]
    cp $20
    jr nc, jr_000_1af0

    ld a, [$c122]
    cp $20
    jr nc, jr_000_1af0

    call Call_000_1b28
    ld a, [$c123]
    cp b
    jr nz, jr_000_1af0

    xor a
    ld [$c128], a
    jr jr_000_1b27

jr_000_1af0:
    ld a, [$c12d]
    inc a
    ld [$c12d], a
    ld hl, $1b42
    call Call_000_0e7c
    ld a, [$c120]
    cp [hl]
    jr nz, jr_000_1b18

    inc hl
    ld a, [$c121]
    cp [hl]
    jr nz, jr_000_1b18

    inc hl
    ld a, [$c122]
    cp [hl]
    jr nz, jr_000_1b18

    inc hl
    ld a, [$c123]
    cp [hl]
    jr z, jr_000_1b27

jr_000_1b18:
    ld a, [$c12d]
    cp $02
    jr nz, jr_000_1af0

    xor a
    ld [$c12d], a
    inc a
    ld [$c128], a

jr_000_1b27:
    ret


Call_000_1b28:
    ld bc, $0000
    ld hl, $0000
    ld a, [$c120]
    ld c, a
    add hl, bc
    ld a, [$c121]
    ld c, a
    add hl, bc
    ld a, [$c122]
    ld c, a
    add hl, bc
    ld a, l
    and $1f
    ld b, a
    ret


    ld b, d
    dec de
    ld c, b
    dec de
    ld c, h
    dec de
    dec b
    dec hl
    inc hl
    dec de
    inc de
    rra
    ld a, [bc]
    dec hl
    dec bc
    ld a, [de]
    ld hl, $321a
    ld a, [de]

Call_000_1b56:
    ld a, [wGameplayType]
    cp $05
    ret nz

    ld hl, $9903
    xor a
    ld c, $05

jr_000_1b62:
    call Call_000_1bbd
    ld de, $0003
    add hl, de
    dec c
    jr z, jr_000_1b75

    call Call_000_1bbd
    ld de, $0033
    add hl, de
    jr jr_000_1b62

jr_000_1b75:
    ld a, $34
    ld [hl+], a
    ld a, $3d
    ld [hl+], a
    ld a, $33
    ld [hl], a
    ld hl, $9885
    ld a, $4f
    ld b, $04

jr_000_1b85:
    ld [hl+], a
    dec b
    jr nz, jr_000_1b85

    ld de, $7825
    ld hl, $9821
    call Call_000_1bec
    ld a, $05
    ld [wGameplayType], a
    ld a, [$c120]
    ld [$c12e], a
    ld a, [$c121]
    ld [$c12f], a
    ld a, [$c122]
    ld [$c130], a
    ld a, [$c123]
    ld [$c131], a
    xor a
    ld [$c12a], a
    ld [$c129], a
    ld [$c12b], a
    ld [$c12c], a
    ret


Call_000_1bbd:
    ld b, $05

jr_000_1bbf:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_000_1bbf

    ret


Call_000_1bc5:
    ld a, d
    add $07
    ldh [rWX], a
    ld a, e
    ldh [rWY], a
    ldh a, [rLCDC]
    or $60
    ldh [rLCDC], a
    ret


Call_000_1bd4:
    ldh a, [rLCDC]
    and $df
    ldh [rLCDC], a
    ret


Call_000_1bdb:
    ld a, [wGameplayType]
    and $f0
    ret z

Call_000_1be1:
Jump_000_1be1:
    ld de, $c0ad
    ld a, [$c0f7]
    ld h, a
    ld a, [$c0f8]
    ld l, a

Call_000_1bec:
Jump_000_1bec:
jr_000_1bec:
    ld a, [de]
    cp $ff
    jr z, jr_000_1bf9

jr_000_1bf1:
    ld [hl], a
    cp [hl]
    jr nz, jr_000_1bf1

    inc hl
    inc de
    jr jr_000_1bec

jr_000_1bf9:
    xor a
    ld [$c0f6], a
    ret


Call_000_1bfe:
    ld a, [$c0fa]
    and a
    jp nz, Jump_000_1cff

    ld a, [wGameplayType]
    cp $60
    jr nz, jr_000_1c1e

    ld a, [$c2ef]
    ld e, a
    ld hl, $c389
    call Call_000_216e
    cp $10
    jr nz, jr_000_1c1e

    ld a, $01
    jr jr_000_1c1f

jr_000_1c1e:
    xor a

jr_000_1c1f:
    ld [$c0fc], a
    xor a
    ld [$c0fe], a
    ld [$c0f9], a
    ld [$c0ee], a
    ld a, [$c0d1]
    ld [$c0fb], a
    ldh a, [rLCDC]
    and $fd
    ldh [rLCDC], a
    ld a, $05
    ld [$c132], a

jr_000_1c3d:
    ld hl, $7850
    call Call_000_1f0a
    ld a, [$c132]
    ld hl, $1c92
    call Call_000_0e7c
    call Call_000_1ef9
    ld a, [$c132]
    dec a
    ld [$c132], a
    jr nz, jr_000_1c3d

Jump_000_1c58:
    ld a, [$c0f9]
    cp $03
    jr z, jr_000_1c9c

    ld hl, $7850
    call Call_000_1f0a
    ld hl, $7745
    ld a, [wGameplayType]
    and $f0
    swap a
    dec a
    call Call_000_0e7c
    ld a, [$c0f9]
    call Call_000_0e7c
    call Call_000_1f0a
    ld a, [$c0f9]
    ld hl, $1c92
    call Call_000_0e7c
    call Call_000_1ef9
    ld a, [$c0f9]
    inc a
    ld [$c0f9], a
    jp Jump_000_1c58


    ld b, d
    sbc h
    and e
    sbc h
    db $e3
    sbc h
    ld [bc], a
    sbc l
    ld [hl+], a
    sbc l

jr_000_1c9c:
    ld a, [$c2ee]
    and a
    jp nz, Jump_000_1ce0

    ld a, [wGameplayType]
    cp $40
    jr z, jr_000_1cae

    cp $30
    jr nz, jr_000_1cf9

jr_000_1cae:
    ld hl, $785c
    call Call_000_1f0a
    ld hl, $9d21
    call Call_000_1ef9
    ld a, [$c120]
    ld [$c0ad], a
    ld a, [$c121]
    ld [$c0ae], a
    ld a, [$c122]
    ld [$c0af], a
    call Call_000_1b28
    ld a, b
    ld [$c0b0], a
    ld a, $ff
    ld [$c0b1], a
    ld hl, $9d29
    call Call_000_1ef9
    jr jr_000_1cf9

Jump_000_1ce0:
    ld a, [wGameplayType]
    cp $60
    jr nz, jr_000_1cf9

    ld hl, $7850
    call Call_000_1f0a
    ld hl, $7822
    call Call_000_1f0a
    ld hl, $9d03
    call Call_000_1ef9

jr_000_1cf9:
    ld de, $2838
    call Call_000_1bc5

Jump_000_1cff:
    ld a, $01
    ld [$c0fa], a
    ld a, [$c0fd]
    and a
    jr nz, jr_000_1d5a

    ldh a, [$8b]
    and $04
    jr z, jr_000_1d23

    ld a, [$c0fc]
    and a
    jr nz, jr_000_1d1d

    ld a, $01
    ld [$c0fc], a
    jr jr_000_1d5a

jr_000_1d1d:
    xor a
    ld [$c0fc], a
    jr jr_000_1d5a

jr_000_1d23:
    ldh a, [$8b]
    and $40
    jr z, jr_000_1d2f

    xor a
    ld [$c0fc], a
    jr jr_000_1d5a

jr_000_1d2f:
    ldh a, [$8b]
    and $80
    jr z, jr_000_1d3c

    ld a, $01
    ld [$c0fc], a
    jr jr_000_1d5a

jr_000_1d3c:
    ldh a, [$8b]
    and $09
    jr nz, jr_000_1d84

    ld a, [wGameplayType]
    cp $10
    jr z, jr_000_1d5a

    ldh a, [$8b]
    and $02
    jr z, jr_000_1d5a

    ld a, $10
    ld [wGameplayType], a
    ld [$c0fe], a
    jp Jump_000_1d98


jr_000_1d5a:
    ld a, [$c0fc]
    and a
    jr nz, jr_000_1d72

    ld a, $d4
    ld hl, $9ce2
    call Call_000_1f23
    ld a, $4c
    ld hl, $9ca2
    call Call_000_1f23
    jr jr_000_1db0

jr_000_1d72:
    ld a, $d4
    ld hl, $9ca2
    call Call_000_1f23
    ld a, $4c
    ld hl, $9ce2
    call Call_000_1f23
    jr jr_000_1db0

jr_000_1d84:
    ld a, [$c0fb]
    ld [$c0d1], a
    ld a, [wGameplayType]
    and $f0
    swap a
    ld hl, $1ee9
    call Call_000_0e7c
    jp hl


Jump_000_1d98:
    call Call_000_1bd4
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    xor a
    ld [$c0f9], a
    ld [$c0fa], a
    ld [$c0f2], a
    ld a, $08
    ld [$c384], a

jr_000_1db0:
    ldh a, [$8b]
    ld [$c0fd], a
    ret


    ld a, [$c0fc]
    and a
    ld [$c2ee], a
    jr nz, jr_000_1dc6

    ld a, $20
    ld [wGameplayType], a
    jr jr_000_1dcb

jr_000_1dc6:
    ld a, $70
    ld [wGameplayType], a

jr_000_1dcb:
    ld [$c0fe], a
    xor a
    ld [$c0ff], a
    ld [$c2d9], a
    ld [$c2da], a
    ld [$c2d7], a
    ld [$c2d8], a
    ld [$c2ef], a
    ld [$c2ed], a
    jp Jump_000_1d98


    ld a, [$c0fc]
    and a
    jr nz, jr_000_1dff

    ld a, [wGameplaySubtype]
    ld [wGameplayType], a
    call Call_000_0cbd
    jr nc, jr_000_1e04

    ld a, $03
    ld [wGameplayType], a
    jr jr_000_1e04

jr_000_1dff:
    ld a, $05
    ld [wGameplayType], a

jr_000_1e04:
    xor a
    ld [$c0f3], a
    ld [$c0ff], a
    inc a
    ld [$c0fe], a
    jp Jump_000_1d98


    ld a, [$c0fc]
    and a
    jr nz, jr_000_1e85

    ld [$c100], a
    inc a
    ld [wGameplayType], a
    ld [$c0fe], a
    ld [$c0ee], a
    jp Jump_000_1d98


    ld a, [$c0fc]
    and a
    jr nz, jr_000_1e85

    ld [wGameplayType], a
    ld a, [$c0e9]
    and a
    jr nz, jr_000_1e58

    ld a, [$c120]
    cp $0a
    jr z, jr_000_1e4b

    ld a, [$c2ef]
    inc a
    cp $0a
    jr z, jr_000_1e58

    ld [$c2ef], a
    jr jr_000_1e5c

jr_000_1e4b:
    ld a, [$c2ef]
    inc a
    cp $08
    jr z, jr_000_1e58

    ld [$c2ef], a
    jr jr_000_1e5c

jr_000_1e58:
    xor a
    ld [$c2ef], a

jr_000_1e5c:
    xor a
    ld [$c0ff], a
    ld [$c2d9], a
    ld [$c2da], a
    ld [$c2d7], a
    ld [$c2d8], a
    ld [$c0e9], a
    ld [$c0ee], a
    ld a, $01
    ld [$c0fe], a
    call Call_000_0cbd
    jp nc, Jump_000_1d98

    ld a, $03
    ld [wGameplayType], a
    jp Jump_000_1d98


jr_000_1e85:
    ld a, $03
    ld [wGameplayType], a
    jr jr_000_1e5c

    ld a, [$c0fc]
    and a
    jr nz, jr_000_1e99

    ld a, $70
    ld [wGameplayType], a
    jr jr_000_1ea1

jr_000_1e99:
    ld a, $10
    ld [wGameplayType], a
    ld [$c0fe], a

jr_000_1ea1:
    jp Jump_000_1d98


    ld a, [$c0fc]
    and a
    jr nz, jr_000_1eb1

    ld a, $08
    ld [$c0d1], a
    jr jr_000_1eb6

jr_000_1eb1:
    ld a, $10
    ld [$c0d1], a

jr_000_1eb6:
    ld a, $02
    ld [wGameplayType], a
    ld [$c0fe], a
    jp Jump_000_1d98


    ld a, [$c0fc]
    and a
    jr nz, jr_000_1ece

    ld a, $60
    ld [wGameplayType], a
    jr jr_000_1ed6

jr_000_1ece:
    ld a, $03
    ld [wGameplayType], a
    ld [$c0fe], a

jr_000_1ed6:
    xor a
    ld [$c0ff], a
    ld [$c2d9], a
    ld [$c2da], a
    ld [$c2d7], a
    ld [$c2d8], a
    jp Jump_000_1d98


    jp hl


    ld e, $b6
    dec e
    rst $20
    dec e
    ld [de], a
    ld e, $28
    ld e, $8c
    ld e, $a4
    ld e, $c1
    db $1e

Call_000_1ef9:
    ld a, h
    ld [$c0f7], a
    ld a, l
    ld [$c0f8], a
    call Call_000_1f17
    ld a, $ff
    ld [$c0ad], a
    ret


Call_000_1f0a:
    ld de, $c0ad

Call_000_1f0d:
jr_000_1f0d:
    ld a, [hl+]
    ld [de], a
    cp $ff
    jr z, jr_000_1f16

    inc de
    jr jr_000_1f0d

jr_000_1f16:
    ret


Call_000_1f17:
    ld a, $01
    ld [$c0f6], a

jr_000_1f1c:
    ld a, [$c0f6]
    and a
    jr nz, jr_000_1f1c

    ret


Call_000_1f23:
    ld [$c0ac], a
    ld a, $08
    ld [$c0d1], a
    ld a, h
    ldh [$8f], a
    ld a, l
    ldh [$90], a
    jp Jump_000_054c


Call_000_1f34:
    ld hl, $9fff
    ld bc, $0400

jr_000_1f3a:
    ld a, $d4
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1f3a

    call Call_000_1f58
    ld a, $01
    ld [$c0fd], a

Call_000_1f4a:
Jump_000_1f4a:
    ld a, $9e
    ldh [$8f], a
    ld [$c0f7], a
    xor a
    ldh [$90], a
    ld [$c0f8], a
    ret


Call_000_1f58:
    ld hl, $9c00
    ld de, $777d
    call Call_000_1bec
    ld b, $09

jr_000_1f63:
    ld a, $11
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld de, $778d
    call Call_000_1bec
    dec b
    jr nz, jr_000_1f63

    ld bc, $0011
    add hl, bc
    ld de, $779d
    jp Jump_000_1bec


Call_000_1f7e:
    ld a, [$c2d7]
    ld [$c0a1], a
    ld a, [$c2d8]
    ld [$c0a2], a
    call Call_000_203a
    ld a, $88
    ld [$c2db], a
    ld de, $c030
    ld hl, $c2d3
    ld c, $04

jr_000_1f9a:
    ld a, $18
    ld [de], a
    inc de
    ld a, [$c2db]
    ld [de], a
    inc de
    ld a, [hl+]
    ld b, a
    ld a, $c8
    add b
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [$c2db]
    add $08
    ld [$c2db], a
    dec c
    jr nz, jr_000_1f9a

    ret


Call_000_1fb9:
    ld a, $d2
    ld [$c2dd], a
    inc a
    ld [$c2de], a
    ld a, $c7
    ld [$c2e1], a
    ld a, [$c2ef]
    inc a
    ld l, a
    ld h, $00
    call Call_000_2066
    ld a, [$c2d5]
    add $c8
    ld [$c2e2], a
    ld a, [$c2d6]
    add $c8
    ld [$c2e3], a
    ld a, [$c120]
    inc a
    ld l, a
    ld h, $00
    call Call_000_2066
    ld a, [$c2d5]
    add $c8
    ld [$c2df], a
    ld a, [$c2d6]
    add $c8
    ld [$c2e0], a
    ld a, [$c2ee]
    and a
    jr z, jr_000_2015

    ld a, $dc
    ld [$c2dd], a
    ld a, $db
    ld [$c2de], a
    ld a, $e0
    ld [$c2df], a
    ld a, $eb
    ld [$c2e0], a

jr_000_2015:
    ld de, $c2dd
    ld hl, $c040
    ld a, $70
    ld [$c2dc], a
    ld c, $07

jr_000_2022:
    ld a, $10
    ld [hl+], a
    ld a, [$c2dc]
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$c2dc]
    add $08
    ld [$c2dc], a
    dec c
    jr nz, jr_000_2022

    ret


Call_000_203a:
    ld a, [$c0a1]
    ld l, a
    ld a, [$c0a2]
    ld h, a
    ld e, $00
    ld bc, $2710
    call Call_000_2077
    ld a, e
    ld [$c2d2], a
    ld e, $00
    ld bc, $03e8
    call Call_000_2077
    ld a, e
    ld [$c2d3], a
    ld e, $00
    ld bc, $0064
    call Call_000_2077
    ld a, e
    ld [$c2d4], a

Call_000_2066:
    ld e, $00
    ld bc, $000a
    call Call_000_2077
    ld a, e
    ld [$c2d5], a
    ld a, l
    ld [$c2d6], a
    ret


Call_000_2077:
jr_000_2077:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    jr c, jr_000_2082

    inc e
    jr jr_000_2077

jr_000_2082:
    add hl, bc
    ret


Call_000_2084:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ld c, a
    ldh a, [$8b]
    xor c
    and c
    ldh [$8c], a
    ld a, c
    ldh [$8b], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_20b5:
    ld c, $80
    ld b, $0a
    ld hl, $20c3

jr_000_20bc:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_20bc

    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_20c9:
    dec a
    jr nz, jr_000_20c9

    ret


Call_000_20cd:
    ldh a, [$8d]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    ld hl, $9800
    ld b, $20

jr_000_20e0:
    add hl, de
    dec b
    jr nz, jr_000_20e0

    ldh a, [$8e]
    sub $08
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    add hl, de
    ld a, h
    ldh [$8f], a
    ld a, l
    ldh [$90], a
    ret


Call_000_20fa:
    ldh a, [$8f]
    ld d, a
    ldh a, [$90]
    ld e, a
    ld b, $04

jr_000_2102:
    rr d
    rr e
    dec b
    jr nz, jr_000_2102

    ld a, e
    sub $84
    and $fe
    rlca
    rlca
    add $20
    ldh [$8d], a
    ldh a, [$90]
    and $1f
    rla
    rla
    rla
    add $08
    ldh [$8e], a
    ret


TableJump:
    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    pop hl
    jp hl


Call_000_212c:
    ldh a, [rIE]
    ldh [$92], a
    res 0, a

jr_000_2132:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_2132

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$92]
    ldh [rIE], a
    ret


Call_000_2143:
Jump_000_2143:
jr_000_2143:
    ld a, $00
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_000_2143

    ret


Call_000_214c:
    ld hl, $9bff
    ld bc, $0400

jr_000_2152:
    ld a, $d4
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_2152

    ret


Call_000_215b:
Jump_000_215b:
jr_000_215b:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b

Call_000_2160:
    or c
    jr nz, jr_000_215b

    ret


Call_000_2164:
Jump_000_2164:
    push hl
    add hl, de
    ld a, [hl]
    pop hl
    ret


Call_000_2169:
Jump_000_2169:
    push hl
    add hl, de
    ld [hl], a
    pop hl
    ret


Call_000_216e:
Jump_000_216e:
    push hl
    ld d, $00
    add hl, de
    ld a, [hl]
    pop hl
    ret


Call_000_2175:
Jump_000_2175:
    push hl
    ld d, $00
    add hl, de
    ld [hl], a
    pop hl
    ret


Call_000_217c:
    call Call_000_25b5
    ld hl, $2679
    call Call_000_25d1

Call_000_2185:
    ld bc, $008c
    ld hl, $c2fc
    jp Jump_000_2143


Call_000_218e:
    ld b, $02
    ld de, $c384
    ld hl, $c2fc

jr_000_2196:
    ld a, [de]
    ld c, a
    inc de
    inc de
    ld a, [de]
    cp c
    call nz, Call_000_23f5
    dec de
    push de
    ld de, $0040
    add hl, de
    pop de
    dec b
    jr nz, jr_000_2196

    ld a, $08
    ld hl, $c2fc

jr_000_21ae:
    ld [$c388], a
    ld a, [hl]
    or a
    jr z, jr_000_21e5

    ld e, $0b
    call Call_000_216e
    or a
    jr z, jr_000_21d3

    dec a
    call Call_000_2175
    or a
    jr nz, jr_000_21d3

    call Call_000_21f2
    jr z, jr_000_21cb

    ld a, $40

jr_000_21cb:
    ld e, $03
    call Call_000_2175
    call Call_000_22d1

jr_000_21d3:
    call Call_000_21f2
    jp z, Jump_000_2397

    ld e, $0a
    call Call_000_216e
    dec a
    jp z, Jump_000_21fb

    call Call_000_2175

Jump_000_21e5:
jr_000_21e5:
    ld de, $0010
    add hl, de
    ld a, [$c388]
    dec a
    jr nz, jr_000_21ae

    jp Jump_000_24f5


Call_000_21f2:
    ld a, [$c388]
    sub $01
    ret z

    sub $04
    ret


Jump_000_21fb:
    call Call_000_24bf
    cp $ff
    jr z, jr_000_2243

    cp $f0
    jr z, jr_000_2221

Call_000_2206:
    cp $60
    jr c, jr_000_225a

    cp $70
    jp c, Jump_000_22d6

    cp $80
    jp c, Jump_000_22e7

    cp $90
    jp c, Jump_000_2309

    cp $a2
    jp z, Jump_000_2325

    jp Jump_000_21fb


jr_000_2221:
    xor a
    ld [$c384], a
    ld [$c386], a
    ld a, [$c385]
    or a
    jr z, jr_000_2238

    push hl
    ld de, $0040
    add hl, de
    ld a, [hl]
    or $80
    ld [hl], a
    pop hl

jr_000_2238:
    push hl
    ld bc, $0010
    call Call_000_2143
    pop hl
    jp Jump_000_21e5


jr_000_2243:
    ld e, $08
    call Call_000_216e
    ld e, $06
    call Call_000_2175
    ld e, $09
    call Call_000_216e
    ld e, $07
    call Call_000_2175
    jp Jump_000_21fb


jr_000_225a:
    ld de, $23a6
    push de
    ld b, a
    call Call_000_21f2
    jp z, Jump_000_23dc

    pop de
    ld a, b
    or a
    jp z, Jump_000_233c

    cp $01
    jp z, Jump_000_2346

    push hl
    dec a
    dec a
    add a
    ld l, a
    ld h, $00
    ld de, $25df
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    pop hl
    ld e, $04
    call Call_000_2175
    inc e
    call Call_000_216e
    and $f8
    or c
    call Call_000_2175
    ld a, [$c388]
    cp $07
    call z, Call_000_2350
    cp $03
    call z, Call_000_2350
    ld e, $0c
    call Call_000_216e
    ld e, $03
    call Call_000_2175

Jump_000_22a5:
    call Call_000_24bf
    ld e, $0a
    call Call_000_2175

Jump_000_22ad:
    ld c, a
    ld a, [hl]
    and $03
    jr z, jr_000_22c6

    cp $01
    jr z, jr_000_22c4

    cp $02
    jr z, jr_000_22bf

    ld a, $01
    jr jr_000_22c6

jr_000_22bf:
    ld a, c
    srl a
    jr jr_000_22c6

jr_000_22c4:
    ld a, c
    dec a

jr_000_22c6:
    ld e, $0b
    call Call_000_2175
    call Call_000_22d1
    jp Jump_000_21e5


Call_000_22d1:
    ld a, [hl]
    or $c0
    ld [hl], a
    ret


Jump_000_22d6:
    and $03
    ld b, a
    ld a, [hl]
    and $fc
    or b
    ld [hl], a
    call Call_000_21f2
    jp z, Jump_000_23a6

    jp Jump_000_21fb


Jump_000_22e7:
    push hl
    and $03
    inc a
    ld e, a
    call Call_000_24bf
    ld d, a
    ld hl, $c37c
    ld a, [$c388]
    cp $05
    jr nc, jr_000_22fe

    ld bc, $0004
    add hl, bc

jr_000_22fe:
    ld a, d
    call Call_000_2175
    ld a, $80
    ld [hl], a
    pop hl
    jp Jump_000_21fb


Jump_000_2309:
    and $07
    inc a
    ld e, a
    call Call_000_24bf
    ld b, a
    call Call_000_2175
    ld a, e
    cp $03
    jr z, jr_000_231c

    jp Jump_000_21fb


jr_000_231c:
    ld a, b
    ld e, $0c
    call Call_000_2175
    jp Jump_000_21fb


Jump_000_2325:
    ld e, $06
    call Call_000_216e
    ld b, a
    inc e
    call Call_000_216e
    ld e, $09
    call Call_000_2175
    dec e
    ld a, b
    call Call_000_2175
    jp Jump_000_21fb


Jump_000_233c:
    ld a, $08
    ld e, $03
    call Call_000_2175
    jp Jump_000_22a5


Jump_000_2346:
    ld a, $40
    ld e, $03
    call Call_000_2175
    jp Jump_000_22a5


Call_000_2350:
    ld e, $04
    call Call_000_216e
    dec a
    call Call_000_2175
    ret


Jump_000_235a:
    push de
    push bc
    push hl
    ld a, b
    cp $01
    jr z, jr_000_2386

    ld a, [$c385]
    or a
    jr z, jr_000_2386

    ld de, $0010
    ld b, $04
    ld a, $80
    ld [$c380], a

jr_000_2372:
    ld a, [hl]
    or a
    jr z, jr_000_2382

    push hl
    push de
    ld de, $0040
    add hl, de
    ld a, [hl]
    or $80
    ld [hl], a
    pop de
    pop hl

jr_000_2382:
    add hl, de
    dec b
    jr nz, jr_000_2372

jr_000_2386:
    pop hl
    push hl
    ld b, $04
    ld de, $0010
    xor a

jr_000_238e:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_238e

    pop hl
    pop bc
    pop de
    ret


Jump_000_2397:
    ld e, $0a
    call Call_000_216e
    dec a
    jp z, Jump_000_23a6

    call Call_000_2175
    jp Jump_000_21e5


Jump_000_23a6:
    call Call_000_24da
    cp $ff
    jp z, Jump_000_21fb

    cp $60
    jr c, jr_000_23ba

    cp $70
    jp c, Jump_000_22d6

    jp Jump_000_23a6


jr_000_23ba:
    push hl
    add a
    ld l, a
    ld h, $00
    ld de, $2657
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    pop hl
    ld e, $03
    call Call_000_2175
    ld a, c
    inc e
    call Call_000_2175
    call Call_000_24da
    ld e, $0a
    call Call_000_2175
    jp Jump_000_22ad


Call_000_23dc:
Jump_000_23dc:
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    ld de, $3b61
    add hl, de
    ld b, h
    ld c, l
    pop hl
    ld e, $0d
    ld a, [bc]
    inc bc
    call Call_000_2175
    inc e
    ld a, [bc]
    call Call_000_2175
    ret


Call_000_23f5:
    ld a, c
    ld [de], a
    or a
    jp z, Jump_000_235a

    push hl
    push bc
    push de
    push hl
    dec a
    add a
    ld hl, $2e46
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    ld hl, $c37c
    ld a, b
    ld b, $03
    cp $02
    jr z, jr_000_241b

    ld de, $0004
    add hl, de

jr_000_241b:
    ld a, $80
    ld [hl+], a
    ld de, $268a

jr_000_2421:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_000_2421

    pop de
    pop hl
    push hl
    push de
    ld bc, $0040
    call Call_000_2143
    pop bc
    pop hl
    push hl
    ld a, $04

jr_000_2436:
    ld [$c388], a
    ld a, $c1
    ld [hl], a
    ld e, $06
    ld a, [bc]
    inc bc
    call Call_000_2175
    inc e
    ld a, [bc]
    inc bc
    or a
    call z, Call_000_24bd
    call Call_000_2175
    ld e, $0a
    ld a, $01
    call Call_000_2175
    ld de, $0010
    add hl, de
    ld a, [$c388]
    dec a
    jr nz, jr_000_2436

    pop hl
    ld a, $04

jr_000_2461:
    ld [$c388], a
    ld a, [hl]
    or a
    jr z, jr_000_24a2

    call Call_000_24bf
    ld e, $01
    call Call_000_2175
    call Call_000_24bf
    inc e
    call Call_000_2175
    call Call_000_24bf
    inc e
    call Call_000_2175
    call Call_000_24bf
    inc e
    inc e
    call Call_000_2175
    inc e
    call Call_000_216e
    inc e
    inc e
    call Call_000_2175
    dec e
    call Call_000_216e
    inc e
    inc e
    call Call_000_2175
    ld e, $03
    call Call_000_216e
    ld e, $0c
    call Call_000_2175

jr_000_24a2:
    ld a, [$c388]
    dec a
    jr z, jr_000_24ae

    ld de, $0010
    add hl, de
    jr jr_000_2461

jr_000_24ae:
    call Call_000_24bf
    ld b, a
    call Call_000_23dc
    ld de, $0010
    add hl, de
    pop de
    pop bc
    pop hl
    ret


Call_000_24bd:
    ld [hl], a
    ret


Call_000_24bf:
    push de
    ld e, $06
    call Call_000_216e
    ld c, a
    inc e
    call Call_000_216e
    ld b, a
    ld a, [bc]
    push af
    inc bc
    ld a, b
    call Call_000_2175
    dec e
    ld a, c
    call Call_000_2175
    pop af
    pop de
    ret


Call_000_24da:
    push de
    ld e, $0d
    call Call_000_216e
    ld c, a
    inc e
    call Call_000_216e
    ld b, a
    ld a, [bc]
    push af
    inc bc
    ld a, b
    call Call_000_2175
    dec e
    ld a, c
    call Call_000_2175
    pop af
    pop de
    ret


Jump_000_24f5:
    ld b, $02
    ld c, $24
    ld hl, $c37c

jr_000_24fc:
    ld a, [hl]
    or a
    jr nz, jr_000_2509

    ld de, $0004
    add hl, de
    dec b
    jr nz, jr_000_24fc

    jr jr_000_2513

jr_000_2509:
    ld b, $03
    xor a
    ld [hl+], a

jr_000_250d:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_250d

jr_000_2513:
    ld hl, $c2f8
    ld bc, $0004
    call Call_000_2143
    ld a, $08
    ld c, $10
    ld hl, $c2fc

Jump_000_2523:
jr_000_2523:
    push hl
    ld hl, $c2f8
    ld [$c388], a
    cp $05
    jr c, jr_000_2530

    sub $04

jr_000_2530:
    dec a
    ld e, a
    call Call_000_216e
    pop hl
    or a
    jr nz, jr_000_25a9

    ld a, [hl]
    or a
    jr z, jr_000_25a9

    and $80
    jr z, jr_000_25af

    ld a, [$c388]
    cp $06
    jr z, jr_000_254c

    cp $02
    jr nz, jr_000_254f

jr_000_254c:
    xor a
    ldh [rNR30], a

jr_000_254f:
    ld b, $05
    ld e, $01

jr_000_2553:
    call Call_000_216e
    ld [c], a
    inc c
    inc e
    dec b
    jr nz, jr_000_2553

    ld a, [hl]
    and $7f
    ld [hl], a

jr_000_2560:
    push hl
    ld hl, $c2f8
    ld a, [$c388]
    cp $05
    jr c, jr_000_256d

    sub $04

jr_000_256d:
    dec a
    ld e, a
    ld a, $ff
    call Call_000_2175
    pop hl

jr_000_2575:
    ld de, $0010
    add hl, de
    ld a, [$c388]
    dec a
    ld [$c388], a
    cp $04
    jr z, jr_000_25a4

    or a
    jr nz, jr_000_2523

    ld b, $04
    ld c, $12
    ld hl, $c2fb

jr_000_258e:
    ld a, [hl-]
    or a
    jr nz, jr_000_259c

    ld a, $08
    ld [c], a
    ld d, c
    inc c
    inc c
    ld a, $80
    ld [c], a
    ld c, d

jr_000_259c:
    ld a, $05
    add c
    ld c, a
    dec b
    jr nz, jr_000_258e

    ret


jr_000_25a4:
    ld c, $10
    jp Jump_000_2523


jr_000_25a9:
    ld a, $05
    add c
    ld c, a
    jr jr_000_2575

jr_000_25af:
    ld a, $05
    add c
    ld c, a
    jr jr_000_2560

Call_000_25b5:
    ld hl, $2689
    ld de, $c37c
    ld b, $08

jr_000_25bd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_25bd

    ld hl, $c37f
    ld c, $26
    ld b, $03

jr_000_25ca:
    ld a, [hl-]
    ld [c], a
    dec c
    dec b
    jr nz, jr_000_25ca

    ret


Call_000_25d1:
    xor a
    ldh [rNR30], a
    ld b, $10
    ld c, $30

jr_000_25d8:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_25d8

    ret


    nop
    inc l
    nop
    sbc l
    ld bc, $0107
    ld l, e
    ld bc, $02c9
    inc hl
    ld [bc], a
    ld [hl], a
    ld [bc], a
    add $03
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1604

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    dec b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    ld b, $0b
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    rlca
    ld b, $07
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    nop
    ld [$f146], sp
    daa
    pop af
    ld bc, $27a1
    ld c, $01
    and e
    ld bc, $6951
    ld h, $79
    ld h, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ad36
    rst $28
    cp $ca
    sbc b
    add [hl]
    ld d, [hl]
    adc d
    call $ceec
    db $db
    sub [hl]
    ld sp, $7700
    rst $38
    adc a
    nop
    ld [hl], a
    rst $38
    adc a

Call_000_2691:
    ld a, [$c384]
    or a
    ret nz

    ld a, [$c0f1]
    or a
    ret nz

    ld a, [wGameplayType]
    cp $10
    jr z, jr_000_26ba

    cp $70
    jr z, jr_000_26ba

    and $f0
    ret nz

    ld a, [wGameplayType]
    or a
    jr z, jr_000_26c6

    cp $01
    jr z, jr_000_26c1

    cp $06
    jr z, jr_000_26be

    cp $08
    ret z

jr_000_26ba:
    ld a, $02
    jr jr_000_26c8

jr_000_26be:
    xor a
    jr jr_000_26c8

jr_000_26c1:
    ld a, [$c2ed]
    or a
    ret nz

jr_000_26c6:
    ld a, $03

jr_000_26c8:
    ld [$c385], a
    ret


Call_000_26cc:
jr_000_26cc:
    ld a, [$c384]
    and a
    jr nz, jr_000_26cc

    ret


Call_000_26d3:
jr_000_26d3:
    call Call_000_2185
    ld a, [$c386]
    or a
    jr nz, jr_000_26d3

    ld c, $26
    ld a, $8f
    ld [c], a
    dec c
    ld a, $ff
    ld [c], a
    dec c
    ld a, $77
    ld [c], a
    ld hl, $2669
    call Call_000_25d1
    ld c, $1a
    ld a, $80
    ld [c], a
    inc c
    ld a, $00
    ld [c], a
    inc c
    ld a, $20
    ld [c], a
    inc c
    ld a, $00
    ld [c], a
    inc c
    ld a, $80
    ld [c], a
    ld hl, $c3a8
    ld b, $08
    ld c, $1c
    ld e, $aa
    ld a, [hl+]
    ld d, a
    di

jr_000_2710:
    xor a
    rl d
    rra
    rra
    rra
    ld [c], a
    dec b
    jr z, jr_000_2720

Call_000_271a:
    push hl
    pop hl
    nop
    nop
    jr jr_000_2710

jr_000_2720:
    ld a, [hl+]
    ld d, a
    cp e
    jr z, jr_000_2729

    ld b, $08
    jr jr_000_2710

jr_000_2729:
    ei
    ld a, $00
    ld c, $1c
    ld [c], a
    ld hl, $2679
    call Call_000_25d1
    ret


Call_000_2736:
    xor a
    ld [$c2f2], a
    ld [$c2f3], a
    ld [$c2f6], a
    ld de, $c3a8
    ld a, [hl+]
    ld [$c2f1], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    dec bc
    dec bc
    dec bc

Jump_000_274e:
    ld a, [hl+]
    push hl
    push bc
    ld c, a
    cp $ff
    jr z, jr_000_275b

    ld a, $01
    ld [$c2f3], a

jr_000_275b:
    ld a, [$c2f2]
    or a
    jr z, jr_000_278a

    ld b, a
    ld a, [$c2f1]
    or a
    jr z, jr_000_2779

jr_000_2768:
    ld a, [$c2f6]
    scf
    rla
    ld [$c2f6], a
    dec c
    jp z, Jump_000_27da

    dec b
    jr nz, jr_000_2768

    jr jr_000_2788

jr_000_2779:
    ld a, [$c2f6]
    or a
    rla
    ld [$c2f6], a
    dec c
    jp z, Jump_000_27da

    dec b
    jr nz, jr_000_2779

jr_000_2788:
    ld [de], a
    inc de

jr_000_278a:
    xor a
    ld [$c2f2], a
    ld [$c2f6], a
    ld h, a
    ld l, c
    ld b, $08
    ld c, $08

jr_000_2797:
    add hl, hl
    ld a, h
    sub c
    jr c, jr_000_279e

    inc l
    ld h, a

jr_000_279e:
    dec b
    jr nz, jr_000_2797

    ld a, l
    or a
    jr z, jr_000_27ae

    ld b, a
    ld a, [$c2f1]

jr_000_27a9:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_27a9

jr_000_27ae:
    ld b, $08
    ld a, h
    ld c, a
    or a
    jp z, Jump_000_27eb

    ld a, [$c2f1]
    or a
    jr z, jr_000_27cb

jr_000_27bc:
    ld a, [$c2f6]
    scf
    rla
    ld [$c2f6], a
    dec c
    jp z, Jump_000_27da

    dec b
    jr jr_000_27bc

jr_000_27cb:
    ld a, [$c2f6]
    or a
    rla
    ld [$c2f6], a
    dec c
    jp z, Jump_000_27da

    dec b
    jr jr_000_27cb

Jump_000_27da:
    dec b
    ld a, b
    ld [$c2f2], a
    or a
    jr nz, jr_000_27eb

    ld a, [$c2f6]
    ld [de], a
    inc de
    xor a
    ld [$c2f6], a

Jump_000_27eb:
jr_000_27eb:
    pop bc
    pop hl
    dec bc
    ld a, b
    or c
    jr z, jr_000_2808

    ld a, [$c2f3]
    or a
    jp z, Jump_000_274e

    ld a, [$c2f1]
    xor $ff
    ld [$c2f1], a
    xor a
    ld [$c2f3], a
    jp Jump_000_274e


jr_000_2808:
    ld a, [$c2f2]
    ld b, a
    or a
    jr z, jr_000_2821

    ld a, [$c2f1]
    or a
    ld a, [$c2f6]
    scf
    jr z, jr_000_281a

    ccf

jr_000_281a:
    rla
    ld [$c2f6], a
    dec b
    jr nz, jr_000_2808

jr_000_2821:
    ld [de], a
    inc de
    ld a, $aa
    ld [de], a
    inc de
    ret


Call_000_2828:
    ld a, [$c132]
    and a
    jp nz, Jump_000_2903

    ld a, [$c120]
    ld e, a
    ld hl, $78d3
    call Call_000_216e
    ld [$c138], a
    ld a, [$c138]
    ld e, a
    ld hl, $78df
    call Call_000_216e
    ld [$c139], a
    ld a, [$c138]
    cp $01
    jr z, jr_000_2854

    cp $02
    jr nz, jr_000_285d

jr_000_2854:
    ld hl, $c050
    ld de, $78b6
    call Call_000_2c11

jr_000_285d:
    ld hl, $c000
    ld de, $789d
    call Call_000_2c11
    ld a, [$c120]
    cp $0b
    jr nz, jr_000_287d

    ld hl, $c090
    ld de, $7889
    call Call_000_2c11
    ld a, $02
    ld [$c135], a
    jr jr_000_28e7

jr_000_287d:
    ld hl, $c070
    ld de, $78b1
    call Call_000_2c11
    ld hl, $c090
    ld de, $7884
    ld a, [$c138]
    cp $04
    jr z, jr_000_289c

    cp $03
    jr nz, jr_000_289f

    ld a, $02
    ld [$c135], a

jr_000_289c:
    ld de, $78b6

jr_000_289f:
    call Call_000_2c11
    ld hl, $c072
    ld a, [$c138]
    cp $04
    jr nz, jr_000_28b0

    ld a, $e0
    jr jr_000_28b2

jr_000_28b0:
    ld a, $a4

jr_000_28b2:
    call Call_000_1259
    ld hl, $c090
    ld a, [$c120]
    sub $08
    jr c, jr_000_28e7

    and a
    jr nz, jr_000_28cd

    ld a, $40
    ld [hl+], a
    ld a, $28
    ld [hl+], a
    ld a, $b1
    ld [hl], a
    jr jr_000_28e7

jr_000_28cd:
    cp $01
    jr nz, jr_000_28d9

    ld de, $7893
    call Call_000_2c11
    jr jr_000_28df

jr_000_28d9:
    ld de, $7898
    call Call_000_2c11

jr_000_28df:
    ld hl, $c092
    ld a, $e8
    call Call_000_1259

jr_000_28e7:
    xor a
    ld [$c385], a
    ld [$c2d9], a
    ld [$c13a], a
    ld [$c0e2], a
    inc a
    ld [$c132], a
    ld a, [$c0d1]
    ld [$c134], a
    ld a, $09
    ld [$c384], a

Jump_000_2903:
    ld a, [$c0a4]
    and $01
    ret nz

    call Call_000_0db8
    ld a, [$c135]
    cp $03
    jp nc, Jump_000_29b9

    cp $01
    jr z, jr_000_2948

    ld a, [$c138]
    cp $03
    jr z, jr_000_292a

    ld a, [$c139]
    and a
    jr z, jr_000_292a

    ld a, $01
    ld [$c0e2], a

jr_000_292a:
    ld a, $01
    ld [$c133], a
    ld a, [$c120]
    cp $0b
    jr nz, jr_000_293b

    ld de, $786f
    jr jr_000_293e

jr_000_293b:
    ld de, $786d

jr_000_293e:
    ld hl, $c000
    ld a, $f0
    ldh [$8b], a
    call Call_000_2be3

jr_000_2948:
    ld a, [$c135]
    cp $02
    jr z, jr_000_29a0

    ld a, $02
    ld [$c133], a
    ld a, [$c138]
    cp $03
    jr z, jr_000_296b

    cp $04
    jr z, jr_000_296b

    ld a, [$c139]
    ld e, a
    ld hl, $78d1
    call Call_000_216e
    jr jr_000_296d

jr_000_296b:
    ld a, $d0

jr_000_296d:
    ld [$c136], a
    ld a, [$c139]
    ld hl, $7865
    call Call_000_0e7c
    push hl
    ld a, [$c139]
    ld e, a
    ld hl, $78cd
    call Call_000_216e
    ld [$c137], a
    ld e, a
    ld d, $00
    ld hl, $c000
    add hl, de
    pop de
    ld a, [$c139]
    cp $02
    jr c, jr_000_2999

    xor a
    jr jr_000_299b

jr_000_2999:
    ld a, $f0

jr_000_299b:
    ldh [$8b], a
    call Call_000_2be3

jr_000_29a0:
    call Call_000_1236
    ld a, [$c134]
    dec a
    ld [$c134], a
    ret nz

    ld a, [$c2d9]
    inc a
    ld [$c2d9], a
    ld a, [$c0d1]
    ld [$c134], a
    ret


Jump_000_29b9:
    xor a
    ld [$c2d9], a
    ld a, [$c13a]
    cp $06
    jp z, Jump_000_2ba6

    cp $05
    jp z, Jump_000_2b31

    and a
    jp nz, Jump_000_2aa1

    ld a, [$c138]
    cp $05
    jp z, Jump_000_2af5

    and a
    jr nz, jr_000_29fb

    ld a, $01
    ld [$c135], a
    ld [$c139], a
    ld hl, $c002
    ld a, $80
    call Call_000_1259
    call Call_000_0663
    call Call_000_2c04
    ld hl, $c080
    ld de, $78a2
    call Call_000_2c11
    jp Jump_000_2aef


jr_000_29fb:
    cp $03
    jr nc, jr_000_2a39

    call Call_000_2c04
    call Call_000_2c04
    ld a, [$c120]
    cp $08
    jr nc, jr_000_2a36

    call Call_000_0650
    ld a, [$c138]
    cp $02
    jr nz, jr_000_2a36

    ld hl, $c030
    ld de, $78a2
    call Call_000_2c11
    ld hl, $c032
    ld a, $e4
    call Call_000_1259
    ld a, [$c120]
    cp $02
    jr nz, jr_000_2a36

    ld a, $d4
    ld [$c032], a
    ld [$c036], a

jr_000_2a36:
    jp Jump_000_2aef


jr_000_2a39:
    xor a
    ld [$c0e2], a
    inc a
    ld [$c135], a
    ld [$c139], a
    ld a, [$c138]
    cp $03
    jr nz, jr_000_2a65

    call Call_000_0663
    ld hl, $c002
    ld a, $c8
    call Call_000_1259
    ld a, $78
    ld [$c030], a
    ld a, $30
    ld [$c031], a
    ld a, $ec
    ld [$c032], a

jr_000_2a65:
    call Call_000_2c04
    ld hl, $c092
    ld a, $c4
    call Call_000_1259
    call Call_000_2c04
    ld a, [$c138]
    cp $03
    jr nz, jr_000_2a7f

    ld a, $d4
    ld [$c032], a

jr_000_2a7f:
    call Call_000_0663
    ld hl, $c002
    ld a, $b8
    call Call_000_1259
    call Call_000_2c04
    ld hl, $c002
    ld a, $b4
    call Call_000_1259
    ld hl, $c080
    ld de, $78a2
    call Call_000_2c11
    jp Jump_000_2aef


Jump_000_2aa1:
    call Call_000_2bba
    ld a, [$c138]
    cp $03
    jr nz, jr_000_2aad

    jr jr_000_2ab1

jr_000_2aad:
    cp $04
    jr nz, jr_000_2ab8

jr_000_2ab1:
    ld a, $0b
    ld [$c384], a
    jr jr_000_2abd

jr_000_2ab8:
    ld a, $0a
    ld [$c384], a

jr_000_2abd:
    call Call_000_26cc
    ld a, [$c120]
    and a
    jr z, jr_000_2aca

    ld a, $40
    jr jr_000_2aca

jr_000_2aca:
    ld [wGameplayType], a
    ld [$c133], a
    xor a
    ld [wGameplaySubtype], a
    ld a, [$c12d]
    and a
    jr nz, jr_000_2add

    jp Jump_000_0198


jr_000_2add:
    ld a, $06
    ld [wGameplayType], a
    ld [$c133], a
    ld a, [$c120]
    inc a
    ld [$c120], a
    jp Jump_000_0198


Jump_000_2aef:
    ld a, $01
    ld [$c13a], a
    ret


Jump_000_2af5:
    ld a, $01
    ld [$c135], a
    ld [$c139], a
    call Call_000_0663
    ld hl, $c002
    ld a, $ea
    call Call_000_1259
    ld a, $78
    ld [$c030], a
    ld a, $50
    ld [$c031], a
    ld a, $ee
    ld [$c032], a
    ld hl, $c092
    ld a, $bc
    call Call_000_1259
    call Call_000_2c04
    ld hl, $c080
    ld de, $78a7
    call Call_000_2c11
    ld a, $05
    ld [$c13a], a
    ret


Jump_000_2b31:
    ld hl, $3e94
    call Call_000_2736
    ld hl, $c082
    ld a, $d4
    call Call_000_1259
    ld a, $d4
    ld [$c032], a
    call Call_000_0650
    call Call_000_26d3
    ld a, $01
    ld [$c384], a
    call Call_000_2c04
    ld hl, $c090
    ld de, $788e
    call Call_000_2c11
    ld a, $d8
    ld [$c133], a
    ld a, $de
    ld b, $03

jr_000_2b64:
    push bc
    push af
    call Call_000_1236
    call Call_000_2c04
    ld hl, $c092
    ld a, $d4
    call Call_000_1259
    pop af
    ld hl, $c002
    call Call_000_1259
    push af
    ld a, [$c133]
    ld [$c096], a
    inc a
    ld [$c09e], a
    inc a
    ld [$c133], a
    pop af
    pop bc
    dec b
    jr nz, jr_000_2b64

    ld a, $01
    ld [$c135], a
    ld [$c139], a
    ld hl, $c080
    ld de, $78ac
    call Call_000_2c11
    ld a, $06
    ld [$c13a], a
    ret


Jump_000_2ba6:
    call Call_000_2c04
    xor a
    ld [$c133], a
    ld [$c0a2], a
    ld [$c0d7], a
    inc a
    ld [$c0a3], a
    jp Jump_000_02cd


Call_000_2bba:
    ld hl, $7850
    call Call_000_1f0a
    ld hl, $78e5
    ld a, [$c120]
    call Call_000_0e7c
    call Call_000_149f
    call Call_000_1f0d
    ld hl, $9905
    ld a, $f0
    ld [wGameplayType], a
    call Call_000_1ef9
    ld a, $06
    ld [wGameplayType], a
    call Call_000_2c04
    ret


Call_000_2be3:
    ld a, [$c2d9]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    cp $fe
    jr z, jr_000_2bf8

    ld [$c0d0], a
    call Call_000_0800
    ret


jr_000_2bf8:
    ld a, [$c133]
    ld b, a
    ld a, [$c135]
    add b
    ld [$c135], a
    ret


Call_000_2c04:
    ld a, [$c0f2]
    ld b, a

jr_000_2c08:
    ld a, [$c0f2]
    sub b
    cp $02
    jr nz, jr_000_2c08

    ret


Call_000_2c11:
    push hl
    ld a, [de]
    inc de
    push de
    push hl
    ld hl, $78bb
    call Call_000_0e7c
    push hl
    pop de
    pop hl
    call Call_000_2c29
    pop de
    pop hl
    inc hl
    call Call_000_2c29
    ret


Call_000_2c29:
    ld b, $04

jr_000_2c2b:
    ld a, [de]
    ld [hl+], a
    inc de
    inc hl
    inc hl
    inc hl
    dec b
    jr nz, jr_000_2c2b

    ret


Call_000_2c35:
    ld a, [wGameplayType]
    cp $06
    ret nz

    call Call_000_0c0d
    ld a, $10
    ld [$c0d1], a
    ld hl, $c092
    ld a, $bc
    call Call_000_1259
    ld hl, $c082
    ld a, $cc
    call Call_000_1259
    ld hl, $c052
    ld a, $a4
    call Call_000_1259
    ld hl, $c032
    ld a, $d4
    call Call_000_1259
    ld hl, $c042
    ld a, $d4
    call Call_000_1259
    ld hl, $c052
    ld a, $d4
    call Call_000_1259
    ld hl, $c132
    ld bc, $0009
    call Call_000_2143
    xor a
    ld [$c0e2], a
    ld [$c0cc], a
    ld [$c0f1], a
    ld [$c0e1], a
    ret


Call_000_2c8a:
    ld a, [wGameplayType]
    cp $06
    jr nz, jr_000_2cbc

    ld hl, $7285
    ld de, $8b40
    ld bc, $0200
    call Call_000_215b
    ld hl, $7485
    ld de, $8d80
    ld bc, $0150
    call Call_000_215b
    ld a, [$c120]
    cp $0b
    jr nz, jr_000_2cbc

    ld hl, $75d5
    ld de, $8d80
    ld bc, $0170
    call Call_000_215b

jr_000_2cbc:
    ret


Call_000_2cbd:
    ld a, [wGameplayType]
    cp $08
    ret nz

    call Call_000_214c
    ld a, $02
    ld [$c2f7], a
    ld a, $98
    ld [$c0f7], a
    ld a, $80
    ld [$c0f8], a
    ld hl, $7847
    call Call_000_1f0a
    ld hl, $2dd3
    call Call_000_149f
    call Call_000_1f0d
    call Call_000_1be1
    ld a, $00
    ld [$c0f8], a
    ld a, $99
    ld [$c0f7], a
    ld hl, $7847
    call Call_000_1f0a
    ld hl, $2dec
    call Call_000_149f
    call Call_000_1f0d
    call Call_000_1be1
    ld hl, $c032
    ld a, $d4

Call_000_2d08:
    call Call_000_1259
    ld hl, $c042
    ld a, $d4
    call Call_000_1259
    ld hl, $c052
    ld a, $d4
    call Call_000_1259
    ret


Call_000_2d1c:
    call Call_000_1295
    call Call_000_1295
    ldh a, [$8b]
    and $c0
    ret z

    and $80
    jr z, jr_000_2d35

    ld a, [$c2f7]
    dec a
    jr nz, jr_000_2d3f

    ld a, $07
    jr jr_000_2d3f

jr_000_2d35:
    ld a, [$c2f7]
    inc a
    cp $08
    jr nz, jr_000_2d3f

    ld a, $01

jr_000_2d3f:
    ld [$c2f7], a
    ld a, $f0
    ld [wGameplayType], a
    ld hl, $7847
    call Call_000_1f0a
    ld hl, $9900
    call Call_000_2db7
    ld hl, $2dc3
    ld a, [$c2f7]
    call Call_000_0e7c
    call Call_000_149f
    call Call_000_1f0d
    ld hl, $9900
    call Call_000_2db7
    ld a, $08
    ld [wGameplayType], a
    ld a, [$c2f7]
    cp $07
    jr z, jr_000_2d7c

    cp $05
    jr nc, jr_000_2d87

    ld [$c385], a
    ret


jr_000_2d7c:
    ld [$c384], a
    xor a
    ld [$c385], a
    call Call_000_26cc
    ret


jr_000_2d87:
    cp $05
    jr z, jr_000_2da0

    ld a, $09
    ld [$c384], a
    call Call_000_26cc
    xor a
    ld [$c385], a
    ld a, $0a

jr_000_2d99:
    ld [$c384], a
    call Call_000_26cc
    ret


jr_000_2da0:
    ld [$c384], a
    xor a
    ld [$c385], a
    ld hl, $3e94
    call Call_000_2736

jr_000_2dad:
    call Call_000_26cc
    call Call_000_26d3
    ld a, $06
    jr jr_000_2d99

Call_000_2db7:
    ld a, h
    ld [$c0f7], a
    ld a, l
    ld [$c0f8], a
    call Call_000_1f17
    ret


    db $d3
    dec l
    sbc $2d
    db $ec
    dec l
    ld sp, hl
    dec l
    add hl, bc
    ld l, $1c
    ld l, $26
    ld l, $35
    ld l, $05
    ld c, $02
    add hl, bc

jr_000_2dd7:
    jr jr_000_2dad

    jr z, @+$19

    ld [bc], a
    inc hl
    rst $38
    inc b
    inc de
    dec l
    ld [de], a
    ld l, $01
    ld b, $0f
    ld bc, $06d4
    ld [hl+], a
    db $10
    rst $38
    inc b
    ld bc, $010e
    ld [de], a
    ld l, $01
    dec h
    call nc, Call_000_2206
    db $10
    rst $38
    inc bc
    ld [hl+], a
    dec h
    dec bc
    ld l, $1b
    ld l, $d4
    jr jr_000_2dd7

    nop

jr_000_2e04:
    inc b
    ld bc, $230e
    rst $38

Call_000_2e09:
    ld bc, $0213
    ld b, $5c
    ld [bc], a
    call nc, $010c
    rra

Call_000_2e13:
    dec l
    rlca
    ld l, $d4
    rlca
    inc hl
    dec de
    ld l, $ff
    ld b, $02
    ld h, $0b
    ld bc, $06d4
    ld [hl+], a
    db $10
    rst $38
    inc bc
    add hl, bc
    ld bc, $2e1a
    inc de
    rrca
    db $10
    jr jr_000_2e04

    ld a, [bc]
    ld a, [bc]
    jr z, jr_000_2e3a

    rst $38
    ld [bc], a
    ld e, $15
    nop
    ld [bc], a

jr_000_2e3a:
    inc de
	db $d4, $01, $01
    dec l
    rrca
    ld l, $08
    inc de
    ld l, $17
    rst $38
    ld e, [hl]
    ld l, $74
    ld [hl-], a
    ld b, [hl]
    dec [hl]
    db $ec
    jr c, @-$47

    dec a
    add hl, de
    ld a, $ee
    add hl, sp
    ld e, d
    ld a, [hl-]
    ld l, [hl]
    ld a, [hl-]
    db $ed
    ld a, [hl-]
    inc e
    dec sp
    ld d, c
    dec sp
    ld h, [hl]
    ld l, $98
    cpl
    ldh a, [$30]
    ld d, l
    ld [hl-], a
    ld [$b0c0], sp
    add b
    nop
    ld h, b
    and d
    ld h, c
    jr nz, jr_000_2e7c

    ld e, $0c
    inc e
    inc c
    dec de
    inc c
    ld e, $0c
    ld d, $0c
    rla
    inc c

jr_000_2e7c:
    add hl, de
    inc c
    ld [hl], c
    cp $19
    inc c
    ld [hl], c
    db $ed
    add hl, de
    inc c
    ld bc, $710c
    rst $18
    add hl, de
    inc c
    ld [hl], c
    cp $19
    inc c
    ld [hl], c
    db $ed
    add hl, de
    inc c
    ld bc, $710c
    rst $18
    add hl, de
    inc c
    ld [hl], c
    cp $1c
    inc c
    ld [hl], c
    db $ed
    inc e
    inc c
    ld [hl], c
    rst $38
    inc e
    inc c
    dec de
    inc c
    inc e
    jr jr_000_2eac

    inc c

jr_000_2eac:
    jr nz, jr_000_2f1a

    jr nz, jr_000_2ebc

    ld e, $0c
    inc e
    inc c
    dec de
    inc c
    ld e, $0c
    ld d, $0c
    rla
    inc c

jr_000_2ebc:
    add hl, de
    inc c
    ld [hl], c
    cp $19
    inc c
    ld [hl], c
    db $ed
    add hl, de
    inc c
    ld bc, $710c
    rst $18
    add hl, de
    inc c
    ld [hl], c
    cp $19
    inc c
    ld [hl], c
    db $ed
    add hl, de
    inc c
    ld bc, $710c
    rst $18
    add hl, de
    inc c
    ld [hl], c
    cp $1c
    inc c
    ld [hl], c
    db $ed
    inc e
    inc c
    ld [hl], c
    rst $38
    inc e
    inc c
    dec de
    inc c
    inc e
    jr jr_000_2eec

    inc c

jr_000_2eec:
    jr nz, jr_000_2f5a

    inc e
    jr jr_000_2f0a

    inc c
    rla
    inc c
    inc e
    jr jr_000_2f10

    inc c
    rla
    inc c
    ld [hl], c
    sbc $1c
    inc c
    ld e, $0c
    rra
    inc c
    jr nz, jr_000_2f10

    ld bc, $000c
    inc c
    add d
    pop af

jr_000_2f0a:
    inc hl
    jr jr_000_2f7e

    rst $38
    add d
    or b

jr_000_2f10:
    inc e
    jr @+$1b

    inc c
    rla
    inc c
    inc e
    inc c
    add hl, de
    inc c

jr_000_2f1a:
    dec d
    inc c
    inc d
    ld l, h
    inc e
    jr jr_000_2f3a

    inc c
    rla
    inc c
    inc e
    jr jr_000_2f40

    inc c
    rla
    inc c
    ld [hl], c
    sbc $1c
    inc c
    ld e, $0c
    rra
    inc c
    jr nz, jr_000_2f40

    ld bc, $000c
    inc c
    add d
    add hl, bc

jr_000_2f3a:
    inc hl
    inc c
    ld bc, $710c
    rst $38

jr_000_2f40:
    add d
    or b
    inc e
    jr jr_000_2f5e

    inc c
    rla
    inc c
    inc e
    inc c
    add hl, de
    inc c
    rla
    inc c
    jr nz, jr_000_2fbc

    ld e, $30
    ld e, $0c
    jr nz, jr_000_2f62

    ld hl, $230c
    inc h

jr_000_2f5a:
    jr nz, jr_000_2f68

    inc e
    inc a

jr_000_2f5e:
    ld e, $30
    ld e, $0c

jr_000_2f62:
    jr nz, jr_000_2f70

    ld hl, $230c
    inc h

jr_000_2f68:
    jr nz, jr_000_2f76

    inc e
    inc a
    ld e, $30
    ld e, $0c

jr_000_2f70:
    jr nz, jr_000_2f7e

    ld hl, $230c
    inc h

jr_000_2f76:
    jr nz, jr_000_2f84

    inc e
    inc a
    ld e, $60
    ld [hl], c
    rst $18

jr_000_2f7e:
    inc hl
    inc c
    dec h
    inc c
    dec e
    inc c

jr_000_2f84:
    ld e, $0c
    ld [hl], c
    sbc $82
    ld b, b
    ld h, b
    inc hl
    inc c
    dec h
    inc c
    dec e
    inc c
    ld e, $0c
    ld [hl], c
    rst $38
    add d
    ret nz

    rst $38
    nop
    nop
    or b
    add b
    nop
    ld h, b
    and d
    ld h, c
    rla
    jr nc, jr_000_2fb7

    inc c
    db $10
    jr jr_000_2fbc

    inc c
    dec d
    inc c
    dec d
    inc c
    ld bc, $150c
    inc c
    dec d
    inc c
    dec d
    inc c
    ld bc, $150c

jr_000_2fb7:
    inc c
    jr @+$0e

    jr jr_000_2fc8

jr_000_2fbc:
    ld bc, $1c0c
    inc c
    inc e
    inc c
    inc e
    inc c
    ld bc, $1c0c
    inc c

jr_000_2fc8:
    ld bc, $190c
    inc c
    dec de
    inc c
    dec d
    inc c
    rla
    inc c
    db $10
    inc c
    ld [de], a
    inc c
    dec bc
    inc c
    rla
    jr nc, jr_000_2fef

    inc c
    db $10
    jr jr_000_2ff4

    inc c
    dec d
    inc c
    dec d
    inc c
    ld bc, $150c
    inc c
    dec d
    inc c
    dec d
    inc c
    ld bc, $150c

jr_000_2fef:
    inc c
    jr @+$0e

    jr jr_000_3000

jr_000_2ff4:
    ld bc, $1c0c

jr_000_2ff7:
    inc c
    inc e
    inc c
    inc e
    inc c
    ld bc, $1c0c
    inc c

jr_000_3000:
    ld bc, $190c
    inc c
    dec de
    inc c
    dec d
    inc c
    rla
    inc c
    db $10
    inc c
    ld [de], a
    inc c
    dec bc
    inc c
    dec d
    inc c
    dec d
    inc c
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    add hl, de
    inc c
    jr nz, @+$0e

    add hl, de
    inc c
    inc e
    inc c
    ld e, $0c
    rra
    inc c
    jr nz, jr_000_3034

    ld bc, $000c
    inc c
    add d
    add hl, bc
    inc hl
    inc c
    ld bc, $820c
    or b

jr_000_3034:
    dec d
    inc c

Call_000_3036:
    dec d
    inc c
    add hl, de
    inc c
    dec d
    inc c

Call_000_303c:
    inc e
    inc c
    add hl, de
    inc c
    jr nz, jr_000_304e

    add hl, de
    inc c
    ld bc, $190c
    inc c
    inc e
    inc c
    add hl, de
    inc c
    jr nz, jr_000_305a

jr_000_304e:
    ld e, $0c
    inc e
    inc c
    add hl, de
    inc c
    dec d
    inc c
    dec d
    inc c
    add hl, de
    inc c

jr_000_305a:
    dec d
    inc c
    inc e
    inc c
    add hl, de
    inc c
    jr nz, @+$0e

    add hl, de

jr_000_3063:
    inc c
    inc e
    inc c
    ld e, $0c
    rra
    inc c
    jr nz, jr_000_3078

    ld bc, $000c
    inc c

jr_000_3070:
    add d
    pop af
    inc hl
    jr jr_000_2ff7

    or b
    dec d
    inc c

jr_000_3078:
    dec d
    inc c
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    add hl, de
    inc c
    jr nz, @+$0e

    add hl, de
    inc c
    ld bc, $170c
    inc c
    ld a, [de]
    inc c
    rla
    inc c
    ld hl, $170c
    jr jr_000_30aa

    inc c
    dec d
    inc c
    dec d
    jr jr_000_30ad

    inc c
    rla
    inc c
    dec d
    inc c
    inc d
    inc c
    inc d
    jr jr_000_30b7

    inc c
    rla
    inc h
    inc d
    inc h
    dec d
    inc c

jr_000_30aa:
    dec d
    jr jr_000_30c1

jr_000_30ad:
    inc c
    rla
    inc c
    dec d
    inc c
    inc d
    inc c
    inc d
    jr jr_000_30cb

jr_000_30b7:
    inc c
    rla
    inc h
    inc d
    inc h
    dec d
    inc c
    dec d
    jr jr_000_30d5

jr_000_30c1:
    inc c
    rla
    inc c
    dec d
    inc c
    inc d
    inc c
    inc d
    jr jr_000_30df

jr_000_30cb:
    inc c
    rla
    inc h
    inc d
    inc h
    ld a, [de]
    inc c
    add hl, de
    inc c
    rla

jr_000_30d5:
    inc c
    dec d
    inc c
    inc d
    jr jr_000_30ef

    inc c
    dec d
    inc c
    nop

jr_000_30df:
    jr jr_000_3063

    ld [hl], b
    ld h, b
    inc hl
    inc c
    dec h
    inc c
    dec e
    inc c
    ld e, $0c
    nop
    jr jr_000_3070

    ret nz

jr_000_30ef:
    rst $38
    add b
    nop
    jr nz, @-$7e

    sub e
    nop
    ld h, b
    and d
    inc e
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    rla
    inc c
    ld e, $0c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    ld hl, $210c
    inc c
    nop
    inc c
    ld hl, $000c
    inc c
    ld hl, $000c
    inc c
    ld hl, $1c0c
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    rla
    inc c
    inc e
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    rla
    inc c
    ld e, $0c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    nop
    inc c
    ld e, $0c
    ld hl, $210c
    inc c
    nop
    inc c
    ld hl, $000c
    inc c
    ld hl, $000c
    inc c
    ld hl, $1c0c
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    inc e
    inc c
    nop
    inc c
    rla
    inc c
    dec d
    inc c
    dec d
    inc c
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    dec d
    inc c
    jr nz, @+$0e

    add hl, de
    inc c
    jr z, jr_000_3196

    ld a, [hl+]
    inc c
    dec hl
    inc c
    inc l
    inc c
    nop
    jr nc, jr_000_31a8

    inc c
    dec d
    inc c

jr_000_3196:
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    dec d
    inc c
    jr nz, jr_000_31ac

    add hl, de
    inc c
    inc e
    inc c
    jr z, jr_000_31b2

    add hl, de
    inc c

jr_000_31a8:
    dec h
    inc c
    ld a, [de]
    inc c

jr_000_31ac:
    ld h, $0c
    inc d
    inc c
    jr nz, jr_000_31be

jr_000_31b2:
    dec d
    inc c
    dec d
    inc c
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    dec d
    inc c

jr_000_31be:
    jr nz, @+$0e

    add hl, de
    inc c
    jr z, jr_000_31d0

    ld a, [hl+]
    inc c
    dec hl
    inc c
    inc l
    inc c
    nop
    jr nc, jr_000_31e2

    inc c
    dec d
    inc c

jr_000_31d0:
    add hl, de
    inc c
    dec d
    inc c
    inc e
    inc c
    dec d
    inc c
    jr nz, jr_000_31e6

    add hl, de
    inc c
    inc e
    inc c
    jr z, jr_000_31ec

    add hl, de
    inc c

jr_000_31e2:
    dec h
    inc c
    ld a, [de]
    inc c

jr_000_31e6:
    ld h, $0c
    inc e
    inc c
    jr z, jr_000_31f8

jr_000_31ec:
    ld a, [de]
    inc c
    ld a, [de]
    jr @+$1b

    inc c
    ld a, [de]
    jr @+$03

    jr jr_000_3213

    inc c

jr_000_31f8:
    inc e
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    inc c
    add hl, de
    inc c
    add hl, de
    inc c
    rla
    inc c
    rla
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    jr @+$1b

    inc c
    ld a, [de]
    jr @+$03

    jr jr_000_322d

    inc c
    inc e

jr_000_3213:
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    inc c
    add hl, de
    inc c
    add hl, de
    inc c
    rla
    inc c
    rla
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    jr jr_000_323e

    inc c
    ld a, [de]
    jr @+$03

    jr jr_000_3247

    inc c
    inc e

jr_000_322d:
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    inc c
    add hl, de
    inc c
    add hl, de
    inc c
    rla
    inc c
    rla
    inc c
    dec d
    inc c
    dec d
    inc c

jr_000_323e:
    nop
    inc c
    dec d
    inc c
    dec d
    inc c
    dec d
    inc c
    nop

jr_000_3247:
    inc c
    dec d
    inc c
    rla
    inc c
    inc hl
    inc c
    dec d
    inc c
    ld hl, $000c
    jr nc, @+$01

    nop
    nop
    pop af
    add b
    nop
    and d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    rst $38
    ld a, h
    ld [hl-], a
    add a
    inc sp
    ld h, a
    inc [hl]
    cpl
    dec [hl]
    ld [$e4c0], sp
    add b
    nop
    ld [hl], b
    and d
    ld h, c
    ld a, [de]
    rlca
    rla
    ld c, $15
    rlca
    inc e
    ld c, $1a
    ld c, $1e
    rlca
    ld e, $0e
    ld e, $07
    ld e, $0e
    nop
    ld c, $1f
    rlca
    ld e, $0e
    inc e
    rlca
    ld a, [de]
    ld c, $17
    ld c, $1c
    rlca
    inc e
    ld c, $1c
    rlca
    inc e
    ld c, $00
    ld c, $1e
    rlca
    inc e
    ld c, $1a
    rlca
    rla
    ld c, $1e
    rlca
    inc e
    ld c, $1a
    rlca
    rla
    ld c, $1f
    rlca
    ld e, $0e
    inc e
    rlca
    rla
    ld c, $1a
    rlca
    ld a, [de]
    rlca
    ld bc, $1a07
    rlca
    ld bc, $0007
    dec d
    inc e
    ld c, $1e
    rlca
    inc e
    rlca
    add hl, de
    rlca
    dec d
    rlca
    ld a, [de]
    rlca
    rla
    ld c, $15
    rlca
    inc e
    ld c, $1a
    ld c, $1e
    rlca
    ld e, $0e
    ld e, $07
    ld e, $0e
    nop
    ld c, $1f
    rlca
    ld e, $0e
    inc e
    rlca
    ld a, [de]
    ld c, $17
    ld c, $1c
    rlca
    inc e
    ld c, $1c
    rlca
    inc e
    ld c, $00
    ld c, $1e
    rlca
    inc e
    ld c, $1a
    rlca
    rla
    ld c, $1e
    rlca
    inc e
    ld c, $1a
    rlca
    rla
    ld c, $1f
    rlca
    ld e, $0e
    inc e
    rlca
    rla
    ld c, $1a
    rlca
    ld a, [de]
    rlca
    ld bc, $1a07
    rlca
    ld bc, $0007
    dec d
    inc e
    ld c, $1e
    rlca
    inc e
    rlca
    add hl, de
    rlca
    dec d
    rlca
    ld h, b
    nop
    inc e
    add d
    rst $20
    inc e
    ld d, h
    nop
    inc e
    ld e, $54
    ld h, c
    rra
    dec d
    rra
    rlca
    ld e, $07
    ld bc, $1e07
    ld c, $1c
    rlca
    ld bc, $1c07
    ld c, $1a
    rlca
    ld bc, $1a07
    ld c, $19
    ld c, $17
    ld c, $15
    ld c, $17
    ld c, $60
    add hl, de
    jr c, jr_000_335e

jr_000_335e:
    inc e
    inc e
    ld d, h
    nop
    inc e
    ld e, $54
    ld h, c
    rra
    dec d
    rra
    rlca
    ld e, $07
    ld bc, $1e07
    ld c, $1c
    rlca
    ld bc, $1c07
    ld c, $1a
    rlca
    ld bc, $1a07
    ld c, $82
    db $e4
    add hl, de
    ld c, $19
    ld c, $01
    rlca
    nop
    ld c, l
    rst $38
    nop
    nop
	db $d4, $80, $00
    ld [hl], b
    and d
    ld h, c
    ld [de], a
    dec d
    ld [de], a
    rlca
    ld bc, $0007
    dec d
    dec d
    dec d
    dec d
    rlca
    dec d
    ld c, $00
    ld c, $17
    dec d
    rla
    rlca
    ld bc, $0007
    dec d
    dec d
    dec d
    dec d
    rlca
    dec d
    ld c, $00
    ld c, $15
    inc e
    dec d
    inc e
    dec c
    inc e
    db $10
    inc e
    inc de
    ld c, $15
    rlca
    dec d
    rlca
    ld bc, $1507
    rlca
    ld bc, $0007
    ld c, $15
    dec d
    add hl, de
    rlca
    rla
    rlca
    inc d
    rlca
    db $10
    rlca
    ld h, b
    ld [de], a
    dec d
    ld [de], a
    rlca
    ld bc, $0007
    dec d
    dec d
    dec d
    dec d
    rlca
    dec d
    ld c, $00
    ld c, $17
    dec d
    rla
    rlca
    ld bc, $0007
    dec d
    dec d
    dec d
    dec d

jr_000_33eb:
    rlca
    dec d
    ld c, $00
    ld c, $15
    inc e
    dec d
    inc e
    dec c
    inc e
    db $10
    inc e
    inc de
    ld c, $15
    rlca
    dec d
    rlca
    ld bc, $1507
    rlca
    ld bc, $0007
    ld c, $15
    dec d
    add hl, de
    rlca
    rla
    rlca
    inc d
    rlca
    db $10
    rlca
    ld h, b
    add d
    rst $10
    nop
    ld c, $17
    ld h, d
    nop
    ld c, $19
    ld h, d
    ld h, c
    jr jr_000_3433

    jr jr_000_3427

    rla
    rlca
    ld bc, $1707
    ld c, $15

jr_000_3427:
    rlca
    ld bc, $1507
    ld c, $13
    rlca
    ld bc, $1307
    ld c, $15

Call_000_3433:
jr_000_3433:
    ld c, $13
    ld c, $12
    ld c, $13
    ld c, $60
    dec d
    jr c, jr_000_343e

jr_000_343e:
    ld c, $17
    ld h, d
    nop
    ld c, $19
    ld h, d
    ld h, c
    jr jr_000_345d

    jr jr_000_3451

    rla
    rlca
    ld bc, $1707
    ld c, $15

jr_000_3451:
    rlca
    ld bc, $1507
    ld c, $13
    rlca
    ld bc, $1307
    ld c, $82

jr_000_345d:
    call nc, Call_000_0e12
    ld [de], a
    ld c, $01
    rlca
    nop
    ld c, l
    rst $38
    add b
    nop
    jr nz, jr_000_33eb

    sub c
    nop
    ld [hl], b
    and d
    ld h, c
    ld a, [de]
    inc e
    rla
    rlca
    add hl, de
    rlca
    ld a, [de]
    ld c, $00
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $1c
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $00
    inc e
    rla
    rlca
    add hl, de
    rlca
    ld e, $0e
    dec d
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $15
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $00
    ld c, $1a
    rlca
    ld a, [de]
    rlca
    nop
    rlca
    ld a, [de]
    rlca
    nop
    ld c, $1a
    inc e
    rla
    rlca
    add hl, de
    rlca
    dec d
    ld c, $1a
    inc e
    rla
    rlca
    add hl, de
    rlca
    ld a, [de]
    ld c, $00
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $1c
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $00
    inc e
    rla
    rlca
    add hl, de
    rlca
    ld e, $0e
    dec d
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $15
    inc e
    rla
    rlca
    add hl, de
    rlca
    inc e
    ld c, $00
    ld c, $1a
    rlca
    ld a, [de]
    rlca
    nop
    rlca
    ld a, [de]
    rlca
    nop
    ld c, $1a
    inc e
    rla
    rlca
    add hl, de
    rlca
    dec d
    ld c, $13
    jr c, jr_000_3512

    inc e
    ld a, [de]
    inc e
    dec d
    jr c, jr_000_351a

    inc e
    inc e
    inc e
    ld a, [de]
    inc e
    add hl, de
    inc e
    rla
    inc e
    dec d
    inc e
    dec d
    inc e
    inc de
    inc e
    ld [de], a
    inc e

jr_000_3512:
    dec d
    inc e
    inc de
    jr c, jr_000_352e

    inc e
    ld a, [de]
    inc e

jr_000_351a:
    dec d
    jr c, jr_000_3536

    inc e
    inc e
    inc e
    ld a, [de]
    inc e
    add hl, de
    inc e
    rla
    inc e
    db $10
    inc e
    dec d
    ld c, $15
    ld c, $00
    ld d, h

jr_000_352e:
    rst $38
    nop
    nop
    pop af
    add b
    inc b
    and d
    dec b

jr_000_3536:
    dec b
    ld b, $07
    dec b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    ld [$0908], sp
    dec bc
    rst $38
    ld c, [hl]
    dec [hl]
    ld a, a
    ld [hl], $ae
    scf
    ret c

    jr c, jr_000_3557

    nop
    or b
    add b
    ld [hl], c
    sbc $00
    inc c
    ld h, c

jr_000_3557:
    ld h, $08
    ld h, d
    ld h, $10
    ld h, $10
    ld h, $10
    ld h, c
    ld h, $08
    ld h, $10
    ld bc, $2108
    ld [$2362], sp
    db $10
    ld h, c
    dec h
    db $10
    and d
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_000_3594

    ld hl, $0108
    ld [$1562], sp
    db $10
    ld h, c

jr_000_3594:
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc h
    ld [$0825], sp
    ld bc, $6208
    dec d
    db $10
    ld h, c
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc e
    db $10
    ld e, $10
    rra
    db $10
    jr nz, jr_000_35ec

    ld hl, $0108
    ld [$1562], sp
    db $10
    ld h, c

jr_000_35ec:
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    inc h
    ld [$0825], sp
    ld bc, $0008
    db $10
    dec h
    ld [$2162], sp
    db $10
    ld h, c
    ld e, $10
    rra
    ld [$1f62], sp
    db $10
    rra
    db $10
    ld h, c
    ld e, $08
    rra
    db $10
    ld hl, $6208
    inc hl
    db $10
    ld h, c

Call_000_3630:
    dec h
    ld [$2362], sp
    db $10
    ld h, c
    ld hl, $1f10
    ld [$1f62], sp
    db $10
    rra
    db $10
    ld h, c
    ld e, $08
    rra
    db $10
    ld hl, $6208
    dec h
    db $10
    ld h, c
    jr z, jr_000_3674

    rra
    ld [$1f62], sp
    db $10
    rra
    db $10
    ld h, c
    ld e, $08
    rra
    db $10
    ld hl, $6208
    inc hl
    db $10
    ld h, c
    dec h
    ld [$2362], sp
    db $10
    ld h, c
    ld hl, $1f10
    ld [$2362], sp
    db $10
    ld h, $10
    ld h, c
    dec h
    ld [$1023], sp
    dec h
    db $10

jr_000_3674:
    ld bc, $2108
    ld [$2362], sp
    db $10
    ld h, c
    dec h
    db $10
    rst $38
    ld [$b000], sp
    add b
    nop
    inc c
    ld h, c
    ld hl, $6208
    ld hl, $2110
    db $10
    ld hl, $6110
    ld hl, $2108
    db $10
    ld bc, $2108
    ld [$2362], sp
    db $10
    ld h, c
    dec h
    db $10
    and d
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    rra
    db $10
    ld hl, $2310
    db $10
    inc h
    ld [$0825], sp
    ld bc, $6208
    dec d
    db $10
    ld h, c
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    jr nz, jr_000_36ef

    ld hl, $0108
    ld [$1562], sp
    db $10
    ld h, c

jr_000_36ef:
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    rra
    db $10
    ld hl, $2310
    db $10
    inc h
    ld [$0825], sp
    ld bc, $6208
    dec d
    db $10
    ld h, c
    dec d
    ld [$1562], sp
    db $10
    ld h, c
    dec d
    db $10
    ld h, $10
    ld bc, $2108
    db $10
    ld bc, $1e08
    db $10
    inc hl
    db $10
    ld bc, $2108

Call_000_3732:
jr_000_3732:
    db $10
    ld bc, $1e08
    db $10
    ld h, $10
    ld h, $10
    ld h, $10
    daa
    ld [$0828], sp
    ld bc, $0008
    db $10
    dec h
    ld [$2162], sp
    db $10
    ld h, c
    ld e, $10
    inc hl
    ld [$2362], sp
    db $10
    inc hl
    db $10
    ld h, c
    ld hl, $2308
    db $10
    dec h
    ld [$2662], sp
    db $10
    ld h, c
    jr z, @+$0a

    ld h, d
    ld h, $10
    ld h, c
    dec h
    db $10
    inc hl
    ld [$2362], sp
    db $10
    inc hl
    db $10
    ld h, c
    ld hl, $2308
    db $10
    inc e
    ld [$2162], sp
    db $10
    ld h, c
    dec h
    jr z, @+$25

    ld [$2362], sp
    db $10
    inc hl
    db $10
    ld h, c
    ld hl, $2308
    db $10
    dec h
    ld [$2662], sp
    db $10
    ld h, c
    jr z, @+$0a

    ld h, d
    ld h, $10
    ld h, c
    dec h
    db $10
    inc e
    ld [$1f62], sp
    db $10
    inc hl
    db $10
    ld h, c
    ld hl, $1f08
    db $10
    ld hl, $0110
    ld [$0821], sp
    ld h, d
    inc hl
    db $10
    ld h, c
    dec h
    db $10
    rst $38
    add b
    nop
    jr nz, jr_000_3732

    sub c
    nop
    inc c
    ld h, c
    ld a, [de]
    ld [$1a62], sp
    db $10
    ld a, [de]
    db $10
    ld a, [de]
    db $10
    ld h, c
    ld a, [de]
    ld [$101a], sp
    ld bc, $0008
    ld [$1021], sp
    ld bc, $0008
    ld [$1aa2], sp
    db $10
    ld bc, $1e08
    db $10
    ld bc, $2608
    db $10
    inc hl
    db $10
    ld bc, $1e08
    db $10
    ld bc, $1a08
    db $10
    inc e
    db $10
    inc hl
    db $10
    rra
    db $10
    ld h, $08
    ld hl, $0108
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    db $10
    ld a, [de]
    db $10
    ld bc, $1e08
    db $10
    ld bc, $2608
    db $10
    inc hl
    db $10
    ld bc, $1e08
    db $10
    ld bc, $1a08
    db $10
    inc e
    db $10
    inc hl
    db $10
    rra
    db $10
    ld h, $08
    ld hl, $0108
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    db $10
    ld a, [de]
    db $10
    ld bc, $1e08
    db $10
    ld bc, $2608
    db $10
    inc hl
    db $10
    ld bc, $1e08
    db $10
    ld bc, $1a08
    db $10
    inc e
    db $10
    inc hl
    db $10
    rra
    db $10
    ld h, $08
    ld hl, $0108
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    db $10
    ld a, [de]
    db $10
    ld bc, $1e08
    db $10
    ld bc, $2608
    db $10
    inc hl
    db $10
    ld bc, $1e08
    db $10
    ld bc, $1a08
    db $10
    inc e
    db $10
    inc hl
    db $10
    rra
    db $10
    ld h, $08
    ld hl, $0108
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    ld [$1962], sp
    db $10
    ld h, c
    add hl, de
    db $10
    rra
    db $10
    ld bc, $1a08
    db $10
    ld bc, $1f08
    db $10
    ld hl, $0110
    ld [$1025], sp
    ld bc, $1e08
    db $10
    rra
    db $10
    ld bc, $1a08
    db $10
    ld bc, $1f08
    db $10
    ld hl, $0110
    ld [$0825], sp
    ld h, d
    inc hl
    db $10
    ld h, c
    ld hl, $1f10
    db $10
    ld bc, $1a08
    db $10
    ld bc, $1f08
    db $10
    ld hl, $0110
    ld [$1025], sp
    ld bc, $1e08
    db $10
    rra
    ld [$1f62], sp
    db $10
    rra
    db $10
    ld h, c
    ld e, $08
    ld h, d
    rra
    db $10
    ld h, c
    ld hl, $0110
    ld [$0800], sp
    dec d
    db $10
    ld bc, $0008
    ld [$00ff], sp
    nop
    pop af
    add b
    inc c
    dec c
    and d
    ld c, $0e
    ld c, $0f

jr_000_38e3:
    ld c, $0e
    ld c, $0f
    db $10
    db $10
    db $10
    ld de, $f4ff
    jr c, jr_000_38e3

    jr c, @-$69

    add hl, sp
    rst $18
    add hl, sp
    ld [$b7c0], sp
    add b
    ld [hl], c
    db $ed
    nop
    db $10
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    and d
    ld h, d
    dec h
    jr nz, jr_000_3969

    inc hl
    db $10
    ld h, d
    jr nz, jr_000_392d

    ld h, b
    inc e
    ld b, b
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    ld h, d
    dec h

jr_000_3919:
    jr nz, jr_000_397c

    inc hl
    db $10
    ld h, d
    jr nz, jr_000_3940

    ld h, b
    inc e
    ld b, b
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    ld h, d
    ld h, $20

jr_000_392d:
    ld h, c
    inc hl
    db $10
    ld h, d
    jr nz, @+$22

    ld h, b
    ld a, [de]
    ld b, b
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    ld h, d
    ld h, $20

jr_000_3940:
    ld h, c
    inc hl
    db $10
    ld h, d
    jr nz, @+$22

    ld h, b
    ld a, [de]
    ld b, b
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    ld h, d
    dec h
    jr nz, jr_000_39b5

    inc hl
    db $10
    ld h, d
    jr nz, jr_000_3979

    ld h, b
    inc e
    ld b, b
    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    ld h, d
    dec h
    jr nz, jr_000_39c8

    inc hl
    db $10

jr_000_3969:
    ld h, d
    jr nz, @+$22

    ld h, b
    inc e
    ld b, b
    ld h, d
    ld a, [de]
    jr nz, jr_000_39d4

    ld a, [de]
    db $10
    ld h, d
    ld a, [de]
    jr nz, @+$63

jr_000_3979:
    ld hl, $6010

jr_000_397c:
    jr nz, @+$62

    ld h, d
    ld a, [de]
    jr nz, jr_000_39e3

    ld a, [de]
    db $10
    ld h, d
    ld a, [de]
    jr nz, jr_000_39e9

    ld hl, $6010
    jr nz, jr_000_39ed

    ld h, c
    inc hl
    db $10
    ld [hl+], a
    db $10
    inc hl
    db $10
    rst $38
    add b
    nop
    jr nz, jr_000_3919

    sub c
    ld h, c
    nop
    ld b, b
    and d
    inc e
    ld b, b
    ld bc, $2310
    ld b, b
    rla
    jr nc, jr_000_39c3

    ld b, b
    ld bc, $2310
    ld b, b
    rla
    jr nc, jr_000_39cd

    ld b, b
    ld bc, $1710
    ld b, b
    rla

jr_000_39b5:
    jr nc, jr_000_39d5

    ld b, b
    ld bc, $1710
    ld b, b
    rla
    jr nc, jr_000_39db

    ld b, b
    ld bc, $2310

jr_000_39c3:
    ld b, b
    rla
    jr nc, jr_000_39e3

    ld b, b

jr_000_39c8:
    ld bc, $2310
    ld b, b
    rla

jr_000_39cd:
    jr nc, jr_000_39ed

    ld b, b
    ld bc, $1710
    ld b, b

jr_000_39d4:
    rla

jr_000_39d5:
    jr nc, jr_000_39f5

    ld b, b
    ld bc, $1710

jr_000_39db:
    ld b, b
    rla
    jr nc, @+$01

    nop
    nop
    pop af
    add b

jr_000_39e3:
    ld [de], a
    and d
    inc de
    inc de
    inc de
    inc de

jr_000_39e9:
    inc de
    inc de
    inc de
    inc de

jr_000_39ed:
    rst $38
    or $39
    rla
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, e

jr_000_39f5:
    ld a, [hl-]
    ld [$b040], sp
    add b
    ld h, c
    ld h, $18
    inc hl
    inc c
    ld hl, $1e0c
    inc c
    inc hl
    inc c
    ld hl, $1e0c
    inc c
    inc e
    inc c
    ld a, [de]
    inc c
    rla
    inc c
    ld bc, $820c
    or a
    ld h, b
    ld a, [de]
    ld [hl], h
    ldh a, [rP1]
    nop
    and b
    add b
    ld h, c
    dec d
    inc c
    rla
    inc c
    jr @+$0e

    dec d
    inc c
    dec d
    inc c
    rla
    inc c
    dec d
    inc c
    ld [de], a
    inc c
    ld de, $100c
    inc c
    ld c, $0c
    ld bc, $820c
    or a
    ld h, b
    dec d
    ld [hl], h
    ldh a, [$80]
    nop
    jr nz, @-$7e

    sub c
    ld h, c
    dec e
    jr jr_000_3a5f

    jr jr_000_3a5f

    jr jr_000_3a5e

    jr jr_000_3a5f

    jr jr_000_3a60

    jr jr_000_3a67

    jr jr_000_3a50

    ld c, b

jr_000_3a50:
    nop
    inc d
    ldh a, [rP1]
    nop
    pop af
    add b
    rla
    inc c
    ldh a, [rP1]
    nop
    ld h, d
    ld a, [hl-]

jr_000_3a5e:
    nop

jr_000_3a5f:
    nop

jr_000_3a60:
    nop
    nop
    ld [$b242], sp
    add b
    ld h, b

jr_000_3a67:
    ld h, $05
    dec l
    dec b
    nop
    ld bc, $76f0
    ld a, [hl-]
    db $76
    ld a, [hl-]
    xor l
    ld a, [hl-]
    push hl
    ld a, [hl-]
    ld [$b040], sp
    add b
    ld [hl], c
    sbc $61
    ld h, $10
    ld bc, $2110
    db $10
    inc hl
    db $10
    ld bc, $2110
    db $10
    ld h, $10
    ld bc, $2110
    db $10
    inc hl
    db $10
    ld bc, $2110
    db $10
    ld h, $10
    ld bc, $2310
    db $10
    ld hl, $0110
    db $10
    rra
    db $10
    ld e, $10
    ld bc, $1f10
    db $10
    add d
    call nz, Call_000_2160
    add b
    ldh a, [$80]
    nop
    jr nz, @-$7e

    sub c
    ld h, c
    ld a, [de]
    db $10
    ld bc, $0010
    db $10
    ld hl, $0110
    stop
    db $10
    ld a, [de]
    db $10
    ld bc, $0010
    db $10
    ld hl, $0110
    stop
    db $10
    ld a, [de]
    db $10
    ld bc, $0010
    db $10
    ld hl, $0110
    stop
    db $10
    ld e, $10
    ld bc, $1f10
    db $10
    ld hl, $0110
    db $10
    ld h, b
    nop
    ld h, b
    ldh a, [rP1]
    nop
    pop af
    add b
    jr jr_000_3b04

    ld [de], a
    ldh a, [$f5]
    ld a, [hl-]
    push af
    ld a, [hl-]
    ld b, $3b
    ld d, $3b
    ld [$b040], sp
    add b
    ld [hl], c
    sbc $61
    dec h
    db $10
    ld h, b
    add d
    or h
    ld h, $30
    nop

jr_000_3b04:
    db $10
    ldh a, [$80]
    nop
    jr nz, @-$7e

    sub c
    ld h, c
    ld hl, $6010
    ld a, [de]
    jr nz, @+$03

    stop
    db $10
    ldh a, [rP1]
    nop
    pop af
    add b
    ld a, [de]
    ldh a, [rNR50]
    dec sp
    inc h
    dec sp
    scf
    dec sp
    ld c, e
    dec sp
    ld [$b040], sp
    add b
    ld [hl], c
    sbc $61
    inc hl
    db $10
    inc hl
    db $10
    inc hl
    db $10
    add d
    push bc
    ld h, b
    rra
    sub [hl]
    ldh a, [$80]
    nop
    jr nz, @-$7e

    sub c
    ld h, c
    ld e, $10
    ld e, $10
    ld e, $10
    ld h, b
    ld a, [de]
    jr nz, @+$03

    jr nz, jr_000_3b49

jr_000_3b49:
    ld d, [hl]
    ldh a, [rP1]
    nop
    pop af
    add b
    dec de
    ldh a, [rP1]
    nop
    ld e, c
    dec sp
    nop
    nop
    nop
    nop
    ld [$f080], sp
    add b
    ld h, c
    ld de, $f018
    sbc c
    dec sp
    xor l
    dec sp
    cp a
    dec sp
    pop de
    dec sp
    db $e3
    dec sp
    or $3b
    inc c
    inc a
    jr nz, jr_000_3bad

    add hl, sp
    inc a
    ld c, l
    inc a
    ld e, a
    inc a
    ld [hl], h
    inc a
    add a
    inc a
    adc d
    inc a
    and c
    inc a
    jp $e53c


    inc a
    rlca
    dec a
    inc l
    dec a
    cpl
    dec a
    scf
    dec a
    ld b, h
    dec a
    ld e, [hl]
    dec a
    ld l, c
    dec a
    add [hl]
    dec a
    sub a
    dec a
    and [hl]
    dec a
    xor h
    dec a
    ld h, e
    ld bc, $020c
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    ld b, $02
    ld b, $02
    inc c
    rst $38

jr_000_3bad:
    ld h, e
    ld bc, $030c
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    ld bc, $030c
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    rst $38
    ld h, e
    ld bc, $030c
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    ld h, b
    inc b
    jr jr_000_3bce

    inc c
    ld h, e

jr_000_3bce:
    inc bc
    inc c
    rst $38
    ld h, e
    ld bc, $030c
    inc c
    ld [bc], a
    inc c
    inc bc
    inc c
    ld bc, $020c
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    rst $38
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    ld c, $01
    ld c, $01
    rlca
    ld bc, $6007
    ld [bc], a
    inc e
    rst $38
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    ld c, $01
    ld c, $03
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    ld c, $ff
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    ld c, $01
    ld c, $03
    ld c, $02
    ld c, $03
    rlca
    inc bc
    rlca
    rst $38
    ld h, e
    ld bc, $020e
    rlca
    ld [bc], a
    ld c, $02
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $030e
    rlca
    ld bc, $0207
    ld c, $60
    dec b
    ld c, $ff
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    rlca
    ld bc, $0107
    ld c, $03
    ld c, $02
    ld c, $03
    ld c, $ff
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    ld c, $01
    ld c, $03
    ld c, $02
    ld c, $03
    ld c, $ff
    ld h, e
    ld bc, $030e
    ld c, $02
    ld c, $03
    ld c, $01
    ld c, $03
    rlca
    inc bc
    rlca
    ld [bc], a
    ld c, $61
    dec b
    ld c, $ff
    ld h, e
    ld [bc], a
    ld c, $02
    ld c, $00
    ld c, $02
    ld c, $02
    ld c, $01
    rlca
    ld bc, $6107
    ld [bc], a
    inc e
    rst $38
    nop
    inc c
    rst $38
    ld h, e
    ld [bc], a
    ld [$1002], sp
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    ld [$1802], sp
    ld bc, $0208
    ld [$0806], sp
    ld h, b
    ld [bc], a
    db $10
    rst $38
    ld h, e
    ld bc, $0608
    ld [$0806], sp
    inc bc
    ld [$0806], sp
    ld b, $08
    ld [bc], a
    ld [$0806], sp
    ld bc, $0608
    ld [$0806], sp
    inc bc
    ld [$0806], sp
    ld b, $08
    ld [bc], a
    ld [$0806], sp
    rst $38
    ld h, e
    ld bc, $0608
    ld [$0806], sp
    inc bc
    ld [$0806], sp
    ld b, $08
    ld [bc], a
    ld [$0806], sp
    ld [bc], a
    ld [$0801], sp
    ld b, $08
    ld bc, $0108
    ld [$0806], sp
    ld [bc], a
    ld [$0806], sp
    rst $38
    ld h, e
    ld bc, $0608
    ld [$0803], sp
    inc bc
    ld [$0806], sp
    ld b, $08
    ld [bc], a
    ld [$0806], sp
    ld bc, $0608
    ld [$0803], sp
    inc bc
    ld [$0806], sp
    ld b, $08
    ld [bc], a
    ld [$0806], sp
    rst $38
    ld h, e
    ld bc, $6008
    dec b
    ld [$0663], sp
    ld [$0560], sp
    ld [$0663], sp
    ld [$0801], sp
    ld [bc], a
    ld [$0806], sp
    ld [bc], a
    ld [$0806], sp
    ld b, $08
    ld bc, $0208
    ld [$0806], sp
    ld h, b
    ld [bc], a
    db $10
    rst $38
    nop
    ld b, b
    rst $38
    ld h, e
    ld bc, $0650
    db $10
    inc bc
    ld h, b
    rst $38
    ld h, e

Call_000_3d38:
    ld bc, $020c
    inc c
    ld [bc], a
    inc c
    ld h, b
    dec b
    inc c
    nop
    ld b, $ff
    ld h, e
    ld bc, $0208
    ld [$0802], sp
    ld bc, $0208
    ld [$0802], sp
    ld bc, $0208
    ld [$0802], sp
    ld bc, $0208
    ld [$0802], sp
    rst $38
    ld h, e
    ld [bc], a
    inc c
    ld bc, $010c
    inc c
    ld h, b
    dec b
    ld h, h
    rst $38
    ld h, e
    ld bc, $020c
    inc c
    ld bc, $020c
    inc c
    ld bc, $020c
    inc c
    ld bc, $020c
    inc c
    ld bc, $020c
    inc c
    ld bc, $020c
    inc c
    ld h, b
    dec b
    ld l, b
    rst $38
    ld h, b
    dec b
    jr nc, jr_000_3ded

    ld [bc], a
    jr nz, jr_000_3d90

    db $10
    ld h, b
    dec b

jr_000_3d90:
    jr nc, jr_000_3df5

    ld [bc], a
    jr nz, jr_000_3d98

    db $10
    rst $38
    ld h, b

jr_000_3d98:
    dec b
    jr nc, @+$65

    ld [bc], a
    jr nz, @+$05

    db $10
    ld [bc], a
    jr nz, jr_000_3da4

    db $10
    ld [bc], a

jr_000_3da4:
    ld b, b
    rst $38
    ld h, e
    ld [bc], a
    db $10
    ld [bc], a
    ld b, b
    rst $38
    ld h, e
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld h, c
    dec b
    sub [hl]
    rst $38
    cp a
    dec a
    reti


    dec a
    di
    dec a
    ld [de], a
    ld a, $08
    ld b, b
    or b
    add b
    ld h, c
    inc e
    inc c
    ld e, $0c
    jr nz, jr_000_3dd6

    inc e
    inc c
    ld hl, $2018
    jr jr_000_3def

    jr jr_000_3dee

    inc c
    inc e
    inc c

jr_000_3dd6:
    ld bc, $f006
    nop
    nop
    and b
    add b
    ld h, c
    add hl, de
    inc c
    dec de
    inc c
    inc e
    inc c
    add hl, de
    inc c
    ld a, [de]
    jr @+$1e

    jr jr_000_3e06

    jr jr_000_3e04

jr_000_3ded:
    inc c

jr_000_3dee:
    add hl, de

jr_000_3def:
    inc c
    ld bc, $f006
    add b
    nop

jr_000_3df5:
    jr nz, @-$7e

jr_000_3df7:
    sub c
    ld h, c
    inc e
    inc c
    inc e
    inc c
    ld hl, $200c
    inc c
    ld hl, $230c

jr_000_3e04:
    jr jr_000_3e27

jr_000_3e06:
    inc c
    jr nz, jr_000_3e15

    inc e
    inc c
    ld e, $0c
    inc e
    inc c
    ld bc, $f006
    nop
    nop
    pop af

jr_000_3e15:
    add b
    ld bc, $f014
    ld hl, $4a3e
    ld a, $73
    ld a, $8d
    ld a, $08
    ld b, b
    or b
    add b
    ld h, c
    inc e

jr_000_3e27:
    ld [$081b], sp
    inc e
    ld [$081e], sp
    dec e
    ld [$081e], sp
    ld hl, $2008
    ld [$0821], sp
    inc hl
    ld [$0822], sp
    inc hl
    ld [$0c1c], sp
    ld bc, $0006
    ld [de], a
    ld h, b
    add d
    or a
    jr nz, jr_000_3ead

    ldh a, [rP1]
    nop
    and b
    add b
    ld h, c
    rla
    ld [$0816], sp
    rla
    ld [$0819], sp
    jr jr_000_3e61

    add hl, de
    ld [$081c], sp
    dec de
    ld [$081c], sp

jr_000_3e61:
    ld e, $08
    dec e
    ld [$081e], sp
    rla
    inc c
    ld bc, $0006
    ld [de], a
    ld h, b
    add d
    and a
    inc e
    ld h, h
    ldh a, [$80]
    nop
    jr nz, jr_000_3df7

    sub c
    ld h, c
    ld e, $18
    jr nz, jr_000_3e95

    ld hl, $2318
    jr jr_000_3e9e

    inc c
    nop
    jr jr_000_3ee6

    dec de
    jr @+$03

    jr c, jr_000_3e8b

jr_000_3e8b:
    inc d
    ldh a, [rP1]
    nop
    pop af
    add b
    dec d
    ld d, $f0
    nop

jr_000_3e95:
    add [hl]
    ld [bc], a
    ld e, a
    ld c, e
    ld c, c
    ld b, e
    ld d, h
    ld b, c
    ld d, d

jr_000_3e9e:
    ld b, b
    ld d, e
    inc a
    ld c, h
    add hl, sp
    ld c, d
    dec a
    dec c
    inc hl
    ld b, [hl]
    inc a
    ld c, b
    dec [hl]
    ld c, [hl]
    ld [hl-], a

jr_000_3ead:
    ld d, c
    dec hl
    ld d, d
    jr nc, @+$43

    ld l, $54
    dec l
    ld d, h
    add hl, hl
    ld d, a
    dec h
    ld e, h
    inc hl
    inc e
    ld d, $2a
    inc de
    jr jr_000_3ee5

    ld de, $2f1b
    ld [hl+], a
    inc de
    inc e
    ld [hl-], a
    add hl, de
    ld a, [de]
    add hl, de
    inc sp
    add hl, de
    inc e
    add hl, de
    ld [hl-], a
    ld a, [de]
    inc e
    add hl, de
    ld sp, $191c
    inc c
    jr nc, jr_000_3ef6

    add hl, de
    inc e
    ld sp, $191d
    dec e
    ld [hl-], a
    dec e
    ld a, [de]
    dec e
    inc sp
    dec de

jr_000_3ee5:
    dec e

jr_000_3ee6:
    dec e
    ld sp, $1e1c
    dec de
    jr jr_000_3f07

    ld [hl], $1b
    dec e
    add hl, de
    inc a
    jr jr_000_3f11

    add hl, de
    dec sp

jr_000_3ef6:
    dec e
    ld a, [de]
    add hl, de
    inc a
    dec e
    dec de
    rla
    inc a
    ld [hl+], a
    jr jr_000_3f1f

    ld h, e
    ld d, l
    ld e, d
    ld b, a
    rst $38
    rst $38

jr_000_3f07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_000_3f11:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    inc l

jr_000_3f1f:
    sbc a
    dec c
    ld e, a
    jr nz, jr_000_3f50

    ld l, $27
    jr z, jr_000_3f3b

    inc de
    inc h
    ld [hl+], a
    dec d
    jr @+$27

    ld e, $18
    dec d
    add hl, hl
    ld a, [de]
    add hl, de
    ld d, $2c
    ld a, [de]
    rla
    dec d
    cpl
    inc b

jr_000_3f3b:
    dec de
    ld a, [de]
    ld [de], a
    rla
    ld sp, $111a
    jr jr_000_3f75

    add hl, de
    ld de, $3019
    ld a, [de]
    ld de, $3118
    rla
    ld [de], a
    jr jr_000_3f82

jr_000_3f50:
    rla
    ld [de], a
    ld d, $34
    rra
    dec [hl]
    inc de
    dec d
    inc de
    dec [hl]
    ld de, $1317
    dec [hl]
    rrca
    jr jr_000_3f72

    dec [hl]
    inc c
    dec de
    db $10
    ld [hl], $0d
    add hl, de
    db $10
    ld [hl], $0c
    add hl, de
    add hl, bc
    dec c
    db $10
    inc [hl]
    inc c
    add hl, de

jr_000_3f72:
    ld de, $0d32

jr_000_3f75:
    ld a, [de]
    ld de, $0e30
    rla
    inc de
    jr nc, @+$10

    rla
    ld [de], a
    cpl
    rrca
    inc de

jr_000_3f82:
    dec d
    ld [de], a
    ld a, [bc]
    inc d
    ld c, $13
    inc d
    ld de, $140b
    ld c, $10
    rlca
    inc de
    dec c
    dec d
    ld de, $0b13
    inc d
    inc c
    dec d
    ld de, $0914
    inc d
    inc c
    dec d
    db $10
    dec d
    add hl, bc
    inc d
    inc c
    dec d
    db $10
    rla
    rlca
    inc de
    dec c
    dec d
    ld c, $31
    inc c
    rla
    dec c
    jr nc, jr_000_3fbe

    rla
    inc c
    ld b, $04
    cpl
    ld c, $0e
    dec d
    ld l, $0e
    rrca
    inc d
    dec d

jr_000_3fbe:
    ld a, [bc]
    ld c, $0f
    rrca
    dec d
    inc d
    ld a, [bc]
    ld c, $0d
    ld de, $2b14
    dec c
    ld de, $2c12
    dec c
    ld [de], a
    rrca
    dec l
    dec c
    ld de, $2e0f
    ld c, $15
    ld c, $10
    db $10
    dec hl
    dec c
    ld de, $2b0e
    dec c
    ld de, $2b0e
    inc c
    ld [de], a
    ld c, $2a
    inc c
    inc de
    inc c
    ld a, [hl+]
    inc c
    ld [de], a
    dec c
    ld a, [hl+]
    inc c
    ld de, $280e
    dec c
    db $10
    rrca
    dec h
    ld c, $11
    ld c, $27
    dec c
    ld de, $280e
