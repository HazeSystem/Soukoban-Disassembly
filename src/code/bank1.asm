; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    dec c
    db $10
    rrca
    ld h, $0d
    db $10
    rrca
    dec h
    inc c
    ld [de], a
    rrca
    dec h
    inc c
    ld de, $250f
    inc c
    ld de, $270e
    dec bc
    ld de, $250f
    dec bc
    ld [de], a
    ld c, $0a
    rlca
    ld [hl+], a
    inc c
    ld [de], a
    rrca
    ld [hl+], a
    ld c, $10
    ld de, $0e21
    db $10
    db $10
    ld hl, $100e
    ld de, $101f
    rrca
    ld de, $0e21
    db $10
    db $10
    ld hl, $100e
    ld de, $0e1f
    ld de, $1b10
    ld a, [bc]
    inc de
    rrca
    rra
    dec c
    inc de
    db $10
    ld e, $0d
    inc de
    db $10
    ld e, $0e
    ld [de], a
    ld de, $0e1d
    ld [de], a
    ld de, $0d1d
    inc de
    db $10
    dec e
    ld c, $13
    db $10
    dec e
    dec c
    inc d
    db $10
    dec e
    ld c, $14
    rrca
    dec e
    ld c, $1e
    db $10
    inc e
    ld c, $14
    db $10
    dec de
    rrca
    inc de
    ld de, $0f1b
    inc de
    ld de, $0f1b
    inc de
    ld de, $101b
    ld [de], a
    ld de, $0f1b
    inc de
    ld de, $0f1c
    inc de
    ld de, $0e1c
    inc d
    db $10
    rla
    ld c, $14
    db $10
    ld e, $0d
    inc d
    db $10
    ld e, $0d
    inc d
    db $10
    rra
    dec c
    inc de
    db $10
    ld hl, $140c
    db $10
    ld hl, $140b
    db $10
    ld [hl+], a
    dec bc
    inc d
    rrca
    ld [hl+], a
    inc c
    inc de
    ld de, $0c22
    inc de
    ld de, $0a38
    ld [de], a
    ld de, $0b25
    inc de
    ld de, $0b25
    ld c, c
    dec bc
    ld d, $0d
    ld h, $0c
    dec d
    ld c, $25
    inc c
    ld d, $0d
    dec h
    dec c
    inc d
    ld c, $28
    inc c
    inc de
    rrca
    ld a, [hl+]
    inc c
    inc d
    rrca
    jr z, jr_001_40d9

    inc de
    db $10
    ld a, [hl+]
    dec bc
    inc de
    rrca
    inc l
    inc c
    ld [de], a
    rrca
    ld l, $0c

jr_001_40d9:
    inc de
    ld c, $2d
    rrca
    ld de, $2d0e
    rrca
    db $10
    db $10
    dec l
    ld c, $14
    ld c, $20
    ld c, $31
    rrca
    ld [de], a
    db $10
    ld [hl-], a
    rrca
    ld [de], a

Call_001_40f0:
    db $10
    add hl, de
    ld [$0f11], sp
    ld de, $340f
    db $10
    ld [de], a
    rrca
    inc [hl]
    db $10
    inc d
    ld c, $35
    ld de, $0e13
    ld c, e
    rrca
    dec d
    dec c
    ccf
    rrca
    ld e, [hl]
    db $10
    inc d
    rrca
    ld d, $0c
    inc e
    rrca
    jr jr_001_4120

    ld b, h
    dec c
    ld l, c
    inc c
    ld l, a
    inc b
    dec d
    push hl
    dec hl
    pop bc
    ld h, e
    ld d, d
    cp h

jr_001_4120:
    and l
    sbc e
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc l
    sbc [hl]
    add b
    add c
    add d
    and e
    add e
    add h
    add l
    and e
    add [hl]
    add a
    adc b
    sbc a
    sbc [hl]
    adc c
    adc d
    adc e
    and e
    adc h
    adc l
    adc [hl]
    and e
    adc a
    sub b
    sub c
    sbc a
    sbc [hl]
    sub d
    sub e
    sub h
    and e
    sub l
    sub [hl]
    sub a
    and e
    sbc b
    sbc c
    sbc d
    sbc a
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and c
    and d
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    call nc, $a4d4
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $c8d4
    push bc
    add $c7
    call nc, $d4d4
    call nc, $b1d4
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $c9d4
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d4

    ld [hl], d
    ld b, e
    sub e
    ld b, e
    or a
    ld b, e
    bit 0, e
    push hl
    ld b, e
    ld [bc], a
    ld b, h
    ld a, [hl-]
    ld b, h
    ld e, d
    ld b, h
    ld [hl], a
    ld b, h
    sbc a
    ld b, h
    or [hl]
    ld b, h
    db $d3
    ld b, h
    jr z, @+$47

    ccf
    ld b, l
    add l
    ld b, l
    sbc a
    ld b, l
    inc bc
    ld b, [hl]
    daa
    ld b, [hl]
    ld c, e
    ld b, [hl]
    ld h, l
    ld b, [hl]
    ld a, h
    ld b, [hl]
    sbc h
    ld b, [hl]
    db $ec
    ld b, [hl]
    inc bc
    ld b, a
    ld c, l
    ld b, a
    ld [hl], b
    ld b, a
    push bc
    ld b, a
    and $47
    ld b, $48
    dec [hl]
    ld c, b
    and d
    ld c, b
    reti


    ld c, b
    jr nz, jr_001_4262

    ld h, d
    ld c, c
    sub a
    ld c, c
    bit 1, c
    inc e
    ld c, d
    ld [hl], d
    ld c, d
    cp b
    ld c, d
    dec l
    ld c, e
    ld h, h
    ld c, e
    or l
    ld c, e
    ld b, $4c
    ld h, l
    ld c, h
    or c
    ld c, h
    ld h, $4d
    ld [hl], l
    ld c, l
    jp z, $384d

    ld c, [hl]
    ld h, e
    ld c, [hl]
    xor c
    ld c, [hl]
    cp $4e
    ld l, c
    ld c, a
    sub l
    ld c, a
    db $ec
    ld c, a
    ld h, [hl]
    ld d, b
    rst $28
    ld d, b
    ld d, a
    ld d, c
    cp b
    ld d, c
    inc d
    ld d, d
    ld h, l
    ld d, d
    db $d3
    ld d, d
    add hl, de
    ld d, e
    ld a, e
    ld d, e
    pop de
    ld d, e
    ld a, $54
    sbc d
    ld d, h
    jp nc, $2754

    ld d, l
    sbc d

jr_001_4262:
    ld d, l
    pop hl
    ld d, l
    ld [hl], $56
    and h
    ld d, [hl]
    inc d
    ld d, a
    ld b, b
    ld d, a
    or h
    ld d, a
    jr nc, jr_001_42c9

    ld d, h
    ld e, b
    and l
    ld e, b
    ei
    ld e, b
    ld l, c
    ld e, c
    jp $f359


    ld e, c
    ld d, a
    ld e, d
    add d
    ld e, d
    pop af
    ld e, d
    add hl, hl
    ld e, e
    sub [hl]
    ld e, e
    ret


    ld e, e
    inc [hl]
    ld e, h
    ld e, h
    ld e, h
    and d
    ld e, h
    add sp, $5c
    inc de
    ld e, l
    ld l, l
    ld e, l
    sbc c
    ld e, l
    ldh [$5d], a
    ld e, d
    ld e, [hl]
    or b
    ld e, [hl]
    jr jr_001_42fe

    ld h, l
    ld e, a
    and d
    ld e, a
    dec c
    ld h, b
    add d
    ld h, b
    pop hl
    ld h, b
    ld e, $61
    ld b, [hl]
    ld h, c
    sbc h
    ld h, c
    nop
    ld [bc], a
    nop
    add b
    jr nz, jr_001_42f3

    ld [bc], a
    nop
    add b
    jr nz, jr_001_42ba

jr_001_42ba:
    nop
    nop
    add b
    db $10
    db $10
    dec bc
    add b
    add b
    ld [hl], b
    nop
    nop
    rlca
    pop af
    inc b
    ld b, c

jr_001_42c9:
    db $10
    ld b, h
    ld de, $4104
    db $10
    ld b, a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    inc d
    nop
    ld bc, $0820
    jr nc, jr_001_42e4

    ld b, c

jr_001_42e4:
    jr nc, jr_001_4310

    inc bc
    ld b, c
    ld b, b
    nop
    ld a, [hl+]
    nop
    ld bc, $1040
    ld [$8000], sp
    ld [bc], a

jr_001_42f3:
    and b
    nop
    stop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_42fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    ld bc, $0820
    jr nc, jr_001_4311

jr_001_4310:
    ld b, c

jr_001_4311:
    jr nc, @+$2c

    ld [bc], a
    pop bc
    ld b, b
    nop
    ld a, [hl+]
    nop
    ld bc, $1040
    ld [$8000], sp
    ld [bc], a
    and b
    nop
    stop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    add b
    ld b, b
    ld [$00fd], sp
    adc b
    jr @-$26

    add b
    add b
    ld hl, sp+$08
    add hl, bc
    add b
    or b
    inc e
    add hl, de
    add hl, sp
    add b
    sbc [hl]
    jr c, jr_001_4351

    ld [bc], a
    add b
    db $f4
    jr z, jr_001_4365

    ld b, $f7
    add c
    pop bc

jr_001_4351:
    nop
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    nop
    ld [$0008], sp
    stop
    ld [bc], a
    ld c, b
    nop
    ld [$0000], sp
    nop
    nop

jr_001_4365:
    inc d
    jr @+$0a

    nop
    nop
    jr c, jr_001_4394

    cpl
    pop hl
    adc e
    or $14
    inc e
    add hl, bc
    add hl, bc
    nop
    jr nz, jr_001_4377

jr_001_4377:
    nop
    jr nz, jr_001_438a

    ld [$0000], sp
    nop
    nop
    db $10
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $19

jr_001_438a:
    ld [$57bc], sp
    cp d
    pop bc
    ld b, h
    and e
    rst $18
    nop
    ld a, [bc]

jr_001_4394:
    add hl, bc
    nop
    jr @+$08

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_439f

jr_001_439f:
    nop
    nop
    nop
    nop
    ld b, b
    ld [$0008], sp
    nop
    jr z, jr_001_43aa

jr_001_43aa:
    nop
    rrca
    cp $01
    add d
    ld h, l
    cp b
    dec bc
    ld [$8822], a
    inc hl
    ld hl, sp+$06
    ld [$0400], sp
    nop
    ld bc, $8007
    nop
    ld b, $08
    db $10
    add c
    nop
    ld a, e
    inc l
    or e
    add $18
    ld a, a
    ld [$0008], sp
    jr nz, jr_001_43d0

jr_001_43d0:
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    jr nz, jr_001_43e8

    nop
    nop
    jr nz, jr_001_43e0

    nop
    ld a, h
    ld l, [hl]
    ld b, d

jr_001_43e0:
    db $eb
    xor c
    add l
    add c
    rst $38
    ld a, [bc]
    rlca
    nop

jr_001_43e8:
    nop
    nop
    nop
    add b
    jr nc, jr_001_43fa

    nop
    nop
    nop
    nop
    ld [$9002], sp
    ld [$0000], sp
    rlca
    pop af

jr_001_43fa:
    rlca
    call c, $1868
    adc a
    ld [hl+], a
    ld a, a
    add b
    dec bc
    dec c
    nop
    nop
    stop
    nop
    nop
    add b
    nop
    nop
    jr nz, jr_001_442f

    jr nz, jr_001_4411

jr_001_4411:
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_001_441a

jr_001_441a:
    nop
    nop
    nop
    nop
    dec b
    nop

Jump_001_4420:
    ld b, b
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add b
    pop de
    di
    ldh [$61], a
    db $dd

jr_001_442f:
    ld b, e
    and c
    inc [hl]
    ld d, $42
    pop hl
    ld d, l
    jp nz, $df83

    ret nz

    ld a, [bc]
    ld [$0000], sp
    jr nz, jr_001_4440

jr_001_4440:
    nop
    nop
    nop
    rlca
    ret nz

    nop
    nop

jr_001_4447:
    nop
    jr nz, jr_001_444a

jr_001_444a:
    ld d, h
    ld [$0002], sp
    nop
    nop
    rra
    call z, $24b2
    add c
    ld h, $78
    cp b
    dec bc
    cp $0a
    rlca
    nop
    nop
    ld [bc], a
    ld bc, $6082
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $2848
    nop
    nop
    ld bc, $c2f9
    add $e0
    jr c, jr_001_4483

    ld [c], a
    rrca
    add b
    dec bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rNR32], a
    nop
    nop

jr_001_4483:
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [$0000], sp
    ld bc, $0024
    add b
    ld bc, $26ff
    inc h
    inc b
    sbc h
    sub h
    ld d, [hl]
    adc e
    add b
    jr nc, jr_001_44f4

    rst $38
    add b
    ld [$0007], sp
    nop
    nop
    ld c, h
    inc e
    nop
    nop
    nop
    nop
    inc e
    ld d, b
    jr nz, jr_001_44ae

jr_001_44ae:
    nop
    ccf
    ld hl, $c1e1
    add e
    ld a, [c]
    ld e, $0c
    ld b, $00
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    jr nz, jr_001_4447

    inc b
    nop
    add b
    nop
    ld a, c
    db $fc
    sub c
    adc a
    jr @+$03

    jp nz, $feb7

    inc d
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld b, $00
    ld [$0060], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_44f4:
    nop
    nop
    ld b, b
    nop
    ld bc, $0000
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rrca
    add b
    nop
    adc b
    nop
    ld [$0380], sp
    adc [hl]
    nop
    jr nz, jr_001_4538

    ld c, $ba
    ccf
    adc e
    cp [hl]
    jr jr_001_451f

jr_001_451f:
    ld bc, $defb
    db $10
    add c
    rst $38
    rrca
    ldh a, [rP1]
    ld [$0007], sp
    inc b
    ld [$0814], sp
    nop
    nop
    nop
    inc b
    db $10
    ld [$000c], sp
    nop

jr_001_4538:
    ld a, $e6
    add e
    add c
    pop hl
    inc hl
    ld a, $14
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld bc, $000c
    nop
    ldh [rP1], a
    inc c
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc b
    db $10
    ld bc, $00c4
    inc b
    add b
    ld bc, $0050
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld [$7e70], sp
    and c
    inc a
    ld a, [hl+]
    rra
    jp $0080


    ld e, $07
    jp Jump_001_4420


    ld [hl+], a
    inc b
    ld a, [hl]
    ccf
    ret nz

    nop
    ld [$0008], sp
    jr jr_001_4592

    inc b
    nop
    nop
    stop
    nop
    nop
    nop

jr_001_4592:
    ld [$0c10], sp
    stop
    inc a
    inc h
    ld h, [hl]
    ld b, d
    jp $9191


    rst $38
    inc d
    dec c
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld h, b
    nop
    ld b, $00
    nop
    ld h, b
    nop
    ld e, $00
    ld bc, $00e0
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    ld [hl], h
    add b
    ld [bc], a
    ld [$6500], sp
    ld b, b
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    nop
    inc bc
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [rP1]
    ld hl, $fe1f
    ld de, $0108
    db $10
    add d
    ld de, $2100
    db $10
    add d
    rra
    ld [$8b21], sp
    rst $38
    ld hl, sp+$0c
    nop
    adc b
    ret nz

    ld [$008c], sp
    rst $38
    add b
    nop
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    inc e
    nop
    nop
    ld [$0000], sp
    nop
    nop
    jr nz, @+$0a

    ld bc, $a000
    inc b
    ld [bc], a
    nop
    inc bc
    ldh a, [$87]
    jr nz, jr_001_4698

    ret c

    ld b, $13
    db $f4
    ld b, h
    sub c
    db $fc
    ld a, [bc]
    add hl, bc
    nop
    nop
    ld b, b
    jr c, jr_001_4634

    nop
    nop
    nop
    nop
    inc b
    nop

jr_001_4634:
    nop
    nop
    nop
    db $10
    add hl, bc
    ld bc, $9000
    nop
    ld bc, $0300
    db $fc
    adc c
    ld h, b
    ld d, b
    sbc l
    xor [hl]
    ld bc, $7f88
    ret nc

    inc a
    add hl, bc
    rlca
    nop
    nop
    nop
    ld bc, $c080
    add b
    nop
    nop
    nop
    inc e
    nop
    nop
    ld b, c
    nop
    inc bc
    pop af
    ld [$4986], sp
    ldh a, [$2a]
    rla
    ld hl, sp+$08
    rlca
    nop
    nop
    jr jr_001_46c3

    jr jr_001_466d

jr_001_466d:
    nop
    nop
    nop
    inc h
    ld l, b
    inc h
    nop
    nop
    rst $38
    sub c
    add c
    jp $9181


    rst $38
    ld a, [bc]
    ld [$0f00], sp
    ld bc, $00c0
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    jr nz, jr_001_46e1

    ld sp, $0000
    ld b, b
    nop
    ld a, a
    db $10
    ld c, [hl]
    ld e, $21
    add d

jr_001_4698:
    ld h, c
    rra
    ld e, h
    ld a, h
    db $10
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_46ae

jr_001_46ae:
    ld [hl], b
    nop
    jr nc, jr_001_46b2

jr_001_46b2:
    ld [hl], b
    ld b, b
    jr nz, jr_001_46b6

jr_001_46b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_46c1

jr_001_46c1:
    stop

jr_001_46c3:
    jr z, jr_001_46c5

jr_001_46c5:
    jr z, jr_001_46c7

jr_001_46c7:
    nop
    nop
    and b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $01ff
    ld bc, $5501
    ld bc, $0105
    ld bc, $8501
    ld [hl], b
    add c
    rst $18

jr_001_46e1:
    cp a
    add d
    ld [$08c0], sp
    add d
    ld a, b
    sbc $60
    ld [hl], e
    ret nz

    rlca
    ld [$d900], sp
    or b
    nop
    nop
    ld [bc], a
    nop
    nop
    jr nz, jr_001_46f9

    pop bc

jr_001_46f9:
    rlca
    ld [bc], a
    nop
    rst $38
    ld b, $4c
    jr jr_001_4731

    ld h, [hl]
    rst $38
    db $10
    inc c
    nop
    nop
    nop
    add [hl]
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $2400
    add b
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    stop
    inc b
    nop

jr_001_4731:
    nop
    nop
    nop
    nop
    ld bc, $ffff
    pop hl
    add b
    ld bc, $6189
    ret c

    ld a, c
    ld b, e
    ld c, a
    ld e, d
    ld b, b
    ret nc

    ret nz

    add c
    add b
    sbc c
    nop
    sbc c
    nop
    rst $38
    nop
    ld [$000b], sp
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_001_4757

jr_001_4757:
    nop
    inc b
    nop
    nop
    nop
    ld [$1008], sp
    inc b
    ld [$0804], sp
    inc b
    nop
    rra
    ld de, $81f1
    add e
    sub d
    sub e
    pop af
    ld hl, $3f25
    ld de, $000d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    add b
    inc bc
    ret nz

    nop
    ldh [rP1], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_4795

jr_001_4795:
    jr z, jr_001_4797

jr_001_4797:
    nop
    nop
    nop
    nop
    ld b, $00
    ld [bc], a
    stop
    nop
    ld [bc], a
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    db $10
    jr nz, jr_001_47b7

    inc de
    db $fc
    dec bc
    rlca
    or l
    nop
    ld a, [de]
    pop bc

jr_001_47b7:
    adc l
    cp a
    ret nz

    ret nz

    rst $28
    ld h, b
    ld b, b
    jr nz, @+$23

    ldh a, [rNR23]
    add b
    rlca
    ret nz

    add hl, bc
    add hl, bc
    nop
    nop
    nop
    rlca
    inc bc
    add b
    nop
    nop
    ld [bc], a
    nop
    nop

jr_001_47d2:
    nop
    inc bc
    nop
    nop
    jr nz, jr_001_47e0

    ld c, b
    ld bc, $3f00
    ret nc

    ld a, [hl+]
    inc d
    dec hl

jr_001_47e0:
    ld b, $b1
    ld b, b
    and h
    rst $18
    ldh [$0a], a
    ld [$0000], sp
    nop
    nop
    ld [bc], a
    nop
    ld bc, $e081
    nop
    nop
    nop
    nop
    and b
    adc d
    jr jr_001_47f9

jr_001_47f9:
    nop
    nop
    nop
    ld a, $38
    ld hl, sp+$06
    inc bc
    rst $20
    ret z

    ld b, d
    db $10
    db $fc
    ld a, [bc]
    inc c
    nop
    nop
    nop
    nop
    jr nz, jr_001_4826

    ld b, $01
    add b
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    ld [$0000], sp

jr_001_481f:
    ld b, b
    ld [$0401], sp
    add b
    nop
    nop

jr_001_4826:
    rra
    call c, Call_001_561c
    ld b, c
    and l
    pop hl
    ld c, [hl]
    jr jr_001_47d2

    ld l, e
    sub b
    inc h
    add hl, de
    db $fc
    inc de
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00e0
    inc a
    nop
    rlca
    adc b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_485b:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    stop
    inc d
    add b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    jr nz, jr_001_4870

jr_001_4870:
    ld a, [bc]
    ld [$0000], sp
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $07e0
    db $e4
    nop
    add b
    rst $38
    or $19
    ld b, $00
    jr nz, jr_001_485b

    ld [hl], h
    ld a, [de]
    ld b, $83
    db $e4
    sbc e
    call nz, Call_001_40f0
    add a
    xor b
    inc [hl]
    sub l
    inc b
    nop
    jr nz, jr_001_481f

    db $e4
    inc de
    rst $00
    add e
    ret nz

    nop
    ld c, $0a
    nop
    ld bc, $0680
    nop
    jr jr_001_48ab

jr_001_48ab:
    ld h, c
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0820
    nop
    stop
    ld [$5000], sp
    dec h
    ld b, b
    nop
    nop
    nop
    rst $38
    ld a, [c]
    db $10
    ld a, b
    ld b, b
    ld h, c
    ld a, c
    add c
    ld h, [hl]
    inc d
    ccf
    ret c

    ld c, b
    ld bc, $0421
    rst $38
    ldh a, [$0e]
    dec c
    nop
    nop
    nop
    nop
    ld a, $00
    jr c, jr_001_48e3

jr_001_48e3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_001_48f3:
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_001_48fb

jr_001_48fb:
    ld b, b
    nop
    add b
    ld bc, $0200
    nop
    inc b
    nop
    ld [$0001], sp
    nop
    nop
    ld e, $3f
    rst $08
    adc h
    ld b, $0c
    ld e, h
    dec e
    ld d, h
    ld hl, $4548
    db $10
    sub h
    ld [hl+], a
    sbc $42
    inc c
    adc b
    ld e, $20
    ccf
    add b
    ld de, $000a
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00e0
    ld [hl], b
    nop
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [bc], a
    add b
    ld bc, $0020
    and b
    nop
    ld b, b
    nop
    inc h
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rDIV]
    jr @+$04

    ld c, h
    ld bc, $0004
    jp nz, $c57f

    ldh [$60], a
    jr c, jr_001_495d

jr_001_495d:
    jr jr_001_497e

    rst $38
    ld hl, sp+$00
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    inc e
    nop
    jr c, jr_001_48f3

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    inc de
    nop
    nop

jr_001_497e:
    nop
    inc b
    inc bc
    jr nz, jr_001_4984

    nop

jr_001_4984:
    nop
    nop
    ld hl, sp+$01
    rra
    ld a, [c]
    nop
    ccf
    ld [$c362], sp
    ret nz

    call nz, $0988
    inc de
    inc sp
    rst $38
    ret nz

    inc c
    dec bc
    nop
    ld b, $04
    ld h, b
    ld b, $00
    ld h, b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ret nz

    inc b
    nop
    ld b, b
    ld c, b
    ld [bc], a
    ld b, b
    ld c, b
    nop
    nop
    nop
    db $fc
    add sp, $5f
    add a
    jr jr_001_49c1

    add l

jr_001_49c1:
    add hl, de
    pop de
    pop af
    ld de, $1011
    ld de, $1f31
    ldh a, [rNR13]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc bc
    add d
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld h, b
    nop
    nop
    nop
    ld bc, $0049
    nop
    nop
    ld bc, $0000
    inc b
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    add b
    ld a, h
    sbc [hl]
    ld [$4f80], sp
    ld b, [hl]
    rlc d
    sbc e
    adc $40
    jr @+$0d

    inc hl
    db $10
    xor [hl]
    ld [c], a
    ld [hl], b
    rrca
    ei
    ld de, $3f00
    ldh [rNR10], a
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld c, $40
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_001_4a6b

    and b
    inc d
    nop
    inc c
    nop
    jr nz, jr_001_4a48

jr_001_4a48:
    ld e, b
    nop
    stop
    inc b
    nop
    jr nc, jr_001_4a50

jr_001_4a50:
    ld bc, $0000
    nop
    nop
    nop
    ld a, a
    ld a, [hl]
    ld b, c
    jp nz, $0b4d

    ld b, b
    ld bc, $1141
    pop bc
    ei
    add c
    ld de, $11e3
    add c
    ld de, $11c9
    ld c, c

jr_001_4a6b:
    pop af
    ld b, b
    ld bc, $f17f
    nop
    rra
    inc c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    inc c
    daa
    ret nz

    inc a
    ld bc, $0080
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ret nz

    add b
    jr c, jr_001_4a94

jr_001_4a94:
    ld [$4200], sp
    ld b, b
    nop
    nop
    ld [de], a
    nop
    add b
    inc b
    nop
    nop
    nop
    rst $38
    db $fc
    add hl, de
    ret nz

    rra
    ld h, c
    add d
    jr jr_001_4ad9

    adc d
    add hl, sp
    ld hl, $1892
    cpl
    ldh a, [$78]
    dec h
    jp nz, Jump_001_611e

    rst $38
    ldh a, [rNR11]
    ld [de], a
    nop
    nop
    nop
    inc bc
    add b
    ld bc, $00c0
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, jr_001_4ac8

jr_001_4ac8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4ad9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr z, jr_001_4af4

jr_001_4af4:
    ld d, b
    dec b
    ld hl, $0d20
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld hl, sp+$01
    inc b
    rrca
    add d
    inc b
    ld bc, $6002
    add c
    or b
    ld b, c
    rst $18
    ldh [$83], a
    rlca
    ret nz

    cp $20
    ld b, a
    nop
    inc bc
    ld hl, sp+$1f
    inc b
    ld [$dc03], sp
    nop
    inc h
    nop
    ld [de], a
    nop
    add hl, bc
    nop
    rlca
    add b
    ld c, $0a
    nop
    ld bc, $6780
    rst $38
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    rra
    cp $60
    jr jr_001_4b40

jr_001_4b40:
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    xor d
    and l
    ld [hl], l
    ld a, [bc]
    xor d
    ld d, l
    ld d, b
    and b
    and b
    nop
    nop
    nop
    ldh a, [$3e]
    ld a, a
    sbc b
    nop
    ld h, b
    ld bc, $0682
    nop
    jr jr_001_4b5e

jr_001_4b5e:
    ld h, b
    ld bc, $e79f
    ret nz

    ldh a, [$0e]
    rrca
    nop
    nop
    ldh a, [rSC]
    add b
    rrca
    ld [$003c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0210
    ld [bc], a
    ld d, h
    nop
    and b
    nop
    nop
    nop
    nop
    add h
    ld [bc], a
    add b
    nop
    nop
    nop
    rlca
    db $fc
    db $10
    jr jr_001_4bf3

    inc sp
    ld a, [bc]
    add sp, $24
    ldh [$99], a
    call c, $0005
    sub l
    inc bc
    ld d, e
    sbc c
    ld b, e
    ld l, l
    ld [$0327], sp
    add h
    ld hl, sp+$1e
    nop
    rrca
    ld c, $00
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    inc a
    nop
    ld a, b
    nop
    nop
    nop
    nop
    jr nz, jr_001_4bd5

jr_001_4bd5:
    db $10
    stop
    nop
    jr nz, jr_001_4bfc

    ld [bc], a
    add c
    jr nz, jr_001_4bdf

jr_001_4bdf:
    nop
    nop
    stop
    nop
    nop
    jr nz, jr_001_4be7

jr_001_4be7:
    nop
    nop
    nop
    nop
    rrca
    add c
    ld sp, hl
    cp $70
    nop
    xor d
    ld a, c

jr_001_4bf3:
    ld b, b
    or $9a
    dec bc
    inc b
    inc d
    ld b, b
    xor b
    ei

jr_001_4bfc:
    rst $18
    ld de, $0202
    inc b
    inc h
    ld [$1f78], sp
    add b
    inc de
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld bc, $00e0
    inc a
    nop
    rlca
    add b
    jr nz, jr_001_4c19

jr_001_4c19:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld [bc], a
    adc b
    nop
    nop
    nop
    inc d
    ldh [rSB], a
    nop
    nop
    inc c
    nop
    inc b
    jr @+$03

    jr nz, jr_001_4c41

jr_001_4c41:
    nop
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [rP1]
    ld c, e
    di
    add sp, $42
    push bc
    jr z, jr_001_4ca0

    ld l, l
    ld a, [bc]
    ld c, b
    and c
    ld b, b
    sub [hl]
    ld l, c
    ld [hl], $4b
    inc b
    jp hl


    ld b, b
    add b
    jr z, @+$15

    call $cf0f
    ccf
    nop
    nop
    dec c
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ldh a, [rTAC]
    add b
    inc a
    ld bc, $00c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    pop de
    nop
    ld [bc], a
    nop
    and b
    nop
    add b
    jr jr_001_4c8f

jr_001_4c8f:
    add b
    ld a, [bc]
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    rrca
    rlca
    ret z

    ld h, b
    ld b, [hl]
    dec de
    or b
    add l

jr_001_4ca0:
    db $ec
    inc h
    ld hl, $0921
    nop
    ld l, b
    ld b, c
    ld a, [hl]
    ld [$c011], sp
    sbc h
    inc b
    add b
    inc a
    nop
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ret nz

    rrca
    ldh [rTAC], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    jr nz, jr_001_4ce3

    sub b
    ld [bc], a

jr_001_4ce3:
    nop
    nop
    add b
    ld [$0028], sp
    inc h
    ld b, $00
    nop
    ld a, [hl+]
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    rra
    db $e4
    jr @+$04

    ld [$04c1], sp
    inc h
    rst $38
    sub b
    ld h, b
    nop
    pop af
    or $cc
    nop
    ld [hl+], a
    ld h, b
    ld de, $b8fa
    ld [$0410], sp
    jr jr_001_4d23

    sbc h
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    add b

jr_001_4d23:
    add b
    ld a, a
    ret nz

    ld de, $000c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    add b
    ld bc, $0020
    add b
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    db $10
    jr nz, jr_001_4d68

    rra
    rlca
    add b
    add d
    ld l, b
    ld b, c
    dec c
    ld a, l

jr_001_4d68:
    or b
    ld [bc], a
    adc c
    ld de, $ffc7
    jp nz, $2100

    nop
    rra
    add b
    nop
    ld de, $000d
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld a, h
    nop
    ld a, $00
    rra
    nop
    nop
    nop
    nop
    nop
    ld [$0100], sp
    jr nz, jr_001_4d9b

    xor b

jr_001_4d9b:
    nop
    ld b, b
    ld [$0211], sp
    ld c, b
    add b
    add d
    nop
    nop
    nop
    ld d, b
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $00f0
    rst $08
    pop hl
    ldh [rNR13], a
    add b
    add hl, bc
    ld de, $bc7c
    ld [bc], a
    ld b, b
    ld bc, $ee20
    di
    ld b, c
    jr nc, jr_001_4de3

    jr jr_001_4dc5

jr_001_4dc5:
    ld a, a
    ld hl, sp+$20
    rlca
    ldh a, [rNR12]
    stop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_4de3:
    ld a, b
    nop
    rra
    add b
    rrca
    nop
    inc bc
    add b
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2500], sp
    nop
    inc h
    jr z, jr_001_4dfe

    inc d
    nop

jr_001_4dfe:
    nop
    ldh [$84], a
    add b
    add hl, hl
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    add hl, bc
    rst $38
    ld b, $6c
    ld b, c

jr_001_4e1b:
    db $10
    ld e, $40
    add h
    pop af
    and b
    add hl, de
    jr z, jr_001_4e2a

    nop
    ld l, a
    add d
    sub d
    inc sp
    sbc h

jr_001_4e2a:
    add h
    add b
    ld hl, $78e0
    db $10
    ldh a, [rDIV]
    ld h, b
    ld bc, $0010
    ld a, h
    nop
    add hl, bc
    inc c
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    add c

jr_001_4e40:
    ret nz

    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    inc b
    jr nz, jr_001_4e55

    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_001_4e55:
    ld a, b
    daa
    sub d
    ld e, c
    cp c
    ld c, h
    ld b, $53
    adc e
    ld [hl], b
    adc d
    ld b, h
    ld h, e
    ldh [rIF], a
    inc c
    nop
    nop
    nop
    nop
    inc bc
    add b
    rlca
    nop
    ld c, $00
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2600], sp
    nop
    jr nz, jr_001_4e87

jr_001_4e87:
    ld [$0101], sp
    ld b, b
    jr jr_001_4e8d

jr_001_4e8d:
    inc bc
    add b
    nop
    nop
    nop
    ld a, a
    nop
    sub e
    db $e3
    inc h
    ld [hl], h
    ld c, b
    jr z, jr_001_4e1b

    ld d, c
    jr nz, jr_001_4e40

    ld a, a
    ldh [rSB], a
    ret z

    ld [hl+], a
    db $fc
    call z, $1808
    rra
    ldh [rNR11], a
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    inc bc
    nop
    ld bc, $0080
    ret nz

    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    add b
    nop
    jr nz, jr_001_4ed0

jr_001_4ed0:
    inc h
    ld bc, $0080
    stop
    nop
    nop
    nop
    nop
    ld bc, $0400
    nop
    nop
    nop
    nop
    nop
    inc bc
    cp $01
    ld bc, $8200
    rst $30
    ret z

    ld c, d
    ld c, h
    dec b
    jr nz, jr_001_4f01

    sub e
    ld a, e
    ld c, l
    add l
    jr nz, jr_001_4f63

    pop af
    add b
    rra
    pop af
    xor b
    ccf
    call nz, $3e00
    inc d
    ld c, $00

jr_001_4f01:
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld h, b
    nop
    ld b, $00
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [$8001], sp
    add b
    nop
    ld [$0c00], sp
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_001_4f3c

jr_001_4f3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $03
    rst $38
    and b
    ld [c], a
    inc sp
    ld hl, sp+$20
    ld hl, $30a2
    ld a, [de]
    ld hl, $af21
    ld e, [hl]
    ld a, [de]
    ld [hl], h
    cp a
    and h
    jr z, jr_001_4f65

    ld [bc], a
    add b
    and a
    ld l, b
    dec bc
    ret nz

jr_001_4f63:
    add b
    add c

jr_001_4f65:
    ld hl, sp+$0f
    ldh a, [rP1]
    dec bc
    ld a, [bc]
    nop
    nop
    ld b, b
    jr jr_001_4f73

    nop
    jr nz, jr_001_4f73

jr_001_4f73:
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    db $10
    ld hl, $0182
    nop
    nop
    nop
    ld a, [hl]
    ld hl, sp+$52
    ld l, d
    ld bc, $7d49
    and [hl]
    nop
    call nc, $ff9c
    ldh a, [rP1]
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ret nc

    nop
    ldh [rSB], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    inc bc
    and [hl]
    nop
    stop
    db $10
    ld bc, $00d0
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    ccf
    ldh [rLCDC], a
    ld b, b
    add b
    pop af
    cp l
    inc hl
    ld a, b
    ld b, h
    nop
    adc c
    ld h, c
    ld [de], a
    jp $04fc


    and e
    ld bc, $4251
    adc d
    push bc
    ldh a, [$88]
    ld sp, $3ef0
    nop
    inc d
    stop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld bc, $00c0
    inc e
    nop
    ld bc, $00c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    inc b
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld [bc], a
    add b
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    inc c
    ldh [rP1], a
    jp nz, $0e00

    jr nz, jr_001_5048

jr_001_5048:
    ld c, a
    ldh [rDIV], a
    inc bc
    ret nz

    ld c, [hl]
    rlca
    and $c2
    ld b, e
    ld c, h
    inc l
    inc d
    ld a, $e9
    ld c, c
    ld l, b
    sub a
    jp nz, $0691

    add b
    db $10
    jr c, @-$7d

    nop
    ld hl, sp-$70
    nop
    rst $38
    inc d
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld c, $00
    nop
    ldh [rP1], a
    ld c, $00
    nop
    ldh [rP1], a
    ld c, $00
    nop
    ldh [rP1], a
    ld c, $00
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld b, b
    ld b, b
    ld c, $04
    nop
    inc b
    ld b, b
    ld a, [bc]
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    pop hl
    nop
    nop
    jr jr_001_50b1

jr_001_50b1:
    and c
    nop
    nop
    ld [$0000], sp
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    cp a
    ld b, $0e
    db $10
    ld c, [hl]
    ld hl, $52c5
    inc b
    ld d, c
    ld a, e
    ld a, h
    nop
    ld de, $9195
    ld a, [de]
    ld a, [bc]
    pop de
    and b
    and c
    add hl, de
    ld a, [de]
    ld de, $07c0
    dec d
    ld e, d
    ld bc, $a050
    dec d
    ld a, [bc]
    ld a, a
    ld d, c
    and h
    inc b
    inc bc
    ret nz

    ld [hl], b
    ldh [rSB], a
    ld hl, sp+$00
    ld [de], a
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_50f9

jr_001_50f9:
    ld b, $00
    ld bc, $0080
    ld h, b
    nop
    jr jr_001_5102

jr_001_5102:
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_510b:
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_511a

jr_001_511a:
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_001_5123

jr_001_5123:
    stop
    ld c, b
    nop
    inc b
    ld bc, $0002
    ld bc, $0000
    add b
    nop
    jr nz, jr_001_5132

jr_001_5132:
    nop
    nop
    nop
    ccf
    ld hl, sp+$08
    inc hl
    ld [bc], a
    nop
    ld b, b
    add d
    sub e
    rst $38
    add h
    add b
    ld bc, $6a2a
    ld c, b
    add d
    ld d, $8f
    rst $20
    ld [bc], a
    ld de, $8484
    ld h, b
    ld h, c
    ld sp, hl
    ldh a, [rSC]
    ret nz

    nop
    ldh a, [rP1]
    nop
    ld [de], a
    ld c, $00
    nop
    inc e
    nop
    rlca
    add b
    ld bc, $00f0
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5180

jr_001_5180:
    ld [de], a
    nop
    nop
    add b
    inc b
    stop
    ld [bc], a
    ld [bc], a
    jr nz, jr_001_510b

    nop
    nop
    inc b
    add b
    ld bc, $0604
    ld de, $0000
    nop
    nop
    nop
    rst $38
    nop
    jr nz, jr_001_521b

    adc b
    nop
    ld [hl-], a
    inc c
    ld b, h
    add d
    ld b, c
    ccf
    sbc b
    ld [hl], h
    inc bc
    add l
    ld [$4e41], sp
    set 2, d
    ld [bc], a
    daa
    xor c
    adc b
    ret nz

    ld [bc], a
    ld a, $3f
    add b
    ld hl, sp+$00
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    add b
    ld a, [bc]
    nop
    db $10
    add b
    ld [bc], a
    nop
    stop
    add hl, bc
    add b
    ld [de], a
    nop
    ld a, [bc]
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ret nz

    ld [$3b40], sp
    ld b, b
    ldh [$7f], a
    add b
    ld b, c
    and h
    ld b, c
    and h
    ld bc, $41a4
    and h
    ld b, c
    or h
    ld a, a
    and b
    ret nz

    and b
    add b
    cp e
    add b
    add d
    nop
    cp $00
    rrca
    ld c, $00
    nop
    nop
    nop
    nop

jr_001_521b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc b
    db $10
    rrca
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5236

jr_001_5236:
    ld d, b
    nop
    xor b
    ld bc, $0250
    add b
    inc b
    inc e
    stop
    nop
    ld hl, sp+$00
    nop
    rlca
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    inc de
    add b
    ld hl, $40c0
    ldh [$80], a
    ld [hl], c
    nop
    ld [hl+], a
    inc b
    ld h, h
    jr nc, jr_001_52a7

    ldh [$da], a
    add b
    sub a
    ld bc, $01a0
    ld a, b
    ld [bc], a
    rra
    db $fc
    db $10
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    add b
    rlca
    add b
    rlca
    add b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5289

jr_001_5289:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld d, b
    nop
    jr z, jr_001_5296

jr_001_5296:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop

jr_001_52a7:
    ld bc, $2000
    nop
    jr nz, jr_001_52ad

jr_001_52ad:
    nop
    nop
    ld bc, $01ff
    ld bc, $0101
    ld bc, $1f01
    ld bc, $ef11
    db $10
    inc b
    dec e
    db $e4
    ld [$086c], sp
    ld c, b
    ld [$fb48], sp
    adc b
    sbc e
    cp b
    sbc e
    sbc b
    add b
    db $10
    sub c
    sub b
    rst $38
    ldh a, [rSVBK]
    nop
    ld a, [bc]
    ld [de], a
    nop
    rrca
    jp $fc30


    ccf
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_52ea

jr_001_52ea:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    inc c
    nop
    ld bc, $00e0
    ld e, $00
    inc bc
    ldh a, [rP1]
    ccf
    ld [bc], a
    nop
    nop
    nop
    ld a, a
    sub b
    inc h
    ret


    ld [bc], a
    ld b, b
    sbc h
    db $e4
    add hl, bc
    ld [bc], a
    ld b, b
    cp b
    ld a, b

jr_001_530f:
    ld b, $01
    add b
    ld [hl], b
    jr c, @+$08

    ld hl, $7c9e
    ldh a, [rIF]
    ld de, $0000
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_5335

    ld a, b

jr_001_5335:
    inc bc
    ld hl, sp+$0f
    jr jr_001_533a

jr_001_533a:
    nop
    nop
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld a, [bc]
    ld [$0818], sp
    ld c, b
    ld b, b
    jr nc, jr_001_530f

    add b
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ret nz

    inc [hl]
    add b
    ld b, c
    ld bc, $1eda
    ld d, $20
    ld h, $43
    call nz, $8984
    ld bc, $1016
    jr c, jr_001_5393

    jr nc, jr_001_53e9

    ld h, l
    sbc b
    ld a, [c]
    rra
    jr nz, jr_001_538f

    ld b, b
    db $10
    rst $38
    ldh [rNR10], a
    ld c, $00
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_538f:
    nop
    nop
    jr nz, jr_001_5393

jr_001_5393:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    add hl, bc
    ld [$0032], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld hl, sp+$10
    adc b
    db $10
    ld [$9e10], sp
    ccf
    sub e

jr_001_53bf:
    jr nz, jr_001_53c2

    inc h

jr_001_53c2:
    ret


    or $7b
    add e
    jp hl


    and b
    ld hl, $23a0
    or $fe
    db $10
    add b
    rra
    add b
    inc de
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_53e9:
    nop
    ld bc, $0000
    ld [hl], $00
    rlca
    ld b, b
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    add b
    ld [bc], a
    ret nz

    nop
    ld b, b
    nop
    dec bc
    nop
    ld bc, $0002
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    dec a
    jr nz, jr_001_543c

    db $e4
    ld b, $20
    add c
    add c
    or b
    dec h
    add d
    dec b
    ld [bc], a
    ldh [$82], a
    ld b, a
    db $fc
    jr nz, jr_001_53bf

    or b
    ld bc, $9f83
    ldh a, [$5e]
    ld [bc], a
    jr z, jr_001_5439

jr_001_5439:
    ld b, c
    nop
    rrca

jr_001_543c:
    ldh [rP1], a
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    sub b
    nop
    jr nz, jr_001_546b

jr_001_546b:
    nop
    nop
    ld [$0002], sp
    db $10
    ld b, b
    nop
    nop
    ld bc, $0084
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $01e0
    jr nc, @+$03

    jr jr_001_5484

    inc c

jr_001_5484:
    rlca
    ld b, $3c
    ld [bc], a
    push hl
    ld a, [c]
    add l
    ld [bc], a
    and b
    ld a, [bc]
    add l

jr_001_548f:
    ld a, [bc]
    rst $20
    cp d
    dec a
    dec de
    rlca
    ld bc, $3101
    ld bc, $12ff
    ld [$0000], sp
    nop
    nop
    ldh [rP1], a
    jr c, jr_001_54a4

jr_001_54a4:
    ld c, $00
    rlca
    add b
    nop
    jr nz, jr_001_54ab

jr_001_54ab:
    jr c, jr_001_54ad

jr_001_54ad:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    pop bc
    nop
    add h
    ret nz

    inc [hl]
    inc b
    ld a, [bc]
    and b
    nop
    nop
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ldh [$0d], a
    jr jr_001_54e6

    ld b, [hl]
    dec bc
    ld de, $0488
    ld h, b
    ld c, a
    jr jr_001_548f

    rlca
    rst $38
    rst $38
    ld de, $000d
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    inc b
    nop
    inc bc

jr_001_54df:
    ld hl, sp+$00
    add b
    nop
    nop
    ld a, [hl]
    nop

jr_001_54e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc l
    nop
    nop
    nop
    ld bc, $8100
    inc b
    db $10
    add b
    stop
    add b
    nop
    ld b, b
    nop
    jr z, jr_001_5507

jr_001_5507:
    nop
    nop
    nop
    nop
    nop
    ccf
    ldh [$71], a
    db $10
    jr nc, jr_001_5521

    ld a, [hl]
    ld b, $e3
    inc sp
    nop
    ld h, c
    sbc c
    jr nz, jr_001_54df

    nop
    ld [hl], e
    ccf
    add sp, -$10
    inc b

jr_001_5521:
    db $10
    ld [bc], a
    ld [$fc01], sp
    nop
    inc d
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld b, h
    nop
    nop
    ld b, b
    db $10
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    inc bc
    jr nz, jr_001_555c

jr_001_555c:
    ld b, d
    nop
    ld bc, $0080
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    nop
    jr z, jr_001_556b

jr_001_556b:
    nop
    ld b, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    rra
    nop
    inc bc
    jr jr_001_557a

jr_001_557a:
    ld h, b
    add b
    inc c
    ld [$8001], sp
    add b
    db $10
    ld [$03f1], sp
    jp hl


    cp $c2
    add b
    nop
    ld l, d
    cp $c6
    xor a
    db $e4
    ld a, b
    nop
    ld b, c
    rst $38
    db $fc
    stop
    ld h, a
    nop
    inc bc
    ret nz

    ld c, $0d
    nop
    nop
    rlca
    ldh [rNR30], a
    nop
	db $ca, $00, $00

    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_55ba

jr_001_55ba:
    db $10
    ld [bc], a
    ld b, b
    ld [$4144], sp
    nop
    add h
    ld b, d
    nop
    nop
    ld [$0000], sp
    nop
    rrca
    rst $38
    db $e3
    ld bc, $569c
    ld b, e
    dec e
    jr z, jr_001_5633

    dec bc
    sub h
    rst $20
    ld d, b
    sbc c
    ld l, d
    ld h, b
    add c
    ld [c], a
    call z, $20f8
    ccf
    add b
    ld de, $000d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    jr c, jr_001_55f1

jr_001_55f1:
    inc e
    nop
    ld c, $00
    rlca
    nop
    inc bc
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b

jr_001_5606:
    ld d, b
    ld bc, $01c0
    ld d, b
    nop
    ld d, b
    nop
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38

Call_001_561c:
    ret nc

    nop
    ld a, [hl+]
    db $fc
    dec d
    nop
    ld c, d
    add h
    scf
    ld d, b
    ld [hl], c
    and b
    jr jr_001_5606

    inc c
    ld h, b
    or [hl]
    ccf
    dec de
    db $10
    ld hl, sp+$38
    inc b

jr_001_5633:
    db $10
    inc bc
    ld hl, sp+$12
    stop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ldh a, [rP1]
    db $fc
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ret nz

    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld [$0510], sp
    jp nz, $a100

    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1ffc
    pop bc
    inc b
    ld [de], a
    ld b, c
    ld de, $5cff
    inc c
    ld d, b
    inc bc
    ld d, l
    ret nz

    rlca
    ld e, $eb
    sub b
    add d
    and b
    add hl, bc
    xor b
    ld c, $2b
    ldh [$0a], a
    ld c, $e2
    add b
    add d
    jr nz, jr_001_56e0

    ret z

    nop
    ld e, $14
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    inc d
    nop
    add hl, bc
    nop
    inc d
    db $10
    ld [$8000], sp

jr_001_56e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0fe0
    di
    ldh [$80], a
    ld [hl+], a
    ld [$3c59], sp
    ret z

    jr nz, jr_001_5768

    ld h, d
    ld de, $1040
    inc d
    sub l
    ld e, e
    ld a, b
    db $10
    ld [hl+], a
    ld a, $e6
    jr nz, jr_001_5702

jr_001_5702:
    ld b, e
    sbc a
    call z, $070f
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $2840
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0050
    ld [$2080], sp
    jr nz, jr_001_5730

    nop
    nop

jr_001_5730:
    nop
    ld bc, $e3f0
    or h
    inc d
    db $db
    adc b
    dec [hl]
    ld b, [hl]
    inc bc
    push af
    jp nz, Jump_001_7c20

    nop
    inc de
    stop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rrca
    add b
    ld bc, $00f0
    ld a, $00
    rlca
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5768:
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    ld [bc], a
    add b
    nop
    ld b, b
    nop
    jr nc, jr_001_57bc

    nop
    ret nc

    nop
    nop
    sub b
    ld bc, $0021
    ld [bc], a
    add b
    nop
    ld c, $00
    nop
    nop
    nop
    jr z, jr_001_5788

jr_001_5788:
    ld [$0000], sp
    nop
    nop
    nop
    ld a, [hl]
    ld e, $08
    ld a, [hl]
    ld b, c
    ret nz

    inc c
    ld a, h
    inc a
    ret z

    inc b
    dec c
    dec b
    cp b
    and b
    ld [bc], a
    rla
    ldh a, [rSCY]
    ld [bc], a
    ld a, [bc]
    ret nz

    ld b, b
    ld [$2108], sp
    ld bc, $30f5
    ld [bc], a
    add d
    nop
    ld b, b
    ld b, b
    add hl, bc
    ret z

    ld bc, $13ef
    ld de, $0000
    nop
    nop
    nop
    ld [bc], a

jr_001_57bc:
    nop
    nop
    and b
    nop
    ld a, [hl+]
    nop
    ld a, [bc]
    and b
    ld [bc], a
    xor d
    nop
    xor d
    and b
    ld a, [hl+]
    xor e
    ld [bc], a
    xor d
    add b
    ld a, [hl+]
    and b
    ld [bc], a
    xor b
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    add b
    nop
    jr nz, jr_001_57da

jr_001_57da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc d
    nop
    dec b
    ld b, b
    ld bc, $0054
    ld d, l
    ld b, b
    dec d
    ld d, h
    dec b
    ld b, l
    ld [hl], b
    ld d, l
    ld d, b
    dec b
    ld d, h
    nop
    ld d, l
    nop
    dec b
    ld b, b
    nop
    ld d, b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    add b
    inc bc
    jr jr_001_580c

jr_001_580c:
    pop bc
    add b
    jr nc, jr_001_5828

    inc c
    ld bc, $0083
    ld e, $c0
    ld bc, $0070
    ld b, $00
    inc b
    ret nz

    nop
    inc e
    nop
    ld d, $c0
    rlca
    adc h
    ld bc, $c080
    ld h, b

jr_001_5828:
    inc c
    jr jr_001_582b

jr_001_582b:
    add $00
    rrca
    add b
    nop
    ld a, [bc]
    add hl, bc
    nop
    nop
    nop
    nop
    jr nz, jr_001_5838

jr_001_5838:
    inc b
    inc bc
    add b
    ld h, b
    nop
    nop
    nop
    nop
    add b
    inc e
    nop
    add b
    nop
    inc d
    nop
    nop
    rlca
    add c
    ld a, $cc
    and d
    jr z, @-$33

    or a
    ld b, b
    ld e, b
    inc de
    db $fc
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [$2003], sp
    rrca
    add b
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $88
    ld [de], a
    nop
    ld [bc], a
    add c
    nop
    ld bc, $0120
    nop
    ld bc, $c000
    nop
    nop
    nop
    nop
    nop
    rrca
    add b
    inc hl
    nop
    add h
    ld a, [c]
    ld e, $48
    ld bc, $063d
    ld c, h
    dec c
    dec c
    sub h
    or c
    ld e, h
    dec c
    ld hl, $8404
    ld [de], a
    ld a, a
    ret


    nop
    inc a
    nop
    db $10
    ld c, $00
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    inc a
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    sub b
    nop
    stop
    jr z, jr_001_58d0

jr_001_58d0:
    stop
    nop
    ld hl, $1520
    ld [$d002], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ret nz

    adc d
    ld a, b
    adc [hl]
    ld [$0e86], sp
    jp $e102


    add d
    or b
    add d
    sbc d
    rst $28
    adc d
    ld bc, $0184
    adc b
    rlca
    sbc a
    sbc h
    or b
    ldh a, [$e0]
    nop
    db $10
    ld [de], a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01b0
    ldh a, [rSB]
    ldh a, [rSB]
    ret nc

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    inc d
    nop
    jr nz, jr_001_5931

    ld b, $00
    jr z, @+$0e

jr_001_5931:
    nop
    nop
    db $10
    inc b
    nop
    nop
    nop
    xor b
    nop
    jr nz, jr_001_593c

jr_001_593c:
    stop
    ret nc

    nop
    jr nz, jr_001_5942

jr_001_5942:
    nop
    nop
    nop
    rrca
    ldh [$08], a
    ldh [$7a], a
    cp [hl]
    ld b, d
    ld [bc], a
    ld c, e
    ld a, [$4bc2]
    add b
    add hl, bc
    add d
    ld bc, $29c6
    ld b, e
    add hl, de
    ld e, e
    ld sp, hl
    ld b, b
    inc bc
    ld a, [hl]
    ld a, [bc]
    inc bc
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [c]
    nop
    ld e, $0d
    ld [de], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, b
    inc bc
    ret nz

    ld e, $00
    ldh a, [rTAC]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld bc, $0510
    ld [hl], b
    ld h, b
    inc b
    jr nz, jr_001_59a6

    pop hl
    nop
    inc b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld bc, $0080
    nop
    nop
    inc b
    nop
    nop
    nop
    rlca

jr_001_59a6:
    ld hl, sp+$3c
    ld a, c
    nop
    ld c, b
    ld [bc], a
    ld b, l
    ld d, $00
    and b
    rlca
    dec a
    jr jr_001_59bc

    ret c

    ld b, [hl]
    ret nz

    ld [hl], b
    ld [de], a
    ret nc

    sub d
    add h

jr_001_59bc:
    sub b
    inc b
    or $e0
    add h
    rlca
    ldh [$0b], a
    dec bc
    nop
    nop
    stop
    nop
    nop
    ldh [rNR32], a
    ld [bc], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0204], sp
    ld hl, $1000
    nop
    nop
    ld [bc], a
    ld [de], a
    nop
    nop
    nop
    nop
    rst $30
    or $80
    ld d, b
    bit 0, l
    jr nz, jr_001_5a11

    ld d, $8a
    ld d, b
    ld a, [bc]
    ld a, a
    ld a, b
    nop
    inc d
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    ld bc, $4001
    nop
    inc e
    nop
    ld bc, $0040
    inc e
    nop
    ld bc, $0040
    inc e
    nop
    nop
    nop

jr_001_5a11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    nop
    ld e, b
    nop
    ld bc, $0200
    ld [$0000], sp
    inc d
    ld [bc], a
    nop
    ld b, b
    add hl, de
    ld [de], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld hl, sp+$03
    adc h
    ld hl, sp-$20
    ld c, b
    ld hl, sp+$24
    add c
    and e
    ld l, d
    sbc c
    and d
    ld bc, $2a90
    sbc b
    ld h, [hl]
    ld bc, $4a8c
    sbc h
    nop
    ld bc, $e147
    sub h
    ld b, e
    rst $38
    ld a, h
    nop
    nop
    add hl, bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [hl], h
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld [bc], a
    nop
    dec b
    ld b, b
    nop
    nop
    stop
    nop
    rst $30
    adc $60
    ld [hl-], a
    sbc l
    ld e, h
    and [hl]
    rlca
    dec hl
    pop af
    ld a, [bc]
    add h
    ld b, e
    ldh [rNR11], a
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    inc bc
    ldh [rSB], a
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_001_5ab1

jr_001_5ab1:
    stop
    ld hl, $0500
    stop
    stop
    ld b, b
    inc b
    nop
    ld bc, $0012
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld bc, $01e4
    sub d
    nop
    add c
    ld bc, $f0d0
    add e
    ld [$244a], sp
    inc h
    inc bc
    db $db
    ret c

    add hl, hl
    dec b
    inc d
    nop
    cp [hl]
    ld b, c
    ld [de], a
    dec sp
    ld sp, hl
    inc b
    add b
    sub b
    ld b, b
    ld a, [hl]
    jr nz, @+$03

    ldh a, [rP1]
    inc c
    inc c
    nop
    nop
    nop
    ld bc, $1000
    inc bc
    nop
    db $10
    ld bc, $1000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    inc h
    ld [bc], a
    nop
    nop
    ld de, $0000
    nop
    nop
    add b
    nop
    nop
    nop
    ld bc, $f1f3
    ldh [rNR23], a
    ld c, e
    sub d
    sbc l
    pop hl
    ld b, d
    push af
    and d
    ld b, b
    and a
    ld [bc], a
    inc de
    pop hl
    ldh [rNR13], a
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5b35

jr_001_5b35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    inc e
    nop
    inc bc
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [$0080], sp
    ld [$0040], sp
    ld [$0400], sp
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld [bc], a
    jr nz, jr_001_5b77

jr_001_5b77:
    ld d, a
    ldh [$08], a
    rrca
    pop hl
    add hl, de
    call nz, $002f
    add l
    db $f4
    sbc a
    sbc [hl]
    ret nz

    ld h, d
    dec bc
    ld l, h
    ld bc, $fc45
    ldh [rNR41], a
    push af
    inc d
    nop
    cp d
    add b
    db $10
    db $10
    inc bc
    cp $0d
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld bc, $18c0
    jr nz, jr_001_5ba7

jr_001_5ba7:
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_001_5bae

jr_001_5bae:
    db $10
    pop bc
    nop
    nop
    inc b
    add b
    nop
    ld [$0000], sp
    rrca
    rst $08
    jp $00c6


    cp c
    ld [hl], c
    ld b, e
    xor [hl]
    jr nz, jr_001_5c27

    inc bc
    ld a, $7b
    ld e, $78
    nop
    inc d
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    ldh [rP1], a
    inc a
    ld bc, $00e3
    ld e, $00
    ld bc, $00e0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    adc b
    nop
    nop
    sub d
    nop
    ld [bc], a
    nop
    ld e, $68
    nop
    ld e, b
    nop
    nop
    and b
    nop
    ret nz

    nop
    stop
    nop
    jr nz, jr_001_5c0c

jr_001_5c0c:
    nop
    nop
    nop
    nop
    nop

jr_001_5c11:
    ld bc, $00ef
    ld [hl], d
    sub b
    inc a
    add hl, sp
    ld [bc], a
    nop
    db $10
    and $01
    ld [$d008], sp
    and c
    ld bc, $0308
    rst $18
    ldh a, [$38]

jr_001_5c27:
    inc d
    scf
    add e
    ld b, d
    jr @-$09

    ld bc, $78f8
    stop
    rst $38
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld h, b
    ld c, $00
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc b
    nop
    ld b, b
    adc b
    nop
    nop
    nop
    nop
    nop
    rst $38
    and e
    ld a, [hl+]
    ld a, [bc]
    ld [de], a
    push de
    or a
    ld a, b
    ld b, $35
    db $fc
    ld b, c
    ldh a, [$0c]
    rrca
    nop
    inc bc
    ret nz

    inc a
    inc bc
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_001_5c7e

jr_001_5c7e:
    inc [hl]
    nop
    ld b, b
    jr nc, jr_001_5c83

jr_001_5c83:
    ret nz

    stop
    nop
    ld [$0000], sp
    nop
    cp $08
    jr nz, jr_001_5c11

    ld [$df20], sp
    ld hl, sp+$01
    adc b
    ld e, $89
    jr z, jr_001_5cab

    and c
    jr z, jr_001_5d0e

    db $e4
    ld hl, $c4c3
    rlca
    ret nz

    inc d
    add hl, bc
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rlca

jr_001_5cab:
    nop
    ld b, b
    ld h, b
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    inc b
    ld b, $40
    ld b, b
    ld d, b
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ld a, [c]
    inc bc
    ld de, $b82a
    ld [de], a
    ld b, b
    ld de, $a0fa
    ld a, b
    dec bc
    or $aa
    add b
    jr z, jr_001_5cf3

    ld [c], a
    rst $38
    add e
    ldh [$09], a
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    jr nc, jr_001_5cfb

jr_001_5cf3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b

jr_001_5cfb:
    ld [$0500], sp
    inc c
    nop
    ld bc, $0000
    nop
    nop
    ld a, b
    inc h
    inc de
    adc b
    call $863c
    dec bc
    or c

jr_001_5d0e:
    ld b, e
    and a
    ld [de], a
    rrca
    nop
    ld [de], a
    dec c
    nop
    nop
    nop
    ld c, $00
    inc bc
    add b
    nop
    ld h, b
    nop
    nop
    inc e
    db $10
    ld b, $00
    ld bc, $00c0
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    xor h
    nop
    dec d
    nop
    ld [bc], a
    add b
    ld bc, $0045
    ld a, [bc]
    add b
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld a, a
    ret nz

    db $10
    db $10
    dec b
    inc b
    ld bc, $0f61
    pop bc
    jp nz, $c001

    sub b
    ccf
    ld [c], a
    nop
    jr jr_001_5d65

    or [hl]
    ld a, b

jr_001_5d65:
    add hl, bc
    sub d
    nop
    ld a, h
    rst $00
    ldh a, [$1f]
    nop
    dec bc
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jr c, jr_001_5d82

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2000], sp
    nop

jr_001_5d82:
    ld [$20a0], sp
    ld [$0000], sp
    nop
    nop
    rlca
    ret nz

    xor a
    call nc, $110a
    ret c

    ld sp, $027e
    ld a, l
    ld b, b
    adc b
    rra
    nop
    ld c, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0680
    nop
    sbc b
    nop
    ld h, b
    ld bc, $0480
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld bc, $0e50
    jr nz, jr_001_5dd7

    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    rlca
    inc c
    ld de, $d991
    ld c, h
    dec b
    ld [hl+], a
    sub h
    adc d
    ld e, [hl]
    add hl, bc
    inc e

jr_001_5dd7:
    jr nz, jr_001_5e36

    sub a
    inc de
    sub b
    ld h, b
    ret nz

    cp $00
    inc d
    stop
    nop
    nop
    ld [bc], a
    ld e, $00
    inc bc
    ldh [rP1], a
    ld e, $00
    ld bc, $00e0
    nop
    nop
    nop

jr_001_5df3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0040
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld b, b
    nop
    ld a, [bc]
    nop
    ld bc, $0000
    jr nc, @+$62

    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    ld hl, sp-$79

jr_001_5e36:
    pop hl
    add d
    nop
    jr jr_001_5df3

    pop bc
    db $db
    sub b
    inc d
    ld bc, $416f
    sub b
    rra
    ld c, a
    ld l, l
    sub h
    ld [hl], $18
    dec bc
    ld a, a
    and b
    inc d
    ld [$406d], sp
    add b
    inc b
    dec c
    cp b
    ld b, b
    ld b, d
    add h
    rlca
    rst $28
    ret nz

    ld c, $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld bc, $00fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    and h
    nop
    ld b, b
    ld c, h
    nop
    ld [bc], a
    ld [bc], a
    inc d
    ld [bc], a
    add b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jp nz, $eb01

    db $f4
    add sp, $01
    add b
    add a
    add d
    ld [hl], d
    ld l, c
    adc l
    ld b, $10
    jr c, jr_001_5ef5

    ld hl, $8c62
    ld a, [$0820]
    add b
    ld [c], a
    ld [bc], a
    rrca
    ld hl, sp+$11
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5ebc

jr_001_5ebc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    dec b
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    sub b
    jr nz, jr_001_5edf

    nop

jr_001_5edf:
    add hl, bc
    nop
    ld bc, $0500
    nop
    nop
    inc b
    nop
    inc c
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5ef5:
    nop
    rrca
    rst $38
    inc b
    nop
    jp nz, $2150

    add hl, hl
    or c
    or h
    ld e, b
    add d
    jr z, jr_001_5f48

    inc d
    jr nc, jr_001_5f21

    ld [de], a
    ld h, c
    ld [$bf62], sp
    inc b
    ld d, b
    sbc a
    ld [$0418], a
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $00ff
    ld [de], a
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5f21:
    nop
    ld c, $00
    inc bc
    add b
    ld b, b
    ldh [rP1], a
    jr c, jr_001_5f2b

jr_001_5f2b:
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld l, e
    ld b, b
    ld bc, $0400
    jr jr_001_5f45

    ld h, h
    nop

jr_001_5f45:
    ld b, b
    nop
    nop

jr_001_5f48:
    nop
    nop
    nop
    nop
    rlca
    add c
    rst $38
    jr nc, @-$3e

    rlca
    db $e3
    ld h, e
    ld a, [de]
    ld [bc], a
    add $84
    add c
    adc e
    add b
    ld h, b
    ld b, $1e
    ld bc, $9ffc
    ret nz

    inc a
    nop
    nop
    dec c
    inc c
    nop
    nop
    rlca
    add b
    inc a
    ld bc, $0fe0
    nop
    ld a, b
    inc bc
    ret nz

    ld e, $00
    ldh a, [rTAC]
    sub b
    inc a
    nop
    nop
    nop
    ld a, [bc]
    and b
    xor d
    ld [bc], a
    xor b
    ld a, [hl+]
    add b
    xor d
    ld a, [bc]
    and b
    ld a, [hl+]
    add d
    xor b
    ld a, [bc]
    and c
    xor d
    nop
    nop
    rst $38
    db $fc
    nop
    ld h, b
    inc bc
    nop
    jr jr_001_5f96

jr_001_5f96:
    ret nz

    ld b, $00
    jr nc, jr_001_5f9c

    add b

jr_001_5f9c:
    inc c
    nop
    ld [hl], b
    inc bc
    rst $38
    ldh a, [rNR14]
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5fb3

jr_001_5fb3:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ret nz

    nop
    inc a
    nop
    inc bc
    ld b, b
    nop
    inc a
    nop
    ld bc, $00c0
    nop
    nop
    nop
    nop
    nop

jr_001_5fcb:
    nop
    nop
    ld [bc], a
    add b
    ld bc, $1000
    ld bc, $3801
    jr c, jr_001_5fd7

jr_001_5fd7:
    nop
    nop
    nop
    inc b
    nop
    jr nz, jr_001_5fde

jr_001_5fde:
    ld bc, $3100
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh [$08], a

jr_001_5fee:
    add d
    ld a, h
    add b
    inc h
    ld a, h
    sub $46
    inc l
    inc h
    ld [hl+], a
    jp nz, $2c6e

    ld h, $8e
    ld a, [$04e8]
    jr z, jr_001_5fee

    ld b, e
    add b
    ld b, h
    jr jr_001_5fcb

    pop bc
    db $fc
    ld a, [hl]
    jr nc, jr_001_6088

    ld a, $13
    stop
    nop
    nop
    jr nc, jr_001_6014

jr_001_6014:
    ld c, $00
    inc bc
    ret nz

    nop
    ldh a, [rP1]
    inc e
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    add h
    nop
    add c
    nop
    jr nz, @+$22

    nop
    nop
    nop
    nop

jr_001_6045:
    ld bc, $00a0
    ld [hl+], a
    nop
    inc bc
    nop
    nop
    ld [$0400], sp
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    ret nz

    ret nz

    adc b
    jr nc, jr_001_6063

    inc c

jr_001_6063:
    ld a, [hl+]
    ld h, c
    ld a, [bc]
    add l
    ld [c], a
    ld b, d
    and [hl]
    add b
    dec d
    ld c, $56
    add b
    jr z, @-$62

    dec d
    ld d, b
    add b
    xor a
    sub d
    ld hl, sp+$12
    ld de, $4e12
    jr nc, jr_001_60c6

    ld [bc], a
    add hl, de
    ldh [$7e], a
    rst $38
    inc de
    dec c
    nop
    nop
    nop
    nop

jr_001_6088:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rra
    ldh [$03], a
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld a, [hl+]
    nop
    nop
    add d
    nop
    nop
    nop
    ld [$0500], sp
    jr z, jr_001_60c1

    nop
    jr nz, jr_001_6045

    ld [$0000], sp
    nop
    nop

jr_001_60c1:
    inc bc
    ldh [rP1], a
    ld b, [hl]
    nop

jr_001_60c6:
    ld [$c17f], sp
    xor b
    rrca
    db $f4
    inc l
    adc h
    add b
    ld b, c
    sbc l
    rst $38
    ld [hl], e
    nop
    cpl
    ld h, b
    dec b
    rst $08
    db $fd
    sbc b
    nop
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld a, a
    rst $38
    ld hl, sp+$0c
    dec c
    nop
    nop
    nop
    nop
    add b
    ld b, b
    inc b
    nop
    ldh [rDIV], a
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_60fc

jr_001_60fc:
    add b
    nop
    ld [$1000], sp
    nop
    ld b, b
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc b
    db $fc
    ld b, b
    call $91b4
    ld a, b
    ld de, $5dd0
    and c
    sbc d
    ld hl, sp+$24
    sub b
    ld c, a
    db $e4
    inc bc
    ret nz

Jump_001_611e:
    dec bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc bc
    ldh [$7c], a
    nop
    nop
    nop
    nop
    rrca
    add c
    ld d, b
    ld c, b
    ld [$0000], sp
    nop
    nop
    ld bc, $22ff
    inc h
    dec b
    add b
    and c
    inc d
    ld a, e
    sub b
    jr c, jr_001_6149

    rst $38
    add b
    ld c, $10
    nop

jr_001_6149:
    nop
    inc b
    inc bc
    rst $38
    rrca
    db $fc
    ld a, a
    ld sp, hl
    rst $38
    ldh [$30], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    rlca
    ld hl, sp+$10
    jr nz, jr_001_61cc

    add b
    nop
    nop
    nop
    rla
    and b
    pop hl
    ret nz

    ld a, b
    ld a, [bc]
    inc d
    rlca
    add b
    pop hl
    ret nz

    nop
    nop
    nop
    inc bc
    add c
    rst $38
    db $e4
    nop
    or b
    inc bc
    add b
    ld b, $00
    rra
    rst $08
    ret nc

    ld [bc], a
    ld b, b
    add hl, bc
    nop

jr_001_6191:
    inc h
    nop
    sub b
    ld [bc], a
    ret nz

    ld c, $00
    jr jr_001_61ba

    ld a, a
    rst $38
    ld a, [bc]
    ld b, $00
    inc bc
    inc b
    ret nz

    jr nc, jr_001_61a4

jr_001_61a4:
    nop
    nop
    nop
    add b
    ld [hl], c
    ld [$0040], sp
    nop
    rst $38
    and b
    inc l
    ld c, $01
    db $fc
    ld b, c
    ldh a, [$03]
    inc bc
    push bc
    ld b, $eb

jr_001_61ba:
    inc c
    ld l, a
    ld l, a
    dec bc
    ld [hl-], a
    inc b
    jr jr_001_61c5

jr_001_61c2:
    inc e
    nop
    rrca

jr_001_61c5:
    ret nz

    ret nz

    and e
    ld h, b
    rst $10
    jr nc, jr_001_61c2

jr_001_61cc:
    or $d0
    ld c, h
    jr nz, @+$1a

    ret nz

    jr c, jr_001_61d4

jr_001_61d4:
    ldh a, [rP1]
    rrca
    rlca
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld e, $00
    inc e
    jr c, @+$0a

    ld [hl], b
    ld [hl], b
    nop
    ldh a, [$e0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_001_620e

    db $10
    ld c, $0e
    add c
    jr jr_001_6191

    cp l
    inc a
    ld b, d
    jr @+$26

    inc h
    inc a
    jr @+$3e

    nop
    inc h
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    rlca

jr_001_620e:
    rlca
    ld [bc], a
    dec b
    inc bc
    nop
    ld [$000f], sp
    nop
    ldh [$e0], a
    db $10

jr_001_621a:
    ldh a, [$08]
    ld hl, sp-$02
    cp $fc
    jr nz, jr_001_621a

    nop
    db $76
    add b
    dec e
    ld b, $1b
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    jr jr_001_6245

    jr jr_001_624b

    inc c
    inc c
    ld c, $f8
    adc b
    ld a, b
    ldh [$e0], a
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr nc, @+$72

    ld h, b
    jr c, jr_001_627d

jr_001_6245:
    ld bc, $0201
    inc bc
    inc b
    rlca

jr_001_624b:
    rlca
    rlca
    ld [bc], a
    dec b
    inc bc
    nop
    nop
    ld bc, $0300
    ldh [$e0], a

jr_001_6257:
    db $10

jr_001_6258:
    ldh a, [$08]
    ld hl, sp-$02
    cp $fc
    jr nz, jr_001_6258

    nop
    ld [hl], b
    add b
    nop
    ldh a, [rP1]
    rlca
    inc bc
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    ld c, $08
    rlca
    rlca
    jr c, jr_001_6257

    jr c, @-$1e

    ldh [$e0], a
    nop
    ret nz

jr_001_627d:
    nop
    and b
    nop
    ld h, b

jr_001_6281:
    ldh [$80], a
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    inc b
    rlca
    xor b
    rrca
    adc b
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    jr nz, jr_001_6281

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld a, a
    inc b
    ccf
    dec bc
    rra
    rlca
    rra
    jr nz, @+$41

    jr nz, jr_001_62ed

    jr c, jr_001_62eb

    nop
    nop
    db $10
    ldh a, [rNR41]
    ld hl, sp-$1c
    ld hl, sp-$34
    ldh [rNR10], a
    ldh a, [$60]
    ld h, b

jr_001_62c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    jr nz, jr_001_62c1

    dec d
    ldh a, [rNR11]
    cp $08
    rrca
    inc b
    rra
    daa
    rra

jr_001_62eb:
    inc sp
    rlca

jr_001_62ed:
    ld [$060f], sp
    ld b, $00
    nop
    nop
    nop
    db $10
    cp $20
    db $fc
    ret nc

    ld hl, sp-$20
    ld hl, sp+$04
    db $fc
    inc b
    inc a
    inc e
    inc e
    nop
    nop
    ld bc, $0201
    inc de
    inc b
    daa
    rlca
    rlca
    ld [bc], a
    dec b
    inc bc
    nop
    ld bc, $0000
    inc bc
    ldh [$e0], a
    ld [de], a
    ld a, [c]

jr_001_6319:
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    jr nz, jr_001_6319

    nop
    db $e3
    nop
    rlca
    db $fc
    nop
    inc bc
    ld b, $07
    ld bc, $0007
    rlca
    nop
    rlca
    nop
    ld c, $1d
    ld de, $0e0e
    ld b, $fc
    nop
    ldh [$c0], a
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    ret nz

    nop
    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    rlca
    rlca
    ld [bc], a
    dec b
    inc bc
    nop
    ld bc, $0000
    nop
    ldh [$e0], a
    ld [de], a
    ld a, [c]

jr_001_635b:
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    jr nz, jr_001_635b

    nop
    db $e3
    nop
    nop
    inc bc
    ld b, $07
    ld bc, $0007
    rrca
    nop
    ld e, $30
    jr z, jr_001_63a2

    jr nc, jr_001_638c

    jr @+$09

    db $fc
    ld b, $fc
    ret nz

    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld h, b
    ldh [$c0], a
    ld [hl], b
    ld [hl], b
    ld a, [de]
    nop
    inc c
    nop
    ld bc, $020d

jr_001_638c:
    ld c, $07
    rra
    inc b
    rra
    ld [$081f], sp
    rra
    ld d, $00
    jr jr_001_6399

jr_001_6399:
    add b
    sbc b
    ld b, b
    ld e, b
    ldh [$f8], a
    jr nz, jr_001_6399

    db $10

jr_001_63a2:
    ld hl, sp+$10
    ldh a, [$08]
    rrca
    inc b
    rrca
    dec bc
    rra
    rlca
    rra
    jr nz, @+$41

    jr nz, jr_001_63ed

    jr c, jr_001_63eb

    nop
    nop
    db $10
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [rNR10]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    inc c
    nop
    ld bc, $020d
    ld c, $07
    rra
    inc b
    rra
    ld [$081f], sp
    rra
    ld d, $00
    jr jr_001_63d9

jr_001_63d9:
    add b
    sbc b
    ld b, b
    ld e, b
    ldh [$f8], a
    jr nz, jr_001_63d9

    db $10
    ld hl, sp+$10
    ldh a, [$08]
    rrca
    inc b
    rlca
    rlca
    rlca

jr_001_63eb:
    dec bc
    rrca

jr_001_63ed:
    ld [$060f], sp
    ld b, $00
    nop
    nop
    nop
    db $10
    ldh a, [rNR41]
    ldh a, [$d0]
    ld hl, sp-$20
    ld hl, sp+$04
    db $fc
    inc b
    inc a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ccf
    ei
    inc h
    db $fd
    ld [hl+], a
    cp $31
    rst $38
    jr z, @+$01

    inc h
    cp $00
    rst $38
    ld [bc], a
    rst $38
    db $fc
    db $db
    inc h
    cp e
    ld b, h
    ld a, e
    adc h
    ld a, e
    sub h
    cp e
    ld h, h
    ei
    ld h, $f7
    add hl, hl
    rst $28
    ld sp, $22ff
    rst $38
    inc h
    ret nz

    ccf
    cp a
    ld b, b
    ld a, a
    nop
    db $db
    inc h
    db $eb
    inc d
    di
    adc h
    ei
    ld b, h
    ei
    inc h
    inc bc
    db $fc
    db $fd
    ld [bc], a
    cp $00
    ld a, a
    nop
    ccf
    ld b, b
    ld bc, $007e
    nop
    di
    inc b
    di
    inc b
    ld [hl], b
    add a
    nop
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ld bc, $007e
    nop
    rst $30
    nop
    di
    inc b
    db $10
    rst $20
    nop
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    nop
    ld a, a
    nop
    nop
    rst $30
    nop
    di
    inc b
    db $10
    rst $20
    nop
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    inc bc
    ld a, h
    nop
    nop
    di
    nop
    di
    inc b
    nop
    rst $30
    nop
    nop
    nop
    ld a, a
    ld b, b
    rst $38
    ccf
    rst $38
    inc h
    ei
    ld [hl+], a
    db $fd
    ld sp, $29fe
    cp $26
    db $fd
    nop
    cp $02
    rst $38
    db $fc
    rst $38
    inc h
    db $db
    ld b, h
    cp e
    adc h

jr_001_64e0:
    ld a, e
    inc d

jr_001_64e2:
    ei
    inc h
    ei
    inc h
    ei
    jr z, jr_001_64e0

    ld sp, $22ef
    rst $38
    daa
    rst $38
    ccf
    ret nz

    ld b, b
    cp a
    nop
    ld a, a
    ld h, h
    db $db
    sub h
    db $eb
    adc h
    di
    ld b, h
    ei
    inc h
    ei
    db $fc
    inc bc
    ld [bc], a
    db $fd
    nop
    cp $02
    ld [bc], a
    inc b
    inc e
    inc e
    jr nz, jr_001_650e

    inc e
    ld e, b

jr_001_650e:
    jr c, jr_001_6510

jr_001_6510:
    inc a
    adc b
    call z, Call_001_6666
    ld [bc], a
    sbc d
    inc b
    inc a
    inc a
    nop
    nop
    jr c, jr_001_653c

    ld a, b
    nop
    jr c, jr_001_6562

    ld l, b
    inc l
    inc l
    nop
    nop
    ld b, b
    nop
    ld e, b
    ld b, b
    inc h
    ld a, [hl]
    dec h
    ld a, a
    dec e
    inc a
    ld c, h
    ld l, h
    ld h, b
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    ld a, [de]
    ld [bc], a
    inc h

jr_001_653c:
    ld a, [hl]
    and h
    cp $b8
    inc a
    ld [hl-], a
    ld [hl], $06
    ld b, $02
    ld [bc], a
    inc b
    inc e
    dec e
    jr nz, @+$05

    ld e, $18
    jr c, jr_001_6550

jr_001_6550:
    inc a
    adc b
    call z, Call_001_6666
    ld [bc], a
    ld a, [de]
    inc b
    inc a
    dec a
    nop
    inc bc
    ld e, $18
    jr c, jr_001_6560

jr_001_6560:
    jr c, jr_001_64e2

jr_001_6562:
    add sp, $4c
    ld c, h
    ld h, [hl]
    nop
    ld b, d
    ld b, d
    jr jr_001_65ad

    inc h
    ld a, [hl]
    inc h
    ld a, [hl]
    inc e
    inc a
    ld c, h
    ld l, h
    ld h, b
    ld h, b
    ld h, [hl]
    nop
    ld b, d
    ld b, d
    jr jr_001_65bd

    inc h
    ld a, [hl]
    inc h
    ld a, [hl]
    jr c, jr_001_65bd

    ld [hl-], a
    ld [hl], $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    jr jr_001_65a5

    jr jr_001_65a7

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add c
    rst $38
    ld a, [hl]
    push hl
    ld b, b
    db $dd
    ld b, h
    db $dd
    ld b, h
    db $fd
    ld e, b
    add c
    nop
    ld a, [hl]
    add c

jr_001_65a5:
    ld [hl], a
    adc b

jr_001_65a7:
    adc b
    rst $38
    db $dd
    ld [hl+], a
    ld [hl+], a
    rst $38

jr_001_65ad:
    ld [hl], a
    adc b
    adc b
    rst $38
    db $dd
    ld [hl+], a
    ld [hl+], a
    rst $38
    add c
    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    push hl
    ld h, [hl]
    db $dd

jr_001_65bd:
    ld h, [hl]
    db $dd
    ld e, d
    db $fd
    ld a, [hl]
    add c
    add c
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr nz, jr_001_65cb

jr_001_65cb:
    ld d, b
    nop
    jr nz, jr_001_65cf

jr_001_65cf:
    nop
    nop
    ld a, [bc]
    ld [bc], a
    dec d
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    call nz, $08fc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    pop bc
    add c
    ldh [$9f], a
    ld h, b
    ld e, a
    ld [c], a
    ld a, $f2
    ld e, $fe
    ld c, $7c
    add b
    nop
    db $fc
    add $fe
    ld [hl], $f4
    inc bc
    ldh [rP1], a
    nop
    ld d, b
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp h
    ld h, d
    ld a, [hl]
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add c
    pop bc
    add c
    ldh [$9f], a
    ld h, b
    ld e, a
    ld [hl], c
    rra
    reti


    cpl
    ld a, a
    rlca
    ld e, $e0
    nop
    db $fc
    add $fe
    ld [hl], $f4
    inc bc
    ldh [rP1], a
    nop
    nop
    ld b, [hl]
    jr jr_001_666a

    inc c
    inc bc
    ld b, $18
    sub d
    cp [hl]
    adc e
    ld hl, sp+$00
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ld c, h
    jr nc, jr_001_669b

    ld c, $00
    sub d
    cp [hl]
    adc e
    ld hl, sp+$00
    nop
    nop

Call_001_6666:
    rst $38
    nop
    rst $38
    nop

jr_001_666a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, $26
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld [hl-], a
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    inc c
    inc c
    inc e
    inc e
    inc c
    inc c

jr_001_669b:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ccf
    ccf
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    rlca
    rlca
    ld e, $1e
    inc a
    inc a
    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    ld b, $06
    inc c
    inc c
    ld e, $1e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld c, $0e
    ld e, $1e
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld a, a
    ld a, a
    ld b, $06
    ld b, $06
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld e, $1e
    jr nc, jr_001_6719

    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld b, $06
    inc c
    inc c
    jr jr_001_6717

    jr jr_001_6719

    jr jr_001_671b

    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, $3e

jr_001_6717:
    ld h, e
    ld h, e

jr_001_6719:
    ld h, e
    ld h, e

jr_001_671b:
    ccf
    ccf
    inc bc
    inc bc
    ld b, $06
    inc a
    inc a
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    jr jr_001_6751

    inc a
    inc a
    inc h
    inc h
    inc h
    inc h
    inc a
    inc a
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6751:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld a, $3e
    ld d, l
    ld d, l
    ld c, c
    ld c, c
    ld [hl-], a
    ld [hl-], a
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld d, c
    ld d, c
    jr nz, jr_001_67c3

    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    ld b, c
    ld b, c
    ld bc, $0201
    ld [bc], a
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc b
    inc b
    jr jr_001_67d7

    inc h
    inc h
    ld b, a
    ld b, a

jr_001_67c3:
    nop
    nop
    ld de, $7d11
    ld a, l
    db $10
    db $10
    ld a, $3e
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld [hl-], a
    ld [hl-], a
    nop
    nop
    ld [hl+], a
    ld [hl+], a

jr_001_67d7:
    ld a, c
    ld a, c
    dec h
    dec h
    dec h
    dec h
    inc h
    inc h
    ld b, h
    ld b, h
    ld c, h
    ld c, h
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    ld [$7f08], sp
    ld a, a
    inc b
    inc b
    ld b, b
    ld b, b
    ld a, $3e
    nop
    nop
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_001_681d

    db $10
    db $10
    ld [$0408], sp
    inc b
    nop
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld e, a
    ld e, a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, h
    ld c, h
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop

jr_001_681d:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ccf
    ccf
    nop
    nop
    ld [$7f08], sp
    ld a, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, $3e
    nop
    nop
    jr nz, jr_001_6857

    jr nz, jr_001_6859

    jr nz, jr_001_685b

    ld hl, $2121
    ld hl, $2222
    inc e
    inc e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, a
    ld c, $0e
    ld [de], a
    ld [de], a
    ld c, $0e
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    nop
    nop
    ld [hl+], a
    ld [hl+], a

jr_001_6857:
    ld [hl+], a
    ld [hl+], a

jr_001_6859:
    ld a, a
    ld a, a

jr_001_685b:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_001_6881

    rra
    rra
    nop
    nop
    inc a
    inc a
    ld [$1008], sp
    db $10
    ld a, a
    ld a, a
    inc c
    inc c
    db $10
    db $10
    ld e, $1e
    nop
    nop
    jr nz, jr_001_6897

    ld a, [hl]
    ld a, [hl]
    jr nz, @+$22

    cpl
    cpl
    jr nz, jr_001_689f

    ld c, b
    ld c, b

jr_001_6881:
    ld b, a
    ld b, a
    nop
    nop
    db $10
    db $10
    ld a, a
    ld a, a
    db $10
    db $10
    ld e, $1e
    ld hl, $0121
    ld bc, $1e1e
    nop
    nop
    nop
    nop

jr_001_6897:
    ld a, [hl]
    ld a, [hl]
    ld bc, $0101
    ld bc, $0101

jr_001_689f:
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, $06
    ld [$1008], sp
    db $10
    db $10
    db $10
    ld c, $0e
    nop
    nop
    jr nz, jr_001_68d7

    ld h, $26
    jr jr_001_68d3

    jr nz, jr_001_68dd

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, $3e
    nop
    nop
    jr nz, jr_001_68e7

    ld a, b
    ld a, b
    inc hl
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld l, $2e
    ld c, e
    ld c, e
    ld c, l
    ld c, l

jr_001_68d3:
    nop
    nop
    ld b, b
    ld b, b

jr_001_68d7:
    ld c, a
    ld c, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_001_68dd:
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, a
    ld c, a
    nop
    nop
    inc h
    inc h

jr_001_68e7:
    ld a, $3e
    dec h
    dec h
    ld d, l
    ld d, l
    ld c, c
    ld c, c
    ld d, a
    ld d, a
    ld h, $26
    nop
    nop
    jr nz, jr_001_6917

    ld l, [hl]
    ld l, [hl]
    ld sp, $2131
    ld hl, $6767
    add hl, hl
    add hl, hl
    ld h, $26
    nop
    nop
    inc e
    inc e
    ld a, [hl+]
    ld a, [hl+]
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld d, c
    ld d, c
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    nop
    nop
    ld b, d
    ld b, d

jr_001_6917:
    ld e, a
    ld e, a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld c, [hl]
    ld c, [hl]
    ld d, e
    ld d, e
    ld c, l
    ld c, l
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [de], a
    ld [de], a
    inc hl
    inc hl
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, h
    jr c, jr_001_696b

    nop
    nop
    inc e
    inc e
    inc b
    inc b
    ld [$2908], sp
    add hl, hl
    dec h
    dec h
    ld b, l
    ld b, l
    jr jr_001_695b

    nop
    nop
    nop
    nop
    db $10
    db $10
    jr z, jr_001_6973

    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld bc, $0101
    ld bc, $0000
    ld e, a
    ld e, a
    ld b, d
    ld b, d
    ld e, a
    ld e, a

jr_001_695b:
    ld b, d
    ld b, d
    ld c, [hl]
    ld c, [hl]
    ld d, e
    ld d, e
    ld c, l
    ld c, l
    nop
    nop
    inc b
    inc b
    ccf
    ccf
    inc b
    inc b

jr_001_696b:
    ccf
    ccf
    inc b
    inc b
    ld a, $3e
    add hl, sp
    add hl, sp

jr_001_6973:
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ccf
    ccf
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc h
    inc h
    nop
    nop
    db $10
    db $10
    ld a, l
    ld a, l
    ld de, $3011
    jr nc, jr_001_69df

    ld d, c
    ld sp, $1e31
    ld e, $00
    nop
    inc h
    inc h
    ld a, $3e
    dec h
    dec h
    ld d, l
    ld d, l
    ld c, c
    ld c, c
    ld d, c
    ld d, c
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    ld a, h
    ld a, h
    ld hl, $2121
    ld hl, $1e1e
    nop
    nop
    inc e
    inc e
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld e, [hl]
    ld e, [hl]
    ld h, c
    ld h, c
    ld bc, $0e01
    ld c, $00
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld d, d
    ld d, d
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    jr jr_001_69eb

    nop
    nop
    ld a, $3e
    inc c
    inc c
    db $10
    db $10
    ld a, $3e
    ld b, c
    ld b, c

jr_001_69df:
    add hl, de
    add hl, de
    ld e, $1e
    nop
    nop
    jr nz, jr_001_6a07

    ld l, [hl]
    ld l, [hl]
    ld [hl-], a
    ld [hl-], a

jr_001_69eb:
    ld [hl+], a
    ld [hl+], a
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    nop
    nop
    ld a, $3e
    inc c
    inc c
    db $10
    db $10
    ld a, $3e
    ld b, c
    ld b, c
    ld bc, $1e01
    ld e, $00
    nop
    inc h
    inc h

jr_001_6a07:
    ld l, $2e
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    ld de, $1611
    ld d, $10
    stop
    nop
    ld b, h
    ld b, h
    ld e, [hl]
    ld e, [hl]
    ld h, l
    ld h, l
    ld b, l
    ld b, l
    ld e, [hl]
    ld e, [hl]
    inc b
    inc b
    jr @+$1a

    nop
    nop
    inc b
    inc b
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc a
    inc a
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    add hl, sp
    nop
    nop
    jr nz, jr_001_6a57

    ld l, [hl]
    ld l, [hl]
    ld sp, $2131
    ld hl, $6161
    ld hl, $2221
    ld [hl+], a
    nop
    nop
    ld [$7e08], sp
    ld a, [hl]
    db $10
    db $10
    rrca
    rrca
    inc d
    inc d
    jr nz, jr_001_6a71

    ld e, $1e
    nop
    nop
    db $10
    db $10

jr_001_6a57:
    db $10
    db $10
    jr nz, jr_001_6a7b

    jr c, jr_001_6a95

    add hl, hl
    add hl, hl
    ld c, c
    ld c, c
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld c, b
    ld c, b
    jr nz, jr_001_6a8d

    nop
    nop
    nop
    nop

jr_001_6a71:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_6a99

    ld d, b
    ld d, b

jr_001_6a7b:
    jr nz, jr_001_6a9d

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    jr jr_001_6ac6

    inc [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d

jr_001_6a8d:
    ld a, a
    ld a, [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    nop
    nop

jr_001_6a95:
    ld a, [hl]
    ld a, h
    ld [hl], e
    ld h, d

jr_001_6a99:
    ld [hl], e
    ld h, d
    ld a, [hl]
    ld a, h

jr_001_6a9d:
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, [hl]
    ld a, h
    nop
    nop
    ld e, $1c
    dec sp
    ld [hl-], a
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    dec sp
    ld [hl-], a
    ld e, $1c
    nop
    nop
    ld a, h
    ld a, b
    db $76
    ld h, h
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    db $76
    ld h, h
    ld a, h
    ld a, b
    nop
    nop
    ld a, a

jr_001_6ac6:
    ld a, [hl]
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld a, [hl]
    ld a, h
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld a, a
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, [hl]
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld a, [hl]
    ld a, h
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    nop
    nop
    ld a, $3c
    ld [hl], e
    ld h, d
    ld [hl], b
    ld h, b
    ld [hl], a
    ld h, [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, $3c
    nop
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, a
    ld a, [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    nop
    nop
    ld a, $3c
    inc e
    jr jr_001_6b26

    jr jr_001_6b28

    jr jr_001_6b2a

    jr jr_001_6b2c

    jr jr_001_6b50

    inc a
    nop
    nop
    rra
    ld e, $0e
    inc c
    ld c, $0c
    ld c, $0c
    ld c, $0c
    ld l, [hl]
    ld c, h
    inc a
    jr c, jr_001_6b24

jr_001_6b24:
    nop
    ld [hl], e

jr_001_6b26:
    ld h, d
    ld [hl], a

jr_001_6b28:
    ld h, [hl]
    ld a, [hl]

jr_001_6b2a:
    ld l, h
    ld a, h

jr_001_6b2c:
    ld a, b
    ld a, [hl]
    ld a, h
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    nop
    nop
    jr c, jr_001_6b67

    jr c, jr_001_6b69

    jr c, jr_001_6b6b

    jr c, jr_001_6b6d

    jr c, jr_001_6b6f

    jr c, jr_001_6b71

    ccf
    ld a, $00
    nop
    ld [hl], e
    ld h, d
    ld [hl], a
    db $76
    ld a, a
    ld a, [hl]
    ld a, a
    ld l, d
    ld [hl], e
    ld h, d
    ld [hl], e

jr_001_6b50:
    ld h, d
    ld [hl], e
    ld h, d
    nop
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld [hl], d
    ld a, e
    ld a, d
    ld a, a
    ld l, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    nop
    nop
    ld a, $3c

jr_001_6b67:
    ld [hl], e
    ld h, d

jr_001_6b69:
    ld [hl], e
    ld h, d

jr_001_6b6b:
    ld [hl], e
    ld h, d

jr_001_6b6d:
    ld [hl], e
    ld h, d

jr_001_6b6f:
    ld [hl], e
    ld h, d

jr_001_6b71:
    ld a, $3c
    nop
    nop
    ld a, [hl]
    ld a, h
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, [hl]
    ld a, h
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    nop
    nop
    ld a, $3c
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, a
    ld l, d
    db $76
    ld h, h
    ccf
    ld a, [hl-]
    nop
    nop
    ld a, [hl]
    ld a, h
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, b
    db $76
    ld h, h
    ld [hl], e
    ld h, d
    nop
    nop
    ld a, $3c
    ld [hl], e
    ld h, d
    ld [hl], b
    ld h, b
    ld a, $3c
    rlca
    ld b, $67
    ld b, [hl]
    ld a, $3c
    nop
    nop
    ld a, a
    ld a, [hl]
    inc e
    jr jr_001_6bd6

    jr jr_001_6bd8

    jr jr_001_6bda

    jr @+$1e

    jr @+$1e

    jr jr_001_6bc4

jr_001_6bc4:
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, $3c
    nop
    nop
    ld [hl], e

jr_001_6bd6:
    ld h, d
    ld [hl], e

jr_001_6bd8:
    ld h, d
    ld [hl], e

jr_001_6bda:
    ld h, d
    ld a, $34
    ld a, $34
    inc e
    jr jr_001_6bfe

    jr jr_001_6be4

jr_001_6be4:
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, e
    ld l, d
    ld a, a
    ld a, [hl]
    ld [hl], a
    db $76
    ld [hl], e
    ld h, d
    nop
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, $34
    inc e
    jr @+$40

jr_001_6bfe:
    inc [hl]
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    nop
    nop
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld [hl], e
    ld h, d
    ld a, $3c
    inc e
    jr @+$1e

    jr @+$1e

    jr jr_001_6c14

jr_001_6c14:
    nop
    ld a, a
    ld a, [hl]
    rlca
    ld b, $0e
    inc c
    inc e
    jr jr_001_6c56

    jr nc, jr_001_6c90

    ld h, b
    ld a, a
    ld a, [hl]
    nop
    nop
    nop
    nop
    jr jr_001_6c41

    jr jr_001_6c43

    jr jr_001_6c45

    jr jr_001_6c47

    jr jr_001_6c49

    nop
    nop
    jr jr_001_6c4d

    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld c, $0e
    jr jr_001_6c57

    nop
    nop

jr_001_6c41:
    jr jr_001_6c5b

jr_001_6c43:
    nop
    nop

jr_001_6c45:
    nop
    nop

jr_001_6c47:
    nop
    nop

jr_001_6c49:
    db $10
    db $10
    jr jr_001_6c65

jr_001_6c4d:
    inc e
    inc e
    jr jr_001_6c69

    db $10
    stop
    nop
    nop

jr_001_6c56:
    nop

jr_001_6c57:
    nop
    nop
    nop
    nop

jr_001_6c5b:
    ld a, h
    ld a, h
    jr c, jr_001_6c97

    db $10
    stop
    nop
    nop
    nop

jr_001_6c65:
    nop
    nop
    nop
    nop

jr_001_6c69:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$5c08], sp
    ld e, h
    ld l, d
    ld l, d
    ld c, d

jr_001_6c90:
    ld c, d
    inc e
    inc e
    ld [$0008], sp
    nop

jr_001_6c97:
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    jr nc, jr_001_6ccf

    ld c, b
    ld c, b
    ld [$1008], sp
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [$1008], sp
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld b, b
    ld a, a
    add b
    ret nz

    adc a
    rst $08
    sub b
    ret nc

jr_001_6ccf:
    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ld [bc], a
    cp $01
    inc bc
    pop af
    di
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    adc a
    rst $08
    add b
    ret nz

    ld b, b
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop

jr_001_6d12:
    rst $38
    rst $38
    rst $38
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    pop af
    di
    ld bc, $0203
    cp $fc
    db $fc
    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    sub b
    ret nc

    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr jr_001_6d67

    db $10
    db $10
    ld [hl], b
    ld [hl], b
    ld l, b
    ld l, b
    ld a, a
    nop
    ccf
    ld b, b
    nop
    ld a, a
    ld bc, $de01
    ld [bc], a
    call z, $0914
    reti


    inc de
    inc de
    ld a, a
    inc a

jr_001_6d67:
    ld b, e
    ld b, d
    sbc c
    sbc c
    inc h
    inc h
    ld e, [hl]
    ld b, d
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld a, a
    nop
    ccf
    ld b, b
    nop
    ld a, a
    add b
    add b
    ld e, a
    ld b, b
    cpl
    jr nc, jr_001_6d12

    sbc a
    ret z

    ret z

    ld a, a
    nop
    ccf
    ld b, b
    rrca
    ld a, a
    db $10
    db $10
    db $d3
    inc de
    db $d3
    ld [de], a
    ld [de], a
    db $d3
    inc de
    inc de
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $18
    ld b, $f9
    ld sp, hl
    nop
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    db $fc
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    db $fc
    rst $18
    nop
    ldh a, [rIE]
    ld [$7f08], sp
    nop
    ccf
    ld b, e
    inc e
    ld a, h
    daa
    daa
    db $dd
    dec e
    call z, $0214
    sbc $3e
    ld a, $07
    rlca
    ld hl, sp-$08
    rlca
    rlca
    db $e4
    db $e4
    rst $20
    inc h
    rst $20
    and h
    ld h, l
    ld h, a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    ld [$fff0], sp
    sub b
    sub b
    sbc a
    sub b
    sbc a
    sub b
    jr nz, @+$41

    ld a, h
    ld a, h
    ld h, h
    inc h
    ld c, h
    ld c, h
    sub h
    sbc h
    ld h, h
    ld h, h
    call c, $cc04
    inc d
    dec b
    db $dd
    ld [$0008], sp
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop

jr_001_6dff:
    rst $38
    rst $38
    nop
    rst $18
    rst $38
    rst $38
    daa
    inc h
    inc sp
    ld [hl-], a
    add hl, hl
    add hl, sp
    ld h, $26
    ccf
    jr nz, jr_001_6dff

    ldh a, [rP1]
    rst $18
    ldh [$e0], a
    ld [hl], e
    inc de
    ld [hl-], a
    ld d, d
    ld [de], a
    ld [hl], d
    ld [de], a
    ld [de], a
    jp nc, $d212

    ld [de], a
    ld h, $e6
    ld h, $26
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld a, c
    ld a, c
    ld c, c
    ld c, c
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    ld a, c
    ld c, c
    ld c, c
    rst $38
    ld hl, sp+$07
    inc b
    db $e4
    rst $20
    inc h
    inc h
    rst $20
    db $e4
    rlca
    inc b
    db $e4
    rst $20
    inc h
    inc h
    ld b, b
    ld b, b
    ccf
    ld a, a
    ld [bc], a
    ld a, [hl]
    inc b
    inc b
    reti


    add hl, bc
    ret nc

    db $10
    inc l
    db $ec
    ld d, h
    ld d, h
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    and l
    and l
    rst $20
    rst $20
    nop
    nop
    rst $20
    rst $20
    and l
    and l
    inc bc
    ld [bc], a
    rst $38
    db $fc
    ld b, b
    ld a, a
    jr nz, jr_001_6e8d

    sbc a
    sub b
    rrca
    ld [$3734], sp
    ld a, [hl+]
    ld a, [hl+]
    ld a, b
    ld [$5030], sp
    inc h
    ld h, h
    ld c, h
    ld c, h
    sbc h
    sub h
    db $ec
    ld [hl], h
    inc bc
    rst $18
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add b
    cp $80
    add b

jr_001_6e8d:
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    db $10
    rra
    db $10
    sub b
    sbc a
    sub b
    sub b
    sbc a
    sub b
    rra
    db $10
    ldh [rIE], a
    nop
    nop
    ld h, [hl]
    ld h, $4a
    ld c, [hl]
    ld c, e
    ld c, e
    ld d, h
    ld d, h
    sbc a
    sub e
    xor a
    or b
    ld b, b
    rst $18
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld sp, hl
    ld sp, hl
    ret


    add hl, de
    add hl, bc

jr_001_6ec2:
    reti


    ld b, $06
    rst $20
    db $e4
    rlca
    inc b
    db $fc
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    db $fc
    rst $08
    stop
    rst $18
    nop
    nop
    cp h
    and h
    db $fc
    call nz, Call_001_7c04
    inc b
    inc b
    call c, $cc04
    inc d
    inc bc
    rst $18
    nop
    nop
    rst $20
    rst $20
    nop
    nop
    rst $20
    rst $20
    and l
    and l
    rst $20
    rst $20
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    dec a
    dec h
    ccf
    inc hl
    jr nz, jr_001_6f3a

    jr nz, jr_001_6f1d

    ccf
    jr nz, jr_001_6f2f

    jr nc, jr_001_6ec2

    rst $18
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, @+$72

    ld c, a
    ld h, a
    ld e, a
    ld l, a
    ld e, b
    ld l, b
    ld e, a
    ld l, b
    ld e, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38

jr_001_6f1d:
    rst $38
    rst $38
    rst $08
    stop
    rst $18
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    db $fc
    inc b
    ld c, $f2
    and $fa

jr_001_6f2f:
    sub $1a
    ld d, $da
    ld d, $1a
    ld l, a
    ld e, b
    ld l, a
    ld e, b
    ld l, b

jr_001_6f3a:
    ld e, a
    ld l, b
    ld e, b
    ld l, a
    ld e, b
    ld l, a
    ld e, b
    ld l, b
    ld e, a
    ld l, b
    ld e, b
    db $76
    ld a, [de]
    ld [hl], $5a
    ld d, $7a
    ld d, $1a
    sub $1a
    sub $1a
    ld d, $da
    ld d, $1a
    ld l, a
    ld e, b
    ld l, a
    ld e, b
    ld l, b
    ld e, a
    ld h, a
    ld e, a
    ld [hl], b
    ld c, a
    ccf
    jr nz, jr_001_6f81

    rra
    nop
    nop
    ld a, a
    nop
    ccf
    ld b, b
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    db $76
    ld a, [de]
    ld [hl], $5a
    ld d, $7a
    and $fa
    ld c, $f2
    db $fc
    inc b

jr_001_6f81:
    ld hl, sp-$08
    nop
    nop
    ld a, a
    nop
    ccf
    ld b, b
    nop
    ld a, a
    nop
    nop
    rst $18
    nop
    rst $08
    stop
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    db $dd
    inc b
    dec e
    nop
    rra
    inc b
    dec e
    inc b
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    cp e
    adc b
    cp e
    adc b
    cp e
    adc b
    cp e
    adc b
    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    sbc e
    ld c, b
    db $db
    xor b
    ei
    adc b
    cp e
    adc b
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    or a
    sub c
    or a
    ld hl, $91e7
    or a
    sub c
    or a
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0973
    ld a, e
    dec d
    ld a, a
    ld de, $1177
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, $10
    ld [hl], b
    ld de, $1177
    ld [hl], e
    ld [bc], a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0007
    rlca
    ld bc, $0107
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rst $00
    ld [hl+], a
    ld l, [hl]
    ld b, b
    rst $08
    ld [hl+], a
    ld l, [hl]
    ld [hl+], a
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    sbc a
    ld b, h
    db $dd
    ld b, c
    rst $18
    ld b, h
    db $dd
    ld b, c
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, $89
    cp e
    ld [bc], a
    ld a, $89
    cp e
    ld [bc], a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [hl], a
    db $10
    ld [hl], c
    db $10
    ld [hl], c
    db $10
    ld [hl], c
    db $10
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh a, [rLCDC]
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, $09
    dec sp
    ld [bc], a
    ld a, $08
    jr c, jr_001_707a

    jr c, jr_001_7074

jr_001_7074:
    nop
    nop
    nop
    nop
    nop
    inc b

jr_001_707a:
    inc a
    ld [de], a
    db $76
    ld [de], a
    db $76
    ld [de], a
    db $76
    inc b
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    and $12
    or $2a
    cp $22
    xor $22
    and $00
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    and $14
    ld a, h
    ld [$0838], sp
    jr c, jr_001_70aa

    jr c, jr_001_70a4

jr_001_70a4:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_001_70aa:
    ld e, $09
    dec sp
    ld [$0938], sp
    dec sp
    ld [bc], a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    inc a
    ld [de], a
    db $76
    ld [bc], a
    ld a, [hl]
    ld [de], a
    db $76
    ld [de], a
    halt
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    and $12
    or $2a
    cp $22
    xor $22
    and $00
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    xor $14
    ld a, h
    ld [$0838], sp
    jr c, @+$0a

    jr c, jr_001_70e4

jr_001_70e4:
    nop
    nop
    nop
    nop
    nop
    ld [$2479], sp
    db $ed
    inc h
    db $ed
    inc h
    db $ed
    ld [$0079], sp
    nop
    nop
    nop
    nop
    nop
    ld b, h
    call z, $ec24
    ld d, h
    db $fc
    ld b, h
    call c, $cc44
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$083b], sp
    dec sp
    ld [$083b], sp
    dec sp
    ld [$003b], sp
    nop
    nop
    nop
    nop
    nop
    adc b
    sbc c
    ld c, b
    db $db
    xor b
    ei
    adc b
    cp e
    adc b
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$1e

    sub b
    or b
    add b
    add b
    sub b
    or b
    ld [hl+], a
    and $00
    nop
    ld e, $1e
    ccf
    ld hl, $4c7f
    ld a, a
    ld d, b
    ld a, a
    ld d, d
    ld a, a
    ld c, h
    ccf
    ld hl, $1e1e
    nop
    nop
    nop
    nop
    add b
    add b
    add b

jr_001_714c:
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    db $10

jr_001_7158:
    ld sp, $7311
    ld de, $1033

jr_001_715e:
    ld sp, $3010
    ld de, $1033
    ld sp, $0000
    jr nz, jr_001_714c

    ld [de], a
    db $76
    ld [de], a
    db $76
    db $10
    di
    ld [de], a
    db $76
    ld [de], a
    db $76
    jr nz, jr_001_7158

    nop
    nop
    ld b, b
    rst $00
    inc h
    db $ed
    jr nz, jr_001_715e

    ld b, b
    jp $e120


    inc h
    db $ed
    ld b, b
    rst $00
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld b, b
    pop bc
    ld b, b
    pop bc
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    ld b, b
    rst $00
    ld b, h
    call $cd44
    ld b, b
    rst $00
    ld b, b
    pop bc
    ld b, h
    call $c740
    nop
    nop
    add c
    adc a
    ld c, b
    db $db
    ld c, b
    db $db
    ld b, c
    rst $08
    ld c, b
    db $db
    ld c, b
    db $db
    add c
    adc a
    nop
    nop
    ld [bc], a
    ld e, $91
    or a
    sub c
    or a
    ld bc, $811f
    add a
    sub c
    or a
    ld [bc], a
    ld e, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7225

    inc h
    ld [hl], $24
    ld [hl], $38
    inc a
    jr nz, jr_001_7221

    jr nz, jr_001_7223

    nop
    nop
    nop
    nop
    sub c
    reti


    sub d
    db $db
    sub c
    reti


    sub b
    ret c

    sub d
    db $db
    ld h, c
    ld [hl], c
    nop
    nop
    nop
    nop
    adc c
    call $0d09
    adc a
    rst $08
    ld c, c
    ld l, l
    ld c, c
    ld l, l
    adc c
	db $cd, $00, $00
    nop
    nop
    ld b, $87
    ld [$068c], sp
    add a
    ld bc, $0981
    adc l

jr_001_7221:
    ld b, $87

jr_001_7223:
    nop
    nop

jr_001_7225:
    nop
    nop
    ld a, h
    ld a, [hl]
    db $10
    jr jr_001_723c

    jr jr_001_723e

    sbc b
    db $10
    sbc b
    db $10
    jr jr_001_7234

jr_001_7234:
    nop
    nop
    nop
    ld h, e
    ld [hl], e
    sub d
    db $db
    sub d

jr_001_723c:
    db $db
    di

jr_001_723e:
    ei
    sub d
    db $db
    sub d
    db $db
    nop
    nop
    nop
    nop
    sbc a
    rst $18
    ld b, h
    ld h, [hl]
    ld b, h
    ld h, [hl]
    add h
    add $44
    ld h, [hl]
    ld b, h
    ld h, [hl]
    nop
    nop
    nop
    nop
    add hl, bc
    adc l
    add hl, bc
    dec c
    ld c, $0f
    add hl, bc
    dec c
    add hl, bc
    dec c
    add hl, bc
    dec c
    nop
    nop
    nop
    nop
    inc a
    cp [hl]
    jr nz, @-$4e

    jr c, jr_001_72a9

    jr nz, @-$4e

    jr nz, jr_001_7221

    inc a
    cp [hl]
    nop
    nop
    nop
    nop
    adc b
    call z, Call_001_7850

jr_001_727b:
    jr nz, jr_001_72ad

    jr nz, @+$32

    jr nz, jr_001_72b1

    jr nz, jr_001_72b3

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$0e0f], sp
    rrca
    dec c
    dec b
    ld b, $02
    inc bc
    dec e
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_001_727b

    db $10
    ldh a, [rSVBK]
    ldh a, [$b0]
    and b
    ld h, b
    ld b, b
    ret nz

    cp b
    jr nz, jr_001_72e6

    ld [hl], a
    rla

jr_001_72a9:
    ld h, b
    rrca
    nop
    rrca

jr_001_72ad:
    nop
    ld e, $00
    inc e

jr_001_72b1:
    jr c, jr_001_72bb

jr_001_72b3:
    ld [hl], b
    ld [hl], b
    inc b
    call c, $e8ee
    ld b, $f0

jr_001_72bb:
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_001_72de

    db $10
    ld c, $0e
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rrca

jr_001_72cc:
    rrca
    rrca
    ld [bc], a
    dec b
    nop
    inc bc
    nop
    nop
    rrca
    ret nz

    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_001_72cc

    ldh a, [$f0]

jr_001_72de:
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    nop
    ldh a, [rNR41]

jr_001_72e6:
    ccf
    ld [hl], a
    rla
    ld h, b
    rrca
    nop
    rrca
    nop
    ld e, $00
    inc e
    jr c, jr_001_72fb

    ld [hl], b
    ld [hl], b
    inc b
    db $fc
    xor $e8
    ld b, $f0

jr_001_72fb:
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, @+$1e

    db $10
    ld c, $0e
    inc b
    rra
    ld [$003f], sp
    scf
    ld [bc], a
    dec l
    nop
    ld c, a
    nop
    rlca
    ld bc, $0303
    inc bc
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [$f0], a
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b

jr_001_7322:
    add b
    ret nz

    ret nz

    rlca
    inc bc
    rrca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    ld a, [bc]
    rlca
    rlca
    ld b, b
    ret nz

    ret nz

    add b
    ldh [$80], a
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    add b
    nop
    jr jr_001_734c

    rra
    ld [$003f], sp

jr_001_734c:
    scf
    ld [bc], a
    ld l, l
    nop
    rrca
    nop
    rlca
    dec b
    rlca
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [$f0], a
    ld b, b
    ldh [rP1], a
    ret nz

    nop
    add b
    add b
    rrca
    rrca
    dec bc
    dec de
    scf
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc c
    nop
    jr jr_001_7383

    inc c
    inc c
    ret nc

    ret nz

    ret c

    ldh [$80], a
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    nop
    ret nz

    add b

jr_001_7383:
    ld h, b
    ld h, b
    nop
    ld bc, $0701
    nop
    rrca
    nop
    rra
    rlca
    dec e
    rrca
    nop
    rlca
    nop
    inc bc
    inc bc
    nop
    add b
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh [$c0], a
    jr nc, @-$3e

    jr nc, jr_001_7322

    ld d, b
    nop
    adc b
    rlca
    rlca
    rrca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    inc bc
    ld b, $00
    inc c
    ld [$0606], sp
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b

jr_001_73bd:
    ret nz

    ret nz

    ld l, b
    ld [$3030], sp
    nop
    nop
    ld b, b
    nop
    ld b, a
    ld b, a
    ld [$308f], sp
    ccf
    rra
    rra
    cp a
    inc b
    rst $18
    ld b, b
    rst $00
    ld [hl], b
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_001_73bd

    ldh [$e0], a
    ld b, b
    and b
    ret nz

    nop
    add b
    ld b, b
    ld b, b
    ld a, a
    nop
    ccf
    inc c
    rrca
    inc bc
    ccf
    nop
    ld a, a
    nop
    jr c, jr_001_742e

    inc c
    ld a, b
    ld a, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    ret nz

    nop
    ldh [rP1], a
    ldh a, [$3c]
    inc c
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7449

    ld l, l
    ld e, l
    rst $18
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    or b
    ld [hl], b
    ld hl, sp-$08
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    ccf
    rra

jr_001_742e:
    rla
    rrca
    rrca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7449:
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec c
    dec bc
    dec de
    rla
    rra
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    or [hl]
    xor [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rra
    rla
    rrca
    dec bc
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [hl], $2e
    ld l, l
    ld e, l
    ld a, [hl]
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ret c

    cp b
    db $fc
    ld a, h
    db $fc
    db $fc
    ld a, a
    ld e, a
    ccf
    cpl
    ld e, $1e
    dec c
    add hl, bc
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7505

    ld l, h
    ld e, h
    ret c

    cp b
    db $fc
    cp h
    cp $be
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_001_7515

    ld l, h
    ld e, h
    cp $be
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld a, [hl]
    ld e, [hl]
    inc a
    inc a
    jr jr_001_74fb

    inc c
    inc c
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]

jr_001_74fb:
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7505:
    nop
    db $10
    jr z, jr_001_7529

    ld de, $0c55

jr_001_750c:
    ld a, [de]
    rlca

jr_001_750e:
    dec b
    rlca
    ld a, h
    ld c, $f9
    inc e
    di

jr_001_7515:
    nop
    ld [$1414], sp
    adc b
    xor d
    jr nc, jr_001_7575

    ldh [$a0], a
    ld c, $f8
    inc e
    di
    jr c, jr_001_750c

    jr c, jr_001_750e

    ld [hl], b
    rst $08

jr_001_7529:
    pop hl

jr_001_752a:
    sbc a
    jp $873e


    ld a, h
    ld c, $f9
    inc e
    di
    jr c, jr_001_759c

    ld [hl], b
    rst $08
    pop hl
    sbc a
    jp $873e


    ld a, h
    ld c, $f9
    inc e
    di
    jr c, jr_001_752a

    ld [hl], b
    adc $ff
    nop
    add c
    nop
    xor a
    ld l, $eb
    ld l, d
    xor e
    ld a, [hl+]
    xor a
    ld l, $81
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    rst $28
    xor $ab
    xor d
    xor e
    xor d
    rst $28
    xor $81
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    xor a
    ld l, $eb
    ld l, d
    xor e
    ld a, [hl+]
    xor a
    ld l, $81
    nop
    rst $38
    nop

jr_001_7575:
    rst $38
    nop
    add c
    nop
    rst $28
    xor $ab
    xor d
    xor e
    xor d
    rst $28
    xor $81
    nop
    rst $38
    nop
    ld bc, $0003
    rlca
    nop
    rrca
    rlca
    ld a, [bc]
    inc bc
    inc c
    ld bc, $0706
    rlca
    rrca
    rrca
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$e0]

jr_001_759c:
    ld d, b
    ret nz

    jr nc, @-$7e

    ld l, b
    ldh [$e0], a
    ldh a, [$f0]
    dec hl
    dec de
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0606
    ret nz

    ret nc

    ldh a, [$c0]
    ldh [$e0], a
    ldh [$c0], a
    ld h, b
    nop
    jr nc, jr_001_75c1

jr_001_75c1:
    jr nc, jr_001_75e3

    jr jr_001_75dd

    jr nz, jr_001_75cd

    ld h, $2f
    rrca
    db $10
    ld b, $09

jr_001_75cd:
    add hl, bc
    rrca
    ld b, $0f
    inc bc
    ld [$181f], sp
    inc b
    rra
    ld [$003f], sp
    scf
    ld [bc], a
    dec l

jr_001_75dd:
    nop
    ld c, a
    nop
    rlca
    dec b
    rlca

jr_001_75e3:
    rrca
    rrca
    dec bc
    dec de
    scf
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    ld a, [bc]
    rlca
    rlca
    ld bc, $0207
    rrca
    nop
    dec c
    nop
    dec bc
    nop
    inc de
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    ld b, $0d
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld [bc], a
    ld bc, $0001
    inc bc
    ld bc, $0007
    ld b, $00
    dec b
    nop
    add hl, bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    jp $e605


    dec bc
    db $ec
    rst $28
    ld c, a
    db $eb
    ld [de], a
    call nz, $8318

jr_001_7642:
    sbc h
    ret nz

    rst $08
    ret nz

    ret nz

    and e
    ld h, b
    rst $10
    jr nc, jr_001_7642

    or $d0
    ld c, h
    jr nz, @+$1a

    ret nz

    jr c, jr_001_7654

jr_001_7654:
    ldh a, [$c0]
    rst $08
    add a
    add a
    add b
    adc a
    add b
    adc a
    add b
    ld e, $80
    inc e
    sbc h
    inc b
    ret c

    ret c

    nop
    ldh a, [$e0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_001_768e

    db $10
    ld c, $0e
    inc bc
    di
    dec b
    cp $03
    db $fc
    cp a
    ld d, a
    dec sp
    jp nz, $c834

    ld h, e

jr_001_7682:
    db $fc
    ldh a, [rIE]
    ret nz

    ret nz

    and e
    ld h, b
    rst $10
    jr nc, jr_001_7682

    or $d0

jr_001_768e:
    ld c, h
    jr nz, @+$1a

    ret nz

    jr c, jr_001_7694

jr_001_7694:
    ldh a, [$f0]
    rst $38
    rst $20
    rst $20
    ldh [$ef], a
    ldh [$ef], a
    ldh [rNR34], a
    ldh [rNR32], a
    add sp, -$78
    ldh a, [$f0]
    nop
    ldh a, [$e0]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_001_76ce

    db $10
    ld c, $0e
    add e
    ei
    inc bc
    cp $01
    cp $5f
    xor e
    rra
    ldh [rNR23], a
    db $e4
    inc sp

jr_001_76c2:
    db $fc
    ld a, b
    ld a, a
    ret nz

    ret nz

    and e
    ld h, b
    rst $10
    jr nc, jr_001_76c2

    or $d0

jr_001_76ce:
    ld c, h
    jr nz, jr_001_76e9

    ret nz

    jr c, jr_001_76d4

jr_001_76d4:
    ldh a, [$7f]
    ld a, [hl]
    rst $30
    or $f0
    rst $38
    ld [hl], b
    ld a, a
    ld [hl], b
    ld c, $f0
    inc c
    ld hl, sp+$48
    ld hl, sp-$08
    add b
    ld [hl], b
    ldh [$e0], a

jr_001_76e9:
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    jr c, @+$1e

    db $10
    ld c, $0e
    nop
    nop
    rlca
    rlca
    adc b
    adc a
    or b
    cp a
    rra
    rra
    cp a
    inc b
    rst $18
    ld b, b
    rst $00
    ld [hl], b
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ldh [$e0], a
    ld b, b
    and b
    ret nz

    nop
    add b
    ld b, b
    ld b, b
    ld a, a
    nop
    ccf
    inc c
    rrca
    inc bc
    ccf
    nop
    ld a, a
    nop
    jr c, jr_001_775e

    inc c
    ld a, b
    ld a, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    ret nz

    ret nz

    nop
    ldh [rP1], a
    ldh a, [$3c]
    inc c
    ld a, b
    ld a, b
    nop
    nop
    dec de
    dec de
    inc h
    ccf
    jr nz, @+$41

    ld de, $0a1f
    ld c, $07
    inc b
    rlca
    nop
    ld d, e
    ld [hl], a
    ld e, c
    ld [hl], a
    ld e, a
    ld [hl], a
    ld h, l
    ld [hl], a
    ld l, e
    ld [hl], a
    ld [hl], c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor l
    ld [hl], a
    or d
    ld [hl], a
    cp l
    ld [hl], a
    push bc
    ld [hl], a
    adc $77
    push de

jr_001_775e:
    ld [hl], a
    db $dd
    ld [hl], a
    rst $20
    ld [hl], a
    xor $77
    rst $30
    ld [hl], a
    inc bc
    ld a, b
    xor $77
    inc c
    ld a, b
    cp l
    ld [hl], a
    inc de
    ld a, b
    push bc
    ld [hl], a
    dec e
    ld a, b
    rra
    ld a, b
    inc c
    ld a, b
    cp l
    ld [hl], a
    xor $77
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    rst $38
    ld e, d
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $ff5b
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    rst $38
    ld hl, $5015
    ld d, e
    rst $38
    ld c, $02
    add hl, bc
    inc l
    dec b
    rrca
    ld de, $082e
    dec h
    rst $38
    ld c, $02
    add hl, bc
    inc l
    ld de, $2507
    rst $38
    inc de
    ld l, $52
    db $10
    dec d
    inc c
    dec h
    ld c, e
    rst $38
    ld c, $02
    add hl, bc
    inc e
    ld bc, $ff07
    ld c, $02
    add hl, bc
    jr @+$07

    ld b, $2e
    rst $38
    dec b
    ld l, $2d
    add hl, de
    ld l, $52
    ld [de], a
    rla
    ld c, d
    rst $38
    ld [hl+], a
    ld [bc], a
    ld bc, $1310
    ld l, $ff
    ld c, $02
    add hl, bc
    inc l
    inc bc
    inc hl
    dec de
    ld l, $ff
    jr z, @+$54

    rrca
    rla
    ld c, d
    inc b
    ld hl, $2e12
    inc de
    ld [bc], a
    rst $38
    ld de, $2e06
    jr jr_001_7816

    ld [bc], a
    add hl, bc
    inc e
    rst $38
    inc de
    ld l, $02
    inc c
    dec h
    ld c, e
    rst $38
    ld hl, $5015

jr_001_7816:
    ld d, e
    dec d
    ld [hl+], a
    inc de
    ld l, $25
    rst $38
    cp c
    rst $38
    and h
    and l
    rst $38
    and [hl]
    and a
    rst $38
    ld c, $02
    add hl, bc
    jr jr_001_782f

    ld b, $2e
    inc l
    nop
    dec hl

jr_001_782f:
    dec c
    ld [de], a
    rlca
    rrca
    ld l, $0a
    ld bc, $04ff
    jr z, jr_001_7885

    call nc, $101e
    dec b
    ld l, $52
    ld [de], a
    dec h
    ld c, $2e
    ld c, d
    ld c, d
    rst $38
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4

Call_001_7850:
    call nc, $d4d4
    call nc, $d4d4
    call nc, $d4d4
    call nc, $ffd4
    ld c, $02
    add hl, bc
    jr jr_001_7866

    ld b, $2e
    rst $38
    rst $38
    db $76

jr_001_7866:
    ld a, b
    add b
    ld a, b
    ld l, l
    ld a, b
    ld l, l
    ld a, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $fe01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $02
    ld [bc], a
    ld [bc], a
    cp $00

jr_001_7885:
    add sp, -$10
    add sp, -$10
    nop
    ld b, b
    ld c, b
    ld b, b
    ld c, b
    nop
    ld c, b
    ld d, b
    ld c, b
    ld d, b
    ld [bc], a
    jr c, jr_001_78d6

    jr c, @+$42

    nop
    ld e, b
    ld h, b
    ld e, b
    ld h, b
    nop
    cp b
    ret nz

    cp b
    ret nz

    ld bc, $4038
    jr c, jr_001_78e7

    ld bc, $4840
    ld b, b
    ld c, b
    ld bc, $5850
    ld d, b
    ld e, b
    nop
    xor b
    or b
    xor b
    or b
    nop
    jr @+$22

    jr jr_001_78db

    pop bc
    ld a, b
    push bc
    ld a, b
    ret


    ld a, b
    ld a, b
    ld a, b
    add b
    add b
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], b
    ld e, b
    ld e, b
    ld h, b
    ld h, b
    sub b
    add b
    ld [hl], b
    ld [hl], b
    cp h
	db $c4, $00, $01
    ld [bc], a

jr_001_78d6:
    inc bc
    ld bc, $0201
    inc b

jr_001_78db:
    ld bc, $0201
    dec b
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    ei
    ld a, b

jr_001_78e7:
    add hl, bc
    ld a, c
    inc d
    ld a, c
    rra
    ld a, c
    daa
    ld a, c
    ld [hl-], a
    ld a, c
    ld a, [hl-]
    ld a, c
    ld b, d
    ld a, c
    ld c, c
    ld a, c
    ld c, [hl]
    ld a, c
    ld e, b
    ld a, c
    nop
    dec de
    cpl
    ld h, $0d
    ld l, $2d
    inc de
    call nc, $2a0b
    ld [bc], a
    ld c, d
    rst $38
    ld bc, $012a
    dec bc
    ld e, h
    call nc, $012a
    dec bc
    ld e, h
    rst $38
    ld bc, $5006
    ld [bc], a
    inc h
    ld e, h
    ld [bc], a
    ld a, [de]
    ld l, $4a
    rst $38
    inc bc
    dec b
    ld l, $1a
    ld l, $53
    dec l
    rst $38
    ld bc, $0b07
    ld l, $08
    inc d
    ld bc, $2e0e
    ld c, d
    rst $38
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld a, [de]
    inc de
    ld bc, $ff06
    ld [bc], a
    add hl, bc
    dec l
    inc de
    ld l, $09
    ld c, $ff
    inc bc
    ld c, $52
    ld c, $2d
    inc d
    rst $38
    inc b
    inc b
    jr z, jr_001_7998

    rst $38
    ld bc, $5222
    ld [hl+], a
    dec bc
    jr z, jr_001_79a3

    ld c, [hl]
    ld c, [hl]
    rst $38
    ld [bc], a
    ld c, $52
    ld c, $02
    dec b
    ld c, d
    rst $38
    db $10
    ld a, b
    or $2c
    ld a, [de]
    ld c, e
    jp c, $0e07

    nop
    ret nc

    inc c
    add c
    inc bc
    ld l, $04
    push bc
    ld [$00f8], sp
    ld d, a
    dec b
    ld [hl], e
    rlca
    sub l
    inc b
    ld c, [hl]
    db $10
    add [hl]
    ld [bc], a
    ld b, [hl]
    jr c, jr_001_7981

jr_001_7981:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7998:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_79a3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_001_7c04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_7c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
