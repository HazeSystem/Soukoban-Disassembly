section "WRAM Bank0", wram0[$c000]

wram0Section EQU $C000

; OAM buffer = $C000-$C09F
; wOAM0
WORK_RAM:: ; C000
	ds 1
wC001:: ; C001
	ds 1
wC002:: ; C002
	ds 1
wC003:: ; C003
	ds 1

; wOAM1
wC004:: ; C004
	ds 1
wC005:: ; C005
	ds 1
wC006:: ; C006
	ds 1
wC007:: ; C007
	ds 1

; wOAM2
wC008:: ; C008
	ds 1
wC009:: ; C009
	ds 1
wC00A:: ; C00A
	ds 1
wC00B:: ; C00B
	ds 1

; wOAM3
wC00C:: ; C00C
	ds 1
wC00D:: ; C00D
	ds 1
wC00E:: ; C00E
	ds 1
wC00F:: ; C00F
	ds 1

; wOAM4
wC010:: ; C010
	ds 1
wC011:: ; C011
	ds 1
wC012:: ; C012
	ds 1
wC013:: ; C013
	ds 1

; wOAM5
wC014:: ; C014
	ds 1
wC015:: ; C015
	ds 1
wC016:: ; C016
	ds 1
wC017:: ; C017
	ds 1

; wOAM6
wC018:: ; C018
	ds 1
wC019:: ; C019
	ds 1
wC01A:: ; C01A
	ds 1
wC01B:: ; C01B
	ds 1

; wOAM7
wC01C:: ; C01C
	ds 1
wC01D:: ; C01D
	ds 1
wC01E:: ; C01E
	ds 1
wC01F:: ; C01F
	ds 1

; wOAM8
wC020:: ; C020
	ds 1
wC021:: ; C021
	ds 1
wC022:: ; C022
	ds 1
wC023:: ; C023
	ds 1

; wOAM9
wC024:: ; C024
	ds 1
wC025:: ; C025
	ds 1
wC026:: ; C026
	ds 1
wC027:: ; C027
	ds 1

; wOAM10
wC028:: ; C028
	ds 1
wC029:: ; C029
	ds 1
wC02A:: ; C02A
	ds 1
wC02B:: ; C02B
	ds 1

; wOAM11
wC02C:: ; C02C
	ds 1
wC02D:: ; C02D
	ds 1
wC02E:: ; C02E
	ds 1
wC02F:: ; C02F
	ds 1

; wOAM12
wC030:: ; C030
	ds 1
wC031:: ; C031
	ds 1
wC032:: ; C032
	ds 1
wC033:: ; C033
	ds 1

; wOAM13
wC034:: ; C034
	ds 1
wC035:: ; C035
	ds 1
wC036:: ; C036
	ds 1
wC037:: ; C037
	ds 1

; wOAM14
wC038:: ; C038
	ds 1
wC039:: ; C039
	ds 1
wC03A:: ; C03A
	ds 1
wC03B:: ; C03B
	ds 1

; wOAM15
wC03C:: ; C03C
	ds 1
wC03D:: ; C03D
	ds 1
wC03E:: ; C03E
	ds 1
wC03F:: ; C03F
	ds 1

; wOAM16
wC040:: ; C040
	ds 1
wC041:: ; C041
	ds 1
wC042:: ; C042
	ds 1
wC043:: ; C043
	ds 1

; wOAM17
wC044:: ; C044
	ds 1
wC045:: ; C045
	ds 1
wC046:: ; C046
	ds 1
wC047:: ; C047
	ds 1

; wOAM18
wC048:: ; C048
	ds 1
wC049:: ; C049
	ds 1
wC04A:: ; C04A
	ds 1
wC04B:: ; C04B
	ds 1

; wOAM19
wC04C:: ; C04C
	ds 1
wC04D:: ; C04D
	ds 1
wC04E:: ; C04E
	ds 1
wC04F:: ; C04F
	ds 1

; wOAM20
wC050:: ; C050
	ds 1
wC051:: ; C051
	ds 1
wC052:: ; C052
	ds 1
wC053:: ; C053
	ds 1

; wOAM21
wC054:: ; C054
	ds 1
wC055:: ; C055
	ds 1
wC056:: ; C056
	ds 1
wC057:: ; C057
	ds 1

; wOAM22
wC058:: ; C058
	ds 1
wC059:: ; C059
	ds 1
wC05A:: ; C05A
	ds 1
wC05B:: ; C05B
	ds 1

; wOAM23
wC05C:: ; C05C
	ds 1
wC05D:: ; C05D
	ds 1
wC05E:: ; C05E
	ds 1
wC05F:: ; C05F
	ds 1

; wOAM24
wC060:: ; C060
	ds 1
wC061:: ; C061
	ds 1
wC062:: ; C062
	ds 1
wC063:: ; C063
	ds 1

; wOAM25
wC064:: ; C064
	ds 1
wC065:: ; C065
	ds 1
wC066:: ; C066
	ds 1
wC067:: ; C067
	ds 1

; wOAM26
wC068:: ; C068
	ds 1
wC069:: ; C069
	ds 1
wC06A:: ; C06A
	ds 1
wC06B:: ; C06B
	ds 1

; wOAM27
wC06C:: ; C06C
	ds 1
wC06D:: ; C06D
	ds 1
wC06E:: ; C06E
	ds 1
wC06F:: ; C06F
	ds 1

; wOAM28
wC070:: ; C070
	ds 1
wC071:: ; C071
	ds 1
wC072:: ; C072
	ds 1
wC073:: ; C073
	ds 1

; wOAM29
wC074:: ; C074
	ds 1
wC075:: ; C075
	ds 1
wC076:: ; C076
	ds 1
wC077:: ; C077
	ds 1

; wOAM30
wC078:: ; C078
	ds 1
wC079:: ; C079
	ds 1
wC07A:: ; C07A
	ds 1
wC07B:: ; C07B
	ds 1

; wOAM31
wC07C:: ; C07C
	ds 1
wC07D:: ; C07D
	ds 1
wC07E:: ; C07E
	ds 1
wC07F:: ; C07F
	ds 1

; wOAM32
wC080:: ; C080
	ds 1
wC081:: ; C081
	ds 1
wC082:: ; C082
	ds 1
wC083:: ; C083
	ds 1

; wOAM33
wC084:: ; C084
	ds 1
wC085:: ; C085
	ds 1
wC086:: ; C086
	ds 1
wC087:: ; C087
	ds 1

; wOAM34
wC088:: ; C088
	ds 1
wC089:: ; C089
	ds 1
wC08A:: ; C08A
	ds 1
wC08B:: ; C08B
	ds 1

; wOAM35
wC08C:: ; C08C
	ds 1
wC08D:: ; C08D
	ds 1
wC08E:: ; C08E
	ds 1
wC08F:: ; C08F
	ds 1

; wOAM36
wC090:: ; C090
	ds 1
wC091:: ; C091
	ds 1
wC092:: ; C092
	ds 1
wC093:: ; C093
	ds 1

; wOAM37
wC094:: ; C094
	ds 1
wC095:: ; C095
	ds 1
wC096:: ; C096
	ds 1
wC097:: ; C097
	ds 1

; wOAM38
wC098:: ; C098
	ds 1
wC099:: ; C099
	ds 1
wC09A:: ; C09A
	ds 1
wC09B:: ; C09B
	ds 1

; wOAM39
wC09C:: ; C09C
	ds 1
wC09D:: ; C09D
	ds 1
wC09E:: ; C09E
	ds 1
wC09F:: ; C09F
	ds 1

; Start of non-OAM data
wC0A0:: ; C0A0
	ds 1
wCounter::
wMoveCountL:: ; Move count takes up 2 bytes
wC0A1:: ; C0A1
	ds 1
wMoveCountH:: ; High byte of move count
wC0A2:: ; C0A2
	ds 1
wHasWon:: ; C0A3 - any value > 0 means player has "beaten" the game (or input the secret keypress at the title screen)
	ds 1
wFrameCounter:: ; C0A4 - incremented each frame in the main game loop
	ds 1
wC0A5:: ; C0A5
	ds 1
wC0A6:: ; C0A6
	ds 1
wC0A7:: ; C0A7
	ds 1
wC0A8:: ; C0A8
	ds 1
wC0A9:: ; C0A9
	ds 1
wC0AA:: ; C0AA
	ds 1
wC0AB:: ; C0AB
	ds 1
wC0AC:: ; C0AC
	ds 1
wVRAMBuffer:: ; C0AD - used for text?
	ds 14
wC0BB:: ; C0BB
	ds 1
wC0BC:: ; C0BC
	ds 1
wC0BD:: ; C0BD
	ds 1
wC0BE:: ; C0BE
	ds 1
wC0BF:: ; C0BF
	ds 1
wC0C0:: ; C0C0
	ds 1
wC0C1:: ; C0C1
	ds 1
wC0C2:: ; C0C2
	ds 1
wC0C3:: ; C0C3
	ds 1
wC0C4:: ; C0C4
	ds 1
wC0C5:: ; C0C5
	ds 1
wC0C6:: ; C0C6
	ds 1
wC0C7:: ; C0C7
	ds 1
wC0C8:: ; C0C8
	ds 1
wC0C9:: ; C0C9
	ds 1
wC0CA:: ; C0CA
	ds 1
wC0CB:: ; C0CB
	ds 1
wC0CC:: ; C0CC
	ds 1
wC0CD:: ; C0CD
	ds 1
wC0CE:: ; C0CE
	ds 1
wC0CF:: ; C0CF
	ds 1
wDirection:: ; C0D0 - Direction the player is facing
	ds 1
wTileSize:: ; C0D1 - Size of tile to draw, value should be 8 or 16
	ds 1
wC0D2:: ; C0D2
	ds 1
wCurBlock:: ; Currently selected block in the editor
wC0D3:: ; C0D3
	ds 1
wC0D4:: ; C0D4
	ds 1
wC0D5:: ; C0D5
	ds 1
wC0D6:: ; C0D6
	ds 1
wC0D7:: ; C0D7
	ds 1
wC0D8:: ; C0D8
	ds 1
wC0D9:: ; C0D9
	ds 1
wC0DA:: ; C0DA
	ds 1
wC0DB:: ; C0DB
	ds 1
wC0DC:: ; C0DC
	ds 1
wC0DD:: ; C0DD
	ds 1
wTileMap:: ; C0DE
	ds 2
wC0E0:: ; C0E0
	ds 1
wC0E1:: ; C0E1
	ds 1
wC0E2:: ; C0E2
	ds 1
wC0E3:: ; C0E3
	ds 1
wC0E4:: ; C0E4
	ds 1
wC0E5:: ; C0E5
	ds 1
wC0E6:: ; C0E6
	ds 1
wC0E7:: ; C0E7
	ds 1
wC0E8:: ; C0E8
	ds 1
wC0E9:: ; C0E9
	ds 1
wC0EA:: ; C0EA
	ds 1
wC0EB:: ; C0EB
	ds 1
wC0EC:: ; C0EC
	ds 1
wSpriteFlags:: ; C0ED - OAM flags (e.g x flip)
	ds 1
wC0EE:: ; C0EE
	ds 1
wTimerFrames:: ; C0EF
	ds 1
wC0F0:: ; C0F0
	ds 1
wC0F1:: ; C0F1
	ds 1
wTimerSeconds:: ; C0F2 - Approximate Number of seconds passed
	ds 1
wC0F3:: ; C0F3
	ds 1
wC0F4:: ; C0F4
	ds 1
wC0F5:: ; C0F5
	ds 1
wWaitForVBlank:: ; C0F6
	ds 1
wVRAMPointerHigh:: ; C0F7
	ds 1
wVRAMPointerLow:: ; C0F8
	ds 1
wMenuOffset:: ; C0F9 - which line of the menu to draw
	ds 1
wC0FA:: ; C0FA
	ds 1
wC0FB:: ; C0FB
	ds 1
wC0FC:: ; C0FC
	ds 1
wKeyState:: ; C0FD - A copy of the pressed keys
	ds 1
wC0FE:: ; C0FE
	ds 1
wC0FF:: ; C0FF
	ds 1
wC100:: ; C100
	ds 1
wC101:: ; C101
	ds 1
wC102:: ; C102
	ds 1
wC103:: ; C103
	ds 1
wC104:: ; C104
	ds 1
wC105:: ; C105
	ds 1
wC106:: ; C106
	ds 1
wC107:: ; C107
	ds 1
wC108:: ; C108
	ds 1
wC109:: ; C109
	ds 1
wC10A:: ; C10A
	ds 1
wC10B:: ; C10B
	ds 1
wC10C:: ; C10C
	ds 1
wC10D:: ; C10D
	ds 1
wC10E:: ; C10E
	ds 1
wC10F:: ; C10F
	ds 1
wC110:: ; C110
	ds 1
wC111:: ; C111
	ds 1
wC112:: ; C112
	ds 1
wC113:: ; C113
	ds 1
wC114:: ; C114
	ds 1
wC115:: ; C115
	ds 1
wC116:: ; C116
	ds 1
wC117:: ; C117
	ds 1
wC118:: ; C118
	ds 1
wC119:: ; C119
	ds 1
wC11A:: ; C11A
	ds 1
wC11B:: ; C11B
	ds 1
wC11C:: ; C11C
	ds 1
wC11D:: ; C11D
	ds 1
wC11E:: ; C11E
	ds 1
wC11F:: ; C11F
	ds 1
wC120:: ; C120
	ds 1
wC121:: ; C121
	ds 1
wC122:: ; C122
	ds 1
wC123:: ; C123
	ds 1
wC124:: ; C124
	ds 1
wC125:: ; C125
	ds 1
wC126:: ; C126
	ds 1
wC127:: ; C127
	ds 1
wC128:: ; C128
	ds 1
wC129:: ; C129
	ds 1
wC12A:: ; C12A
	ds 1
wC12B:: ; C12B
	ds 1
wC12C:: ; C12C
	ds 1
wC12D:: ; C12D
	ds 1
wC12E:: ; C12E
	ds 1
wC12F:: ; C12F
	ds 1
wC130:: ; C130
	ds 1
wC131:: ; C131
	ds 1
wAnimationStarted:: ; Tracks whether initial animation when starting new game has been started
wC132:: ; C132
	ds 1
wCurrentCharacter:: ; Tracks the current character being drawn on screen
wC133:: ; C133
	ds 1
wC134:: ; C134
	ds 1
wC135:: ; C135
	ds 1
wCharacter2TileId:: ; C136 - Used in the intro cutscene for the ponytail character
	ds 1
wC137:: ; C137
	ds 1
wC138:: ; C138
	ds 1
wC139:: ; C139
	ds 1
wC13A:: ; C13A
	ds 1
wC13B:: ; C13B
	ds 1
wC13C:: ; C13C
	ds 1
wC13D:: ; C13D
	ds 1
wC13E:: ; C13E
	ds 1
wC13F:: ; C13F
	ds 1
wC140:: ; C140
	ds 1
wC141:: ; C141
	ds 1
wC142:: ; C142
	ds 1
wC143:: ; C143
	ds 1
wC144:: ; C144
	ds 1
wC145:: ; C145
	ds 1
wC146:: ; C146
	ds 1
wC147:: ; C147
	ds 1
wC148:: ; C148
	ds 1
wC149:: ; C149
	ds 1
wC14A:: ; C14A
	ds 1
wC14B:: ; C14B
	ds 1
wC14C:: ; C14C
	ds 1
wC14D:: ; C14D
	ds 1
wC14E:: ; C14E
	ds 1
wC14F:: ; C14F
	ds 1
wC150:: ; C150
	ds 1
wC151:: ; C151
	ds 1
wC152:: ; C152
	ds 1
wC153:: ; C153
	ds 1
wC154:: ; C154
	ds 1
wC155:: ; C155
	ds 1
wC156:: ; C156
	ds 1
wC157:: ; C157
	ds 1
wC158:: ; C158
	ds 1
wC159:: ; C159
	ds 1
wC15A:: ; C15A
	ds 1
wC15B:: ; C15B
	ds 1
wC15C:: ; C15C
	ds 1
wC15D:: ; C15D
	ds 1
wC15E:: ; C15E
	ds 1
wC15F:: ; C15F
	ds 1
wC160:: ; C160
	ds 1
wC161:: ; C161
	ds 1
wC162:: ; C162
	ds 1
wC163:: ; C163
	ds 1
wC164:: ; C164
	ds 1
wC165:: ; C165
	ds 1
wC166:: ; C166
	ds 1
wC167:: ; C167
	ds 1
wC168:: ; C168
	ds 1
wC169:: ; C169
	ds 1
wC16A:: ; C16A
	ds 1
wC16B:: ; C16B
	ds 1
wC16C:: ; C16C
	ds 1
wC16D:: ; C16D
	ds 1
wC16E:: ; C16E
	ds 1
wC16F:: ; C16F
	ds 1
wC170:: ; C170
	ds 1
wC171:: ; C171
	ds 1
wC172:: ; C172
	ds 1
wC173:: ; C173
	ds 1
wC174:: ; C174
	ds 1
wC175:: ; C175
	ds 1
wC176:: ; C176
	ds 1
wC177:: ; C177
	ds 1
wC178:: ; C178
	ds 1
wC179:: ; C179
	ds 1
wC17A:: ; C17A
	ds 1
wC17B:: ; C17B
	ds 1
wC17C:: ; C17C
	ds 1
wC17D:: ; C17D
	ds 1
wC17E:: ; C17E
	ds 1
wC17F:: ; C17F
	ds 1
wC180:: ; C180
	ds 1
wC181:: ; C181
	ds 1
wC182:: ; C182
	ds 1
wC183:: ; C183
	ds 1
wC184:: ; C184
	ds 1
wC185:: ; C185
	ds 1
wC186:: ; C186
	ds 1
wC187:: ; C187
	ds 1
wC188:: ; C188
	ds 1
wC189:: ; C189
	ds 1
wC18A:: ; C18A
	ds 1
wC18B:: ; C18B
	ds 1
wC18C:: ; C18C
	ds 1
wC18D:: ; C18D
	ds 1
wC18E:: ; C18E
	ds 1
wC18F:: ; C18F
	ds 1
wC190:: ; C190
	ds 1
wC191:: ; C191
	ds 1
wC192:: ; C192
	ds 1
wC193:: ; C193
	ds 1
wC194:: ; C194
	ds 1
wC195:: ; C195
	ds 1
wC196:: ; C196
	ds 1
wC197:: ; C197
	ds 1
wC198:: ; C198
	ds 1
wC199:: ; C199
	ds 1
wC19A:: ; C19A
	ds 1
wC19B:: ; C19B
	ds 1
wC19C:: ; C19C
	ds 1
wC19D:: ; C19D
	ds 1
wC19E:: ; C19E
	ds 1
wC19F:: ; C19F
	ds 1
wC1A0:: ; C1A0
	ds 1
wC1A1:: ; C1A1
	ds 1
wC1A2:: ; C1A2
	ds 1
wC1A3:: ; C1A3
	ds 1
wC1A4:: ; C1A4
	ds 1
wC1A5:: ; C1A5
	ds 1
wC1A6:: ; C1A6
	ds 1
wC1A7:: ; C1A7
	ds 1
wC1A8:: ; C1A8
	ds 1
wC1A9:: ; C1A9
	ds 1
wC1AA:: ; C1AA
	ds 1
wC1AB:: ; C1AB
	ds 1
wC1AC:: ; C1AC
	ds 1
wC1AD:: ; C1AD
	ds 1
wC1AE:: ; C1AE
	ds 1
wC1AF:: ; C1AF
	ds 1
wC1B0:: ; C1B0
	ds 1
wC1B1:: ; C1B1
	ds 1
wC1B2:: ; C1B2
	ds 1
wC1B3:: ; C1B3
	ds 1
wC1B4:: ; C1B4
	ds 1
wC1B5:: ; C1B5
	ds 1
wC1B6:: ; C1B6
	ds 1
wC1B7:: ; C1B7
	ds 1
wC1B8:: ; C1B8
	ds 1
wC1B9:: ; C1B9
	ds 1
wC1BA:: ; C1BA
	ds 1
wC1BB:: ; C1BB
	ds 1
wC1BC:: ; C1BC
	ds 1
wC1BD:: ; C1BD
	ds 1
wC1BE:: ; C1BE
	ds 1
wC1BF:: ; C1BF
	ds 1
wC1C0:: ; C1C0
	ds 1
wC1C1:: ; C1C1
	ds 1
wC1C2:: ; C1C2
	ds 1
wC1C3:: ; C1C3
	ds 1
wC1C4:: ; C1C4
	ds 1
wC1C5:: ; C1C5
	ds 1
wC1C6:: ; C1C6
	ds 1
wC1C7:: ; C1C7
	ds 1
wC1C8:: ; C1C8
	ds 1
wC1C9:: ; C1C9
	ds 1
wC1CA:: ; C1CA
	ds 1
wC1CB:: ; C1CB
	ds 1
wC1CC:: ; C1CC
	ds 1
wC1CD:: ; C1CD
	ds 1
wC1CE:: ; C1CE
	ds 1
wC1CF:: ; C1CF
	ds 1
wC1D0:: ; C1D0
	ds 1
wC1D1:: ; C1D1
	ds 1
wC1D2:: ; C1D2
	ds 1
wC1D3:: ; C1D3
	ds 1
wC1D4:: ; C1D4
	ds 1
wC1D5:: ; C1D5
	ds 1
wC1D6:: ; C1D6
	ds 1
wC1D7:: ; C1D7
	ds 1
wC1D8:: ; C1D8
	ds 1
wC1D9:: ; C1D9
	ds 1
wC1DA:: ; C1DA
	ds 1
wC1DB:: ; C1DB
	ds 1
wC1DC:: ; C1DC
	ds 1
wC1DD:: ; C1DD
	ds 1
wC1DE:: ; C1DE
	ds 1
wC1DF:: ; C1DF
	ds 1
wC1E0:: ; C1E0
	ds 1
wC1E1:: ; C1E1
	ds 1
wC1E2:: ; C1E2
	ds 1
wC1E3:: ; C1E3
	ds 1
wC1E4:: ; C1E4
	ds 1
wC1E5:: ; C1E5
	ds 1
wC1E6:: ; C1E6
	ds 1
wC1E7:: ; C1E7
	ds 1
wC1E8:: ; C1E8
	ds 1
wC1E9:: ; C1E9
	ds 1
wC1EA:: ; C1EA
	ds 1
wC1EB:: ; C1EB
	ds 1
wC1EC:: ; C1EC
	ds 1
wC1ED:: ; C1ED
	ds 1
wC1EE:: ; C1EE
	ds 1
wC1EF:: ; C1EF
	ds 1
wC1F0:: ; C1F0
	ds 1
wC1F1:: ; C1F1
	ds 1
wC1F2:: ; C1F2
	ds 1
wC1F3:: ; C1F3
	ds 1
wC1F4:: ; C1F4
	ds 1
wC1F5:: ; C1F5
	ds 1
wC1F6:: ; C1F6
	ds 1
wC1F7:: ; C1F7
	ds 1
wC1F8:: ; C1F8
	ds 1
wC1F9:: ; C1F9
	ds 1
wC1FA:: ; C1FA
	ds 1
wC1FB:: ; C1FB
	ds 1
wC1FC:: ; C1FC
	ds 1
wC1FD:: ; C1FD
	ds 1
wC1FE:: ; C1FE
	ds 1
wC1FF:: ; C1FF
	ds 1
wC200:: ; C200
	ds 1
wC201:: ; C201
	ds 1
wC202:: ; C202
	ds 1
wC203:: ; C203
	ds 1
wC204:: ; C204
	ds 1
wC205:: ; C205
	ds 1
wC206:: ; C206
	ds 1
wC207:: ; C207
	ds 1
wC208:: ; C208
	ds 1
wC209:: ; C209
	ds 1
wC20A:: ; C20A
	ds 1
wC20B:: ; C20B
	ds 1
wC20C:: ; C20C
	ds 1
wC20D:: ; C20D
	ds 1
wC20E:: ; C20E
	ds 1
wC20F:: ; C20F
	ds 1
wC210:: ; C210
	ds 1
wC211:: ; C211
	ds 1
wC212:: ; C212
	ds 1
wC213:: ; C213
	ds 1
wC214:: ; C214
	ds 1
wC215:: ; C215
	ds 1
wC216:: ; C216
	ds 1
wC217:: ; C217
	ds 1
wC218:: ; C218
	ds 1
wC219:: ; C219
	ds 1
wC21A:: ; C21A
	ds 1
wC21B:: ; C21B
	ds 1
wC21C:: ; C21C
	ds 1
wC21D:: ; C21D
	ds 1
wC21E:: ; C21E
	ds 1
wC21F:: ; C21F
	ds 1
wC220:: ; C220
	ds 1
wC221:: ; C221
	ds 1
wC222:: ; C222
	ds 1
wC223:: ; C223
	ds 1
wC224:: ; C224
	ds 1
wC225:: ; C225
	ds 1
wC226:: ; C226
	ds 1
wC227:: ; C227
	ds 1
wC228:: ; C228
	ds 1
wC229:: ; C229
	ds 1
wC22A:: ; C22A
	ds 1
wC22B:: ; C22B
	ds 1
wC22C:: ; C22C
	ds 1
wC22D:: ; C22D
	ds 1
wC22E:: ; C22E
	ds 1
wC22F:: ; C22F
	ds 1
wC230:: ; C230
	ds 1
wC231:: ; C231
	ds 1
wC232:: ; C232
	ds 1
wC233:: ; C233
	ds 1
wC234:: ; C234
	ds 1
wC235:: ; C235
	ds 1
wC236:: ; C236
	ds 1
wC237:: ; C237
	ds 1
wC238:: ; C238
	ds 1
wC239:: ; C239
	ds 1
wC23A:: ; C23A
	ds 1
wC23B:: ; C23B
	ds 1
wC23C:: ; C23C
	ds 1
wC23D:: ; C23D
	ds 1
wC23E:: ; C23E
	ds 1
wC23F:: ; C23F
	ds 1
wC240:: ; C240
	ds 1
wC241:: ; C241
	ds 1
wC242:: ; C242
	ds 1
wC243:: ; C243
	ds 1
wC244:: ; C244
	ds 1
wC245:: ; C245
	ds 1
wC246:: ; C246
	ds 1
wC247:: ; C247
	ds 1
wC248:: ; C248
	ds 1
wC249:: ; C249
	ds 1
wC24A:: ; C24A
	ds 1
wC24B:: ; C24B
	ds 1
wC24C:: ; C24C
	ds 1
wC24D:: ; C24D
	ds 1
wC24E:: ; C24E
	ds 1
wC24F:: ; C24F
	ds 1
wC250:: ; C250
	ds 1
wC251:: ; C251
	ds 1
wC252:: ; C252
	ds 1
wC253:: ; C253
	ds 1
wC254:: ; C254
	ds 1
wC255:: ; C255
	ds 1
wC256:: ; C256
	ds 1
wC257:: ; C257
	ds 1
wC258:: ; C258
	ds 1
wC259:: ; C259
	ds 1
wC25A:: ; C25A
	ds 1
wC25B:: ; C25B
	ds 1
wC25C:: ; C25C
	ds 1
wC25D:: ; C25D
	ds 1
wC25E:: ; C25E
	ds 1
wC25F:: ; C25F
	ds 1
wC260:: ; C260
	ds 1
wC261:: ; C261
	ds 1
wC262:: ; C262
	ds 1
wC263:: ; C263
	ds 1
wC264:: ; C264
	ds 1
wC265:: ; C265
	ds 1
wC266:: ; C266
	ds 1
wC267:: ; C267
	ds 1
wC268:: ; C268
	ds 1
wC269:: ; C269
	ds 1
wC26A:: ; C26A
	ds 1
wC26B:: ; C26B
	ds 1
wC26C:: ; C26C
	ds 1
wC26D:: ; C26D
	ds 1
wC26E:: ; C26E
	ds 1
wC26F:: ; C26F
	ds 1
wC270:: ; C270
	ds 1
wC271:: ; C271
	ds 1
wC272:: ; C272
	ds 1
wC273:: ; C273
	ds 1
wC274:: ; C274
	ds 1
wC275:: ; C275
	ds 1
wC276:: ; C276
	ds 1
wC277:: ; C277
	ds 1
wC278:: ; C278
	ds 1
wC279:: ; C279
	ds 1
wC27A:: ; C27A
	ds 1
wC27B:: ; C27B
	ds 1
wC27C:: ; C27C
	ds 1
wC27D:: ; C27D
	ds 1
wC27E:: ; C27E
	ds 1
wC27F:: ; C27F
	ds 1
wC280:: ; C280
	ds 1
wC281:: ; C281
	ds 1
wC282:: ; C282
	ds 1
wC283:: ; C283
	ds 1
wC284:: ; C284
	ds 1
wC285:: ; C285
	ds 1
wC286:: ; C286
	ds 1
wC287:: ; C287
	ds 1
wC288:: ; C288
	ds 1
wC289:: ; C289
	ds 1
wC28A:: ; C28A
	ds 1
wC28B:: ; C28B
	ds 1
wC28C:: ; C28C
	ds 1
wC28D:: ; C28D
	ds 1
wC28E:: ; C28E
	ds 1
wC28F:: ; C28F
	ds 1
wC290:: ; C290
	ds 1
wC291:: ; C291
	ds 1
wC292:: ; C292
	ds 1
wC293:: ; C293
	ds 1
wC294:: ; C294
	ds 1
wC295:: ; C295
	ds 1
wC296:: ; C296
	ds 1
wC297:: ; C297
	ds 1
wC298:: ; C298
	ds 1
wC299:: ; C299
	ds 1
wC29A:: ; C29A
	ds 1
wC29B:: ; C29B
	ds 1
wC29C:: ; C29C
	ds 1
wC29D:: ; C29D
	ds 1
wC29E:: ; C29E
	ds 1
wC29F:: ; C29F
	ds 1
wC2A0:: ; C2A0
	ds 1
wC2A1:: ; C2A1
	ds 1
wC2A2:: ; C2A2
	ds 1
wC2A3:: ; C2A3
	ds 1
wC2A4:: ; C2A4
	ds 1
wC2A5:: ; C2A5
	ds 1
wC2A6:: ; C2A6
	ds 1
wC2A7:: ; C2A7
	ds 1
wC2A8:: ; C2A8
	ds 1
wC2A9:: ; C2A9
	ds 1
wC2AA:: ; C2AA
	ds 1
wC2AB:: ; C2AB
	ds 1
wC2AC:: ; C2AC
	ds 1
wC2AD:: ; C2AD
	ds 1
wC2AE:: ; C2AE
	ds 1
wC2AF:: ; C2AF
	ds 1
wC2B0:: ; C2B0
	ds 1
wC2B1:: ; C2B1
	ds 1
wC2B2:: ; C2B2
	ds 1
wC2B3:: ; C2B3
	ds 1
wC2B4:: ; C2B4
	ds 1
wC2B5:: ; C2B5
	ds 1
wC2B6:: ; C2B6
	ds 1
wC2B7:: ; C2B7
	ds 1
wC2B8:: ; C2B8
	ds 1
wC2B9:: ; C2B9
	ds 1
wC2BA:: ; C2BA
	ds 1
wC2BB:: ; C2BB
	ds 1
wC2BC:: ; C2BC
	ds 1
wC2BD:: ; C2BD
	ds 1
wC2BE:: ; C2BE
	ds 1
wC2BF:: ; C2BF
	ds 1
wC2C0:: ; C2C0
	ds 1
wC2C1:: ; C2C1
	ds 1
wC2C2:: ; C2C2
	ds 1
wC2C3:: ; C2C3
	ds 1
wC2C4:: ; C2C4
	ds 1
wC2C5:: ; C2C5
	ds 1
wC2C6:: ; C2C6
	ds 1
wC2C7:: ; C2C7
	ds 1
wC2C8:: ; C2C8
	ds 1
wC2C9:: ; C2C9
	ds 1
wC2CA:: ; C2CA
	ds 1
wC2CB:: ; C2CB
	ds 1
wC2CC:: ; C2CC
	ds 1
wC2CD:: ; C2CD
	ds 1
wC2CE:: ; C2CE
	ds 1
wC2CF:: ; C2CF
	ds 1
wC2D0:: ; C2D0
	ds 1
wC2D1:: ; C2D1
	ds 1
wC2D2:: ; C2D2
	ds 1
wC2D3:: ; C2D3
	ds 1
wC2D4:: ; C2D4
	ds 1
wC2D5:: ; C2D5
	ds 1
wC2D6:: ; C2D6
	ds 1
wC2D7:: ; C2D7
	ds 1
wC2D8:: ; C2D8
	ds 1
wC2D9:: ; C2D9
	ds 1
wC2DA:: ; C2DA
	ds 1
wC2DB:: ; C2DB
	ds 1
wC2DC:: ; C2DC
	ds 1
wC2DD:: ; C2DD
	ds 1
wC2DE:: ; C2DE
	ds 1
wC2DF:: ; C2DF
	ds 1
wC2E0:: ; C2E0
	ds 1
wC2E1:: ; C2E1
	ds 1
wC2E2:: ; C2E2
	ds 1
wC2E3:: ; C2E3
	ds 1
wC2E4:: ; C2E4
	ds 1
wC2E5:: ; C2E5
	ds 1
wC2E6:: ; C2E6
	ds 1
wC2E7:: ; C2E7
	ds 1
wC2E8:: ; C2E8
	ds 1
wC2E9:: ; C2E9
	ds 1
wC2EA:: ; C2EA
	ds 1
wC2EB:: ; C2EB
	ds 1
wGameplayType:: ; C2EC - $01 = sample play, $04 = title screen
	ds 1
wC2ED:: ; C2ED
	ds 1
wC2EE:: ; C2EE
	ds 1
wC2EF:: ; C2EF
	ds 1
wGameplaySubtype:: ; C2F0
	ds 1
wC2F1:: ; C2F1
	ds 1
wC2F2:: ; C2F2
	ds 1
wC2F3:: ; C2F3
	ds 1
wC2F4:: ; C2F4
	ds 1
wC2F5:: ; C2F5
	ds 1
wC2F6:: ; C2F6
	ds 1
wC2F7:: ; C2F7
	ds 1
wC2F8:: ; C2F8
	ds 1
wC2F9:: ; C2F9
	ds 1
wC2FA:: ; C2FA
	ds 1
wC2FB:: ; C2FB
	ds 1
wC2FC:: ; C2FC
	ds 1
wC2FD:: ; C2FD
	ds 1
wC2FE:: ; C2FE
	ds 1
wC2FF:: ; C2FF
	ds 1
wC300:: ; C300
	ds 1
wC301:: ; C301
	ds 1
wC302:: ; C302
	ds 1
wC303:: ; C303
	ds 1
wC304:: ; C304
	ds 1
wC305:: ; C305
	ds 1
wC306:: ; C306
	ds 1
wC307:: ; C307
	ds 1
wC308:: ; C308
	ds 1
wC309:: ; C309
	ds 1
wC30A:: ; C30A
	ds 1
wC30B:: ; C30B
	ds 1
wC30C:: ; C30C
	ds 1
wC30D:: ; C30D
	ds 1
wC30E:: ; C30E
	ds 1
wC30F:: ; C30F
	ds 1
wC310:: ; C310
	ds 1
wC311:: ; C311
	ds 1
wC312:: ; C312
	ds 1
wC313:: ; C313
	ds 1
wC314:: ; C314
	ds 1
wC315:: ; C315
	ds 1
wC316:: ; C316
	ds 1
wC317:: ; C317
	ds 1
wC318:: ; C318
	ds 1
wC319:: ; C319
	ds 1
wC31A:: ; C31A
	ds 1
wC31B:: ; C31B
	ds 1
wC31C:: ; C31C
	ds 1
wC31D:: ; C31D
	ds 1
wC31E:: ; C31E
	ds 1
wC31F:: ; C31F
	ds 1
wC320:: ; C320
	ds 1
wC321:: ; C321
	ds 1
wC322:: ; C322
	ds 1
wC323:: ; C323
	ds 1
wC324:: ; C324
	ds 1
wC325:: ; C325
	ds 1
wC326:: ; C326
	ds 1
wC327:: ; C327
	ds 1
wC328:: ; C328
	ds 1
wC329:: ; C329
	ds 1
wC32A:: ; C32A
	ds 1
wC32B:: ; C32B
	ds 1
wC32C:: ; C32C
	ds 1
wC32D:: ; C32D
	ds 1
wC32E:: ; C32E
	ds 1
wC32F:: ; C32F
	ds 1
wC330:: ; C330
	ds 1
wC331:: ; C331
	ds 1
wC332:: ; C332
	ds 1
wC333:: ; C333
	ds 1
wC334:: ; C334
	ds 1
wC335:: ; C335
	ds 1
wC336:: ; C336
	ds 1
wC337:: ; C337
	ds 1
wC338:: ; C338
	ds 1
wC339:: ; C339
	ds 1
wC33A:: ; C33A
	ds 1
wC33B:: ; C33B
	ds 1
wC33C:: ; C33C
	ds 1
wC33D:: ; C33D
	ds 1
wC33E:: ; C33E
	ds 1
wC33F:: ; C33F
	ds 1
wC340:: ; C340
	ds 1
wC341:: ; C341
	ds 1
wC342:: ; C342
	ds 1
wC343:: ; C343
	ds 1
wC344:: ; C344
	ds 1
wC345:: ; C345
	ds 1
wC346:: ; C346
	ds 1
wC347:: ; C347
	ds 1
wC348:: ; C348
	ds 1
wC349:: ; C349
	ds 1
wC34A:: ; C34A
	ds 1
wC34B:: ; C34B
	ds 1
wC34C:: ; C34C
	ds 1
wC34D:: ; C34D
	ds 1
wC34E:: ; C34E
	ds 1
wC34F:: ; C34F
	ds 1
wC350:: ; C350
	ds 1
wC351:: ; C351
	ds 1
wC352:: ; C352
	ds 1
wC353:: ; C353
	ds 1
wC354:: ; C354
	ds 1
wC355:: ; C355
	ds 1
wC356:: ; C356
	ds 1
wC357:: ; C357
	ds 1
wC358:: ; C358
	ds 1
wC359:: ; C359
	ds 1
wC35A:: ; C35A
	ds 1
wC35B:: ; C35B
	ds 1
wC35C:: ; C35C
	ds 1
wC35D:: ; C35D
	ds 1
wC35E:: ; C35E
	ds 1
wC35F:: ; C35F
	ds 1
wC360:: ; C360
	ds 1
wC361:: ; C361
	ds 1
wC362:: ; C362
	ds 1
wC363:: ; C363
	ds 1
wC364:: ; C364
	ds 1
wC365:: ; C365
	ds 1
wC366:: ; C366
	ds 1
wC367:: ; C367
	ds 1
wC368:: ; C368
	ds 1
wC369:: ; C369
	ds 1
wC36A:: ; C36A
	ds 1
wC36B:: ; C36B
	ds 1
wC36C:: ; C36C
	ds 1
wC36D:: ; C36D
	ds 1
wC36E:: ; C36E
	ds 1
wC36F:: ; C36F
	ds 1
wC370:: ; C370
	ds 1
wC371:: ; C371
	ds 1
wC372:: ; C372
	ds 1
wC373:: ; C373
	ds 1
wC374:: ; C374
	ds 1
wC375:: ; C375
	ds 1
wC376:: ; C376
	ds 1
wC377:: ; C377
	ds 1
wC378:: ; C378
	ds 1
wC379:: ; C379
	ds 1
wC37A:: ; C37A
	ds 1
wC37B:: ; C37B
	ds 1
wC37C:: ; C37C
	ds 1
wC37D:: ; C37D
	ds 1
wC37E:: ; C37E
	ds 1
wC37F:: ; C37F
	ds 1
wC380:: ; C380
	ds 1
wC381:: ; C381
	ds 1
wC382:: ; C382
	ds 1
wC383:: ; C383
	ds 1
wC384:: ; C384
	ds 1
wC385:: ; C385
	ds 1
wC386:: ; C386
	ds 1
wC387:: ; C387
	ds 1
wC388:: ; C388
	ds 1
wC389:: ; C389
	ds 1
wC38A:: ; C38A
	ds 1
wC38B:: ; C38B
	ds 1
wC38C:: ; C38C
	ds 1
wC38D:: ; C38D
	ds 1
wC38E:: ; C38E
	ds 1
wC38F:: ; C38F
	ds 1
wC390:: ; C390
	ds 1
wC391:: ; C391
	ds 1
wC392:: ; C392
	ds 1
wC393:: ; C393
	ds 1
wC394:: ; C394
	ds 1
wC395:: ; C395
	ds 1
wC396:: ; C396
	ds 1
wC397:: ; C397
	ds 1
wC398:: ; C398
	ds 1
wC399:: ; C399
	ds 1
wC39A:: ; C39A
	ds 1
wC39B:: ; C39B
	ds 1
wC39C:: ; C39C
	ds 1
wC39D:: ; C39D
	ds 1
wC39E:: ; C39E
	ds 1
wC39F:: ; C39F
	ds 1
wC3A0:: ; C3A0
	ds 1
wC3A1:: ; C3A1
	ds 1
wC3A2:: ; C3A2
	ds 1
wC3A3:: ; C3A3
	ds 1
wC3A4:: ; C3A4
	ds 1
wC3A5:: ; C3A5
	ds 1
wC3A6:: ; C3A6
	ds 1
wC3A7:: ; C3A7
	ds 1
wC3A8:: ; C3A8
	ds 1
wC3A9:: ; C3A9
	ds 1
wC3AA:: ; C3AA
	ds 1
wC3AB:: ; C3AB
	ds 1
wC3AC:: ; C3AC
	ds 1
wC3AD:: ; C3AD
	ds 1
wC3AE:: ; C3AE
	ds 1
wC3AF:: ; C3AF
	ds 1
wC3B0:: ; C3B0
	ds 1
wC3B1:: ; C3B1
	ds 1
wC3B2:: ; C3B2
	ds 1
wC3B3:: ; C3B3
	ds 1
wC3B4:: ; C3B4
	ds 1
wC3B5:: ; C3B5
	ds 1
wC3B6:: ; C3B6
	ds 1
wC3B7:: ; C3B7
	ds 1
wC3B8:: ; C3B8
	ds 1
wC3B9:: ; C3B9
	ds 1
wC3BA:: ; C3BA
	ds 1
wC3BB:: ; C3BB
	ds 1
wC3BC:: ; C3BC
	ds 1
wC3BD:: ; C3BD
	ds 1
wC3BE:: ; C3BE
	ds 1
wC3BF:: ; C3BF
	ds 1
wC3C0:: ; C3C0
	ds 1
wC3C1:: ; C3C1
	ds 1
wC3C2:: ; C3C2
	ds 1
wC3C3:: ; C3C3
	ds 1
wC3C4:: ; C3C4
	ds 1
wC3C5:: ; C3C5
	ds 1
wC3C6:: ; C3C6
	ds 1
wC3C7:: ; C3C7
	ds 1
wC3C8:: ; C3C8
	ds 1
wC3C9:: ; C3C9
	ds 1
wC3CA:: ; C3CA
	ds 1
wC3CB:: ; C3CB
	ds 1
wC3CC:: ; C3CC
	ds 1
wC3CD:: ; C3CD
	ds 1
wC3CE:: ; C3CE
	ds 1
wC3CF:: ; C3CF
	ds 1
wC3D0:: ; C3D0
	ds 1
wC3D1:: ; C3D1
	ds 1
wC3D2:: ; C3D2
	ds 1
wC3D3:: ; C3D3
	ds 1
wC3D4:: ; C3D4
	ds 1
wC3D5:: ; C3D5
	ds 1
wC3D6:: ; C3D6
	ds 1
wC3D7:: ; C3D7
	ds 1
wC3D8:: ; C3D8
	ds 1
wC3D9:: ; C3D9
	ds 1
wC3DA:: ; C3DA
	ds 1
wC3DB:: ; C3DB
	ds 1
wC3DC:: ; C3DC
	ds 1
wC3DD:: ; C3DD
	ds 1
wC3DE:: ; C3DE
	ds 1
wC3DF:: ; C3DF
	ds 1
wC3E0:: ; C3E0
	ds 1
wC3E1:: ; C3E1
	ds 1
wC3E2:: ; C3E2
	ds 1
wC3E3:: ; C3E3
	ds 1
wC3E4:: ; C3E4
	ds 1
wC3E5:: ; C3E5
	ds 1
wC3E6:: ; C3E6
	ds 1
wC3E7:: ; C3E7
	ds 1
wC3E8:: ; C3E8
	ds 1
wC3E9:: ; C3E9
	ds 1
wC3EA:: ; C3EA
	ds 1
wC3EB:: ; C3EB
	ds 1
wC3EC:: ; C3EC
	ds 1
wC3ED:: ; C3ED
	ds 1
wC3EE:: ; C3EE
	ds 1
wC3EF:: ; C3EF
	ds 1
wC3F0:: ; C3F0
	ds 1
wC3F1:: ; C3F1
	ds 1
wC3F2:: ; C3F2
	ds 1
wC3F3:: ; C3F3
	ds 1
wC3F4:: ; C3F4
	ds 1
wC3F5:: ; C3F5
	ds 1
wC3F6:: ; C3F6
	ds 1
wC3F7:: ; C3F7
	ds 1
wC3F8:: ; C3F8
	ds 1
wC3F9:: ; C3F9
	ds 1
wC3FA:: ; C3FA
	ds 1
wC3FB:: ; C3FB
	ds 1
wC3FC:: ; C3FC
	ds 1
wC3FD:: ; C3FD
	ds 1
wC3FE:: ; C3FE
	ds 1
wC3FF:: ; C3FF
	ds 1
wC400:: ; C400
	ds 1
wC401:: ; C401
	ds 1
wC402:: ; C402
	ds 1
wC403:: ; C403
	ds 1
wC404:: ; C404
	ds 1
wC405:: ; C405
	ds 1
wC406:: ; C406
	ds 1
wC407:: ; C407
	ds 1
wC408:: ; C408
	ds 1
wC409:: ; C409
	ds 1
wC40A:: ; C40A
	ds 1
wC40B:: ; C40B
	ds 1
wC40C:: ; C40C
	ds 1
wC40D:: ; C40D
	ds 1
wC40E:: ; C40E
	ds 1
wC40F:: ; C40F
	ds 1
wC410:: ; C410
	ds 1
wC411:: ; C411
	ds 1
wC412:: ; C412
	ds 1
wC413:: ; C413
	ds 1
wC414:: ; C414
	ds 1
wC415:: ; C415
	ds 1
wC416:: ; C416
	ds 1
wC417:: ; C417
	ds 1
wC418:: ; C418
	ds 1
wC419:: ; C419
	ds 1
wC41A:: ; C41A
	ds 1
wC41B:: ; C41B
	ds 1
wC41C:: ; C41C
	ds 1
wC41D:: ; C41D
	ds 1
wC41E:: ; C41E
	ds 1
wC41F:: ; C41F
	ds 1
wC420:: ; C420
	ds 1
wC421:: ; C421
	ds 1
wC422:: ; C422
	ds 1
wC423:: ; C423
	ds 1
wC424:: ; C424
	ds 1
wC425:: ; C425
	ds 1
wC426:: ; C426
	ds 1
wC427:: ; C427
	ds 1
wC428:: ; C428
	ds 1
wC429:: ; C429
	ds 1
wC42A:: ; C42A
	ds 1
wC42B:: ; C42B
	ds 1
wC42C:: ; C42C
	ds 1
wC42D:: ; C42D
	ds 1
wC42E:: ; C42E
	ds 1
wC42F:: ; C42F
	ds 1
wC430:: ; C430
	ds 1
wC431:: ; C431
	ds 1
wC432:: ; C432
	ds 1
wC433:: ; C433
	ds 1
wC434:: ; C434
	ds 1
wC435:: ; C435
	ds 1
wC436:: ; C436
	ds 1
wC437:: ; C437
	ds 1
wC438:: ; C438
	ds 1
wC439:: ; C439
	ds 1
wC43A:: ; C43A
	ds 1
wC43B:: ; C43B
	ds 1
wC43C:: ; C43C
	ds 1
wC43D:: ; C43D
	ds 1
wC43E:: ; C43E
	ds 1
wC43F:: ; C43F
	ds 1
wC440:: ; C440
	ds 1
wC441:: ; C441
	ds 1
wC442:: ; C442
	ds 1
wC443:: ; C443
	ds 1
wC444:: ; C444
	ds 1
wC445:: ; C445
	ds 1
wC446:: ; C446
	ds 1
wC447:: ; C447
	ds 1
wC448:: ; C448
	ds 1
wC449:: ; C449
	ds 1
wC44A:: ; C44A
	ds 1
wC44B:: ; C44B
	ds 1
wC44C:: ; C44C
	ds 1
wC44D:: ; C44D
	ds 1
wC44E:: ; C44E
	ds 1
wC44F:: ; C44F
	ds 1
wC450:: ; C450
	ds 1
wC451:: ; C451
	ds 1
wC452:: ; C452
	ds 1
wC453:: ; C453
	ds 1
wC454:: ; C454
	ds 1
wC455:: ; C455
	ds 1
wC456:: ; C456
	ds 1
wC457:: ; C457
	ds 1
wC458:: ; C458
	ds 1
wC459:: ; C459
	ds 1
wC45A:: ; C45A
	ds 1
wC45B:: ; C45B
	ds 1
wC45C:: ; C45C
	ds 1
wC45D:: ; C45D
	ds 1
wC45E:: ; C45E
	ds 1
wC45F:: ; C45F
	ds 1
wC460:: ; C460
	ds 1
wC461:: ; C461
	ds 1
wC462:: ; C462
	ds 1
wC463:: ; C463
	ds 1
wC464:: ; C464
	ds 1
wC465:: ; C465
	ds 1
wC466:: ; C466
	ds 1
wC467:: ; C467
	ds 1
wC468:: ; C468
	ds 1
wC469:: ; C469
	ds 1
wC46A:: ; C46A
	ds 1
wC46B:: ; C46B
	ds 1
wC46C:: ; C46C
	ds 1
wC46D:: ; C46D
	ds 1
wC46E:: ; C46E
	ds 1
wC46F:: ; C46F
	ds 1
wC470:: ; C470
	ds 1
wC471:: ; C471
	ds 1
wC472:: ; C472
	ds 1
wC473:: ; C473
	ds 1
wC474:: ; C474
	ds 1
wC475:: ; C475
	ds 1
wC476:: ; C476
	ds 1
wC477:: ; C477
	ds 1
wC478:: ; C478
	ds 1
wC479:: ; C479
	ds 1
wC47A:: ; C47A
	ds 1
wC47B:: ; C47B
	ds 1
wC47C:: ; C47C
	ds 1
wC47D:: ; C47D
	ds 1
wC47E:: ; C47E
	ds 1
wC47F:: ; C47F
	ds 1
wC480:: ; C480
	ds 1
wC481:: ; C481
	ds 1
wC482:: ; C482
	ds 1
wC483:: ; C483
	ds 1
wC484:: ; C484
	ds 1
wC485:: ; C485
	ds 1
wC486:: ; C486
	ds 1
wC487:: ; C487
	ds 1
wC488:: ; C488
	ds 1
wC489:: ; C489
	ds 1
wC48A:: ; C48A
	ds 1
wC48B:: ; C48B
	ds 1
wC48C:: ; C48C
	ds 1
wC48D:: ; C48D
	ds 1
wC48E:: ; C48E
	ds 1
wC48F:: ; C48F
	ds 1
wC490:: ; C490
	ds 1
wC491:: ; C491
	ds 1
wC492:: ; C492
	ds 1
wC493:: ; C493
	ds 1
wC494:: ; C494
	ds 1
wC495:: ; C495
	ds 1
wC496:: ; C496
	ds 1
wC497:: ; C497
	ds 1
wC498:: ; C498
	ds 1
wC499:: ; C499
	ds 1
wC49A:: ; C49A
	ds 1
wC49B:: ; C49B
	ds 1
wC49C:: ; C49C
	ds 1
wC49D:: ; C49D
	ds 1
wC49E:: ; C49E
	ds 1
wC49F:: ; C49F
	ds 1
wC4A0:: ; C4A0
	ds 1
wC4A1:: ; C4A1
	ds 1
wC4A2:: ; C4A2
	ds 1
wC4A3:: ; C4A3
	ds 1
wC4A4:: ; C4A4
	ds 1
wC4A5:: ; C4A5
	ds 1
wC4A6:: ; C4A6
	ds 1
wC4A7:: ; C4A7
	ds 1
wC4A8:: ; C4A8
	ds 1
wC4A9:: ; C4A9
	ds 1
wC4AA:: ; C4AA
	ds 1
wC4AB:: ; C4AB
	ds 1
wC4AC:: ; C4AC
	ds 1
wC4AD:: ; C4AD
	ds 1
wC4AE:: ; C4AE
	ds 1
wC4AF:: ; C4AF
	ds 1
wC4B0:: ; C4B0
	ds 1
wC4B1:: ; C4B1
	ds 1
wC4B2:: ; C4B2
	ds 1
wC4B3:: ; C4B3
	ds 1
wC4B4:: ; C4B4
	ds 1
wC4B5:: ; C4B5
	ds 1
wC4B6:: ; C4B6
	ds 1
wC4B7:: ; C4B7
	ds 1
wC4B8:: ; C4B8
	ds 1
wC4B9:: ; C4B9
	ds 1
wC4BA:: ; C4BA
	ds 1
wC4BB:: ; C4BB
	ds 1
wC4BC:: ; C4BC
	ds 1
wC4BD:: ; C4BD
	ds 1
wC4BE:: ; C4BE
	ds 1
wC4BF:: ; C4BF
	ds 1
wC4C0:: ; C4C0
	ds 1
wC4C1:: ; C4C1
	ds 1
wC4C2:: ; C4C2
	ds 1
wC4C3:: ; C4C3
	ds 1
wC4C4:: ; C4C4
	ds 1
wC4C5:: ; C4C5
	ds 1
wC4C6:: ; C4C6
	ds 1
wC4C7:: ; C4C7
	ds 1
wC4C8:: ; C4C8
	ds 1
wC4C9:: ; C4C9
	ds 1
wC4CA:: ; C4CA
	ds 1
wC4CB:: ; C4CB
	ds 1
wC4CC:: ; C4CC
	ds 1
wC4CD:: ; C4CD
	ds 1
wC4CE:: ; C4CE
	ds 1
wC4CF:: ; C4CF
	ds 1
wC4D0:: ; C4D0
	ds 1
wC4D1:: ; C4D1
	ds 1
wC4D2:: ; C4D2
	ds 1
wC4D3:: ; C4D3
	ds 1
wC4D4:: ; C4D4
	ds 1
wC4D5:: ; C4D5
	ds 1
wC4D6:: ; C4D6
	ds 1
wC4D7:: ; C4D7
	ds 1
wC4D8:: ; C4D8
	ds 1
wC4D9:: ; C4D9
	ds 1
wC4DA:: ; C4DA
	ds 1
wC4DB:: ; C4DB
	ds 1
wC4DC:: ; C4DC
	ds 1
wC4DD:: ; C4DD
	ds 1
wC4DE:: ; C4DE
	ds 1
wC4DF:: ; C4DF
	ds 1
wC4E0:: ; C4E0
	ds 1
wC4E1:: ; C4E1
	ds 1
wC4E2:: ; C4E2
	ds 1
wC4E3:: ; C4E3
	ds 1
wC4E4:: ; C4E4
	ds 1
wC4E5:: ; C4E5
	ds 1
wC4E6:: ; C4E6
	ds 1
wC4E7:: ; C4E7
	ds 1
wC4E8:: ; C4E8
	ds 1
wC4E9:: ; C4E9
	ds 1
wC4EA:: ; C4EA
	ds 1
wC4EB:: ; C4EB
	ds 1
wC4EC:: ; C4EC
	ds 1
wC4ED:: ; C4ED
	ds 1
wC4EE:: ; C4EE
	ds 1
wC4EF:: ; C4EF
	ds 1
wC4F0:: ; C4F0
	ds 1
wC4F1:: ; C4F1
	ds 1
wC4F2:: ; C4F2
	ds 1
wC4F3:: ; C4F3
	ds 1
wC4F4:: ; C4F4
	ds 1
wC4F5:: ; C4F5
	ds 1
wC4F6:: ; C4F6
	ds 1
wC4F7:: ; C4F7
	ds 1
wC4F8:: ; C4F8
	ds 1
wC4F9:: ; C4F9
	ds 1
wC4FA:: ; C4FA
	ds 1
wC4FB:: ; C4FB
	ds 1
wC4FC:: ; C4FC
	ds 1
wC4FD:: ; C4FD
	ds 1
wC4FE:: ; C4FE
	ds 1
wC4FF:: ; C4FF
	ds 1
wC500:: ; C500
	ds 1
wC501:: ; C501
	ds 1
wC502:: ; C502
	ds 1
wC503:: ; C503
	ds 1
wC504:: ; C504
	ds 1
wC505:: ; C505
	ds 1
wC506:: ; C506
	ds 1
wC507:: ; C507
	ds 1
wC508:: ; C508
	ds 1
wC509:: ; C509
	ds 1
wC50A:: ; C50A
	ds 1
wC50B:: ; C50B
	ds 1
wC50C:: ; C50C
	ds 1
wC50D:: ; C50D
	ds 1
wC50E:: ; C50E
	ds 1
wC50F:: ; C50F
	ds 1
wC510:: ; C510
	ds 1
wC511:: ; C511
	ds 1
wC512:: ; C512
	ds 1
wC513:: ; C513
	ds 1
wC514:: ; C514
	ds 1
wC515:: ; C515
	ds 1
wC516:: ; C516
	ds 1
wC517:: ; C517
	ds 1
wC518:: ; C518
	ds 1
wC519:: ; C519
	ds 1
wC51A:: ; C51A
	ds 1
wC51B:: ; C51B
	ds 1
wC51C:: ; C51C
	ds 1
wC51D:: ; C51D
	ds 1
wC51E:: ; C51E
	ds 1
wC51F:: ; C51F
	ds 1
wC520:: ; C520
	ds 1
wC521:: ; C521
	ds 1
wC522:: ; C522
	ds 1
wC523:: ; C523
	ds 1
wC524:: ; C524
	ds 1
wC525:: ; C525
	ds 1
wC526:: ; C526
	ds 1
wC527:: ; C527
	ds 1
wC528:: ; C528
	ds 1
wC529:: ; C529
	ds 1
wC52A:: ; C52A
	ds 1
wC52B:: ; C52B
	ds 1
wC52C:: ; C52C
	ds 1
wC52D:: ; C52D
	ds 1
wC52E:: ; C52E
	ds 1
wC52F:: ; C52F
	ds 1
wC530:: ; C530
	ds 1
wC531:: ; C531
	ds 1
wC532:: ; C532
	ds 1
wC533:: ; C533
	ds 1
wC534:: ; C534
	ds 1
wC535:: ; C535
	ds 1
wC536:: ; C536
	ds 1
wC537:: ; C537
	ds 1
wC538:: ; C538
	ds 1
wC539:: ; C539
	ds 1
wC53A:: ; C53A
	ds 1
wC53B:: ; C53B
	ds 1
wC53C:: ; C53C
	ds 1
wC53D:: ; C53D
	ds 1
wC53E:: ; C53E
	ds 1
wC53F:: ; C53F
	ds 1
wC540:: ; C540
	ds 1
wC541:: ; C541
	ds 1
wC542:: ; C542
	ds 1
wC543:: ; C543
	ds 1
wC544:: ; C544
	ds 1
wC545:: ; C545
	ds 1
wC546:: ; C546
	ds 1
wC547:: ; C547
	ds 1
wC548:: ; C548
	ds 1
wC549:: ; C549
	ds 1
wC54A:: ; C54A
	ds 1
wC54B:: ; C54B
	ds 1
wC54C:: ; C54C
	ds 1
wC54D:: ; C54D
	ds 1
wC54E:: ; C54E
	ds 1
wC54F:: ; C54F
	ds 1
wC550:: ; C550
	ds 1
wC551:: ; C551
	ds 1
wC552:: ; C552
	ds 1
wC553:: ; C553
	ds 1
wC554:: ; C554
	ds 1
wC555:: ; C555
	ds 1
wC556:: ; C556
	ds 1
wC557:: ; C557
	ds 1
wC558:: ; C558
	ds 1
wC559:: ; C559
	ds 1
wC55A:: ; C55A
	ds 1
wC55B:: ; C55B
	ds 1
wC55C:: ; C55C
	ds 1
wC55D:: ; C55D
	ds 1
wC55E:: ; C55E
	ds 1
wC55F:: ; C55F
	ds 1
wC560:: ; C560
	ds 1
wC561:: ; C561
	ds 1
wC562:: ; C562
	ds 1
wC563:: ; C563
	ds 1
wC564:: ; C564
	ds 1
wC565:: ; C565
	ds 1
wC566:: ; C566
	ds 1
wC567:: ; C567
	ds 1
wC568:: ; C568
	ds 1
wC569:: ; C569
	ds 1
wC56A:: ; C56A
	ds 1
wC56B:: ; C56B
	ds 1
wC56C:: ; C56C
	ds 1
wC56D:: ; C56D
	ds 1
wC56E:: ; C56E
	ds 1
wC56F:: ; C56F
	ds 1
wC570:: ; C570
	ds 1
wC571:: ; C571
	ds 1
wC572:: ; C572
	ds 1
wC573:: ; C573
	ds 1
wC574:: ; C574
	ds 1
wC575:: ; C575
	ds 1
wC576:: ; C576
	ds 1
wC577:: ; C577
	ds 1
wC578:: ; C578
	ds 1
wC579:: ; C579
	ds 1
wC57A:: ; C57A
	ds 1
wC57B:: ; C57B
	ds 1
wC57C:: ; C57C
	ds 1
wC57D:: ; C57D
	ds 1
wC57E:: ; C57E
	ds 1
wC57F:: ; C57F
	ds 1
wC580:: ; C580
	ds 1
wC581:: ; C581
	ds 1
wC582:: ; C582
	ds 1
wC583:: ; C583
	ds 1
wC584:: ; C584
	ds 1
wC585:: ; C585
	ds 1
wC586:: ; C586
	ds 1
wC587:: ; C587
	ds 1
wC588:: ; C588
	ds 1
wC589:: ; C589
	ds 1
wC58A:: ; C58A
	ds 1
wC58B:: ; C58B
	ds 1
wC58C:: ; C58C
	ds 1
wC58D:: ; C58D
	ds 1
wC58E:: ; C58E
	ds 1
wC58F:: ; C58F
	ds 1
wC590:: ; C590
	ds 1
wC591:: ; C591
	ds 1
wC592:: ; C592
	ds 1
wC593:: ; C593
	ds 1
wC594:: ; C594
	ds 1
wC595:: ; C595
	ds 1
wC596:: ; C596
	ds 1
wC597:: ; C597
	ds 1
wC598:: ; C598
	ds 1
wC599:: ; C599
	ds 1
wC59A:: ; C59A
	ds 1
wC59B:: ; C59B
	ds 1
wC59C:: ; C59C
	ds 1
wC59D:: ; C59D
	ds 1
wC59E:: ; C59E
	ds 1
wC59F:: ; C59F
	ds 1
wC5A0:: ; C5A0
	ds 1
wC5A1:: ; C5A1
	ds 1
wC5A2:: ; C5A2
	ds 1
wC5A3:: ; C5A3
	ds 1
wC5A4:: ; C5A4
	ds 1
wC5A5:: ; C5A5
	ds 1
wC5A6:: ; C5A6
	ds 1
wC5A7:: ; C5A7
	ds 1
wC5A8:: ; C5A8
	ds 1
wC5A9:: ; C5A9
	ds 1
wC5AA:: ; C5AA
	ds 1
wC5AB:: ; C5AB
	ds 1
wC5AC:: ; C5AC
	ds 1
wC5AD:: ; C5AD
	ds 1
wC5AE:: ; C5AE
	ds 1
wC5AF:: ; C5AF
	ds 1
wC5B0:: ; C5B0
	ds 1
wC5B1:: ; C5B1
	ds 1
wC5B2:: ; C5B2
	ds 1
wC5B3:: ; C5B3
	ds 1
wC5B4:: ; C5B4
	ds 1
wC5B5:: ; C5B5
	ds 1
wC5B6:: ; C5B6
	ds 1
wC5B7:: ; C5B7
	ds 1
wC5B8:: ; C5B8
	ds 1
wC5B9:: ; C5B9
	ds 1
wC5BA:: ; C5BA
	ds 1
wC5BB:: ; C5BB
	ds 1
wC5BC:: ; C5BC
	ds 1
wC5BD:: ; C5BD
	ds 1
wC5BE:: ; C5BE
	ds 1
wC5BF:: ; C5BF
	ds 1
wC5C0:: ; C5C0
	ds 1
wC5C1:: ; C5C1
	ds 1
wC5C2:: ; C5C2
	ds 1
wC5C3:: ; C5C3
	ds 1
wC5C4:: ; C5C4
	ds 1
wC5C5:: ; C5C5
	ds 1
wC5C6:: ; C5C6
	ds 1
wC5C7:: ; C5C7
	ds 1
wC5C8:: ; C5C8
	ds 1
wC5C9:: ; C5C9
	ds 1
wC5CA:: ; C5CA
	ds 1
wC5CB:: ; C5CB
	ds 1
wC5CC:: ; C5CC
	ds 1
wC5CD:: ; C5CD
	ds 1
wC5CE:: ; C5CE
	ds 1
wC5CF:: ; C5CF
	ds 1
wC5D0:: ; C5D0
	ds 1
wC5D1:: ; C5D1
	ds 1
wC5D2:: ; C5D2
	ds 1
wC5D3:: ; C5D3
	ds 1
wC5D4:: ; C5D4
	ds 1
wC5D5:: ; C5D5
	ds 1
wC5D6:: ; C5D6
	ds 1
wC5D7:: ; C5D7
	ds 1
wC5D8:: ; C5D8
	ds 1
wC5D9:: ; C5D9
	ds 1
wC5DA:: ; C5DA
	ds 1
wC5DB:: ; C5DB
	ds 1
wC5DC:: ; C5DC
	ds 1
wC5DD:: ; C5DD
	ds 1
wC5DE:: ; C5DE
	ds 1
wC5DF:: ; C5DF
	ds 1
wC5E0:: ; C5E0
	ds 1
wC5E1:: ; C5E1
	ds 1
wC5E2:: ; C5E2
	ds 1
wC5E3:: ; C5E3
	ds 1
wC5E4:: ; C5E4
	ds 1
wC5E5:: ; C5E5
	ds 1
wC5E6:: ; C5E6
	ds 1
wC5E7:: ; C5E7
	ds 1
wC5E8:: ; C5E8
	ds 1
wC5E9:: ; C5E9
	ds 1
wC5EA:: ; C5EA
	ds 1
wC5EB:: ; C5EB
	ds 1
wC5EC:: ; C5EC
	ds 1
wC5ED:: ; C5ED
	ds 1
wC5EE:: ; C5EE
	ds 1
wC5EF:: ; C5EF
	ds 1
wC5F0:: ; C5F0
	ds 1
wC5F1:: ; C5F1
	ds 1
wC5F2:: ; C5F2
	ds 1
wC5F3:: ; C5F3
	ds 1
wC5F4:: ; C5F4
	ds 1
wC5F5:: ; C5F5
	ds 1
wC5F6:: ; C5F6
	ds 1
wC5F7:: ; C5F7
	ds 1
wC5F8:: ; C5F8
	ds 1
wC5F9:: ; C5F9
	ds 1
wC5FA:: ; C5FA
	ds 1
wC5FB:: ; C5FB
	ds 1
wC5FC:: ; C5FC
	ds 1
wC5FD:: ; C5FD
	ds 1
wC5FE:: ; C5FE
	ds 1
wC5FF:: ; C5FF
	ds 1
wC600:: ; C600
	ds 1
wC601:: ; C601
	ds 1
wC602:: ; C602
	ds 1
wC603:: ; C603
	ds 1
wC604:: ; C604
	ds 1
wC605:: ; C605
	ds 1
wC606:: ; C606
	ds 1
wC607:: ; C607
	ds 1
wC608:: ; C608
	ds 1
wC609:: ; C609
	ds 1
wC60A:: ; C60A
	ds 1
wC60B:: ; C60B
	ds 1
wC60C:: ; C60C
	ds 1
wC60D:: ; C60D
	ds 1
wC60E:: ; C60E
	ds 1
wC60F:: ; C60F
	ds 1
wC610:: ; C610
	ds 1
wC611:: ; C611
	ds 1
wC612:: ; C612
	ds 1
wC613:: ; C613
	ds 1
wC614:: ; C614
	ds 1
wC615:: ; C615
	ds 1
wC616:: ; C616
	ds 1
wC617:: ; C617
	ds 1
wC618:: ; C618
	ds 1
wC619:: ; C619
	ds 1
wC61A:: ; C61A
	ds 1
wC61B:: ; C61B
	ds 1
wC61C:: ; C61C
	ds 1
wC61D:: ; C61D
	ds 1
wC61E:: ; C61E
	ds 1
wC61F:: ; C61F
	ds 1
wC620:: ; C620
	ds 1
wC621:: ; C621
	ds 1
wC622:: ; C622
	ds 1
wC623:: ; C623
	ds 1
wC624:: ; C624
	ds 1
wC625:: ; C625
	ds 1
wC626:: ; C626
	ds 1
wC627:: ; C627
	ds 1
wC628:: ; C628
	ds 1
wC629:: ; C629
	ds 1
wC62A:: ; C62A
	ds 1
wC62B:: ; C62B
	ds 1
wC62C:: ; C62C
	ds 1
wC62D:: ; C62D
	ds 1
wC62E:: ; C62E
	ds 1
wC62F:: ; C62F
	ds 1
wC630:: ; C630
	ds 1
wC631:: ; C631
	ds 1
wC632:: ; C632
	ds 1
wC633:: ; C633
	ds 1
wC634:: ; C634
	ds 1
wC635:: ; C635
	ds 1
wC636:: ; C636
	ds 1
wC637:: ; C637
	ds 1
wC638:: ; C638
	ds 1
wC639:: ; C639
	ds 1
wC63A:: ; C63A
	ds 1
wC63B:: ; C63B
	ds 1
wC63C:: ; C63C
	ds 1
wC63D:: ; C63D
	ds 1
wC63E:: ; C63E
	ds 1
wC63F:: ; C63F
	ds 1
wC640:: ; C640
	ds 1
wC641:: ; C641
	ds 1
wC642:: ; C642
	ds 1
wC643:: ; C643
	ds 1
wC644:: ; C644
	ds 1
wC645:: ; C645
	ds 1
wC646:: ; C646
	ds 1
wC647:: ; C647
	ds 1
wC648:: ; C648
	ds 1
wC649:: ; C649
	ds 1
wC64A:: ; C64A
	ds 1
wC64B:: ; C64B
	ds 1
wC64C:: ; C64C
	ds 1
wC64D:: ; C64D
	ds 1
wC64E:: ; C64E
	ds 1
wC64F:: ; C64F
	ds 1
wC650:: ; C650
	ds 1
wC651:: ; C651
	ds 1
wC652:: ; C652
	ds 1
wC653:: ; C653
	ds 1
wC654:: ; C654
	ds 1
wC655:: ; C655
	ds 1
wC656:: ; C656
	ds 1
wC657:: ; C657
	ds 1
wC658:: ; C658
	ds 1
wC659:: ; C659
	ds 1
wC65A:: ; C65A
	ds 1
wC65B:: ; C65B
	ds 1
wC65C:: ; C65C
	ds 1
wC65D:: ; C65D
	ds 1
wC65E:: ; C65E
	ds 1
wC65F:: ; C65F
	ds 1
wC660:: ; C660
	ds 1
wC661:: ; C661
	ds 1
wC662:: ; C662
	ds 1
wC663:: ; C663
	ds 1
wC664:: ; C664
	ds 1
wC665:: ; C665
	ds 1
wC666:: ; C666
	ds 1
wC667:: ; C667
	ds 1
wC668:: ; C668
	ds 1
wC669:: ; C669
	ds 1
wC66A:: ; C66A
	ds 1
wC66B:: ; C66B
	ds 1
wC66C:: ; C66C
	ds 1
wC66D:: ; C66D
	ds 1
wC66E:: ; C66E
	ds 1
wC66F:: ; C66F
	ds 1
wC670:: ; C670
	ds 1
wC671:: ; C671
	ds 1
wC672:: ; C672
	ds 1
wC673:: ; C673
	ds 1
wC674:: ; C674
	ds 1
wC675:: ; C675
	ds 1
wC676:: ; C676
	ds 1
wC677:: ; C677
	ds 1
wC678:: ; C678
	ds 1
wC679:: ; C679
	ds 1
wC67A:: ; C67A
	ds 1
wC67B:: ; C67B
	ds 1
wC67C:: ; C67C
	ds 1
wC67D:: ; C67D
	ds 1
wC67E:: ; C67E
	ds 1
wC67F:: ; C67F
	ds 1
wC680:: ; C680
	ds 1
wC681:: ; C681
	ds 1
wC682:: ; C682
	ds 1
wC683:: ; C683
	ds 1
wC684:: ; C684
	ds 1
wC685:: ; C685
	ds 1
wC686:: ; C686
	ds 1
wC687:: ; C687
	ds 1
wC688:: ; C688
	ds 1
wC689:: ; C689
	ds 1
wC68A:: ; C68A
	ds 1
wC68B:: ; C68B
	ds 1
wC68C:: ; C68C
	ds 1
wC68D:: ; C68D
	ds 1
wC68E:: ; C68E
	ds 1
wC68F:: ; C68F
	ds 1
wC690:: ; C690
	ds 1
wC691:: ; C691
	ds 1
wC692:: ; C692
	ds 1
wC693:: ; C693
	ds 1
wC694:: ; C694
	ds 1
wC695:: ; C695
	ds 1
wC696:: ; C696
	ds 1
wC697:: ; C697
	ds 1
wC698:: ; C698
	ds 1
wC699:: ; C699
	ds 1
wC69A:: ; C69A
	ds 1
wC69B:: ; C69B
	ds 1
wC69C:: ; C69C
	ds 1
wC69D:: ; C69D
	ds 1
wC69E:: ; C69E
	ds 1
wC69F:: ; C69F
	ds 1
wC6A0:: ; C6A0
	ds 1
wC6A1:: ; C6A1
	ds 1
wC6A2:: ; C6A2
	ds 1
wC6A3:: ; C6A3
	ds 1
wC6A4:: ; C6A4
	ds 1
wC6A5:: ; C6A5
	ds 1
wC6A6:: ; C6A6
	ds 1
wC6A7:: ; C6A7
	ds 1
wC6A8:: ; C6A8
	ds 1
wC6A9:: ; C6A9
	ds 1
wC6AA:: ; C6AA
	ds 1
wC6AB:: ; C6AB
	ds 1
wC6AC:: ; C6AC
	ds 1
wC6AD:: ; C6AD
	ds 1
wC6AE:: ; C6AE
	ds 1
wC6AF:: ; C6AF
	ds 1
wC6B0:: ; C6B0
	ds 1
wC6B1:: ; C6B1
	ds 1
wC6B2:: ; C6B2
	ds 1
wC6B3:: ; C6B3
	ds 1
wC6B4:: ; C6B4
	ds 1
wC6B5:: ; C6B5
	ds 1
wC6B6:: ; C6B6
	ds 1
wC6B7:: ; C6B7
	ds 1
wC6B8:: ; C6B8
	ds 1
wC6B9:: ; C6B9
	ds 1
wC6BA:: ; C6BA
	ds 1
wC6BB:: ; C6BB
	ds 1
wC6BC:: ; C6BC
	ds 1
wC6BD:: ; C6BD
	ds 1
wC6BE:: ; C6BE
	ds 1
wC6BF:: ; C6BF
	ds 1
wC6C0:: ; C6C0
	ds 1
wC6C1:: ; C6C1
	ds 1
wC6C2:: ; C6C2
	ds 1
wC6C3:: ; C6C3
	ds 1
wC6C4:: ; C6C4
	ds 1
wC6C5:: ; C6C5
	ds 1
wC6C6:: ; C6C6
	ds 1
wC6C7:: ; C6C7
	ds 1
wC6C8:: ; C6C8
	ds 1
wC6C9:: ; C6C9
	ds 1
wC6CA:: ; C6CA
	ds 1
wC6CB:: ; C6CB
	ds 1
wC6CC:: ; C6CC
	ds 1
wC6CD:: ; C6CD
	ds 1
wC6CE:: ; C6CE
	ds 1
wC6CF:: ; C6CF
	ds 1
wC6D0:: ; C6D0
	ds 1
wC6D1:: ; C6D1
	ds 1
wC6D2:: ; C6D2
	ds 1
wC6D3:: ; C6D3
	ds 1
wC6D4:: ; C6D4
	ds 1
wC6D5:: ; C6D5
	ds 1
wC6D6:: ; C6D6
	ds 1
wC6D7:: ; C6D7
	ds 1
wC6D8:: ; C6D8
	ds 1
wC6D9:: ; C6D9
	ds 1
wC6DA:: ; C6DA
	ds 1
wC6DB:: ; C6DB
	ds 1
wC6DC:: ; C6DC
	ds 1
wC6DD:: ; C6DD
	ds 1
wC6DE:: ; C6DE
	ds 1
wC6DF:: ; C6DF
	ds 1
wC6E0:: ; C6E0
	ds 1
wC6E1:: ; C6E1
	ds 1
wC6E2:: ; C6E2
	ds 1
wC6E3:: ; C6E3
	ds 1
wC6E4:: ; C6E4
	ds 1
wC6E5:: ; C6E5
	ds 1
wC6E6:: ; C6E6
	ds 1
wC6E7:: ; C6E7
	ds 1
wC6E8:: ; C6E8
	ds 1
wC6E9:: ; C6E9
	ds 1
wC6EA:: ; C6EA
	ds 1
wC6EB:: ; C6EB
	ds 1
wC6EC:: ; C6EC
	ds 1
wC6ED:: ; C6ED
	ds 1
wC6EE:: ; C6EE
	ds 1
wC6EF:: ; C6EF
	ds 1
wC6F0:: ; C6F0
	ds 1
wC6F1:: ; C6F1
	ds 1
wC6F2:: ; C6F2
	ds 1
wC6F3:: ; C6F3
	ds 1
wC6F4:: ; C6F4
	ds 1
wC6F5:: ; C6F5
	ds 1
wC6F6:: ; C6F6
	ds 1
wC6F7:: ; C6F7
	ds 1
wC6F8:: ; C6F8
	ds 1
wC6F9:: ; C6F9
	ds 1
wC6FA:: ; C6FA
	ds 1
wC6FB:: ; C6FB
	ds 1
wC6FC:: ; C6FC
	ds 1
wC6FD:: ; C6FD
	ds 1
wC6FE:: ; C6FE
	ds 1
wC6FF:: ; C6FF
	ds 1
wC700:: ; C700
	ds 1
wC701:: ; C701
	ds 1
wC702:: ; C702
	ds 1
wC703:: ; C703
	ds 1
wC704:: ; C704
	ds 1
wC705:: ; C705
	ds 1
wC706:: ; C706
	ds 1
wC707:: ; C707
	ds 1
wC708:: ; C708
	ds 1
wC709:: ; C709
	ds 1
wC70A:: ; C70A
	ds 1
wC70B:: ; C70B
	ds 1
wC70C:: ; C70C
	ds 1
wC70D:: ; C70D
	ds 1
wC70E:: ; C70E
	ds 1
wC70F:: ; C70F
	ds 1
wC710:: ; C710
	ds 1
wC711:: ; C711
	ds 1
wC712:: ; C712
	ds 1
wC713:: ; C713
	ds 1
wC714:: ; C714
	ds 1
wC715:: ; C715
	ds 1
wC716:: ; C716
	ds 1
wC717:: ; C717
	ds 1
wC718:: ; C718
	ds 1
wC719:: ; C719
	ds 1
wC71A:: ; C71A
	ds 1
wC71B:: ; C71B
	ds 1
wC71C:: ; C71C
	ds 1
wC71D:: ; C71D
	ds 1
wC71E:: ; C71E
	ds 1
wC71F:: ; C71F
	ds 1
wC720:: ; C720
	ds 1
wC721:: ; C721
	ds 1
wC722:: ; C722
	ds 1
wC723:: ; C723
	ds 1
wC724:: ; C724
	ds 1
wC725:: ; C725
	ds 1
wC726:: ; C726
	ds 1
wC727:: ; C727
	ds 1
wC728:: ; C728
	ds 1
wC729:: ; C729
	ds 1
wC72A:: ; C72A
	ds 1
wC72B:: ; C72B
	ds 1
wC72C:: ; C72C
	ds 1
wC72D:: ; C72D
	ds 1
wC72E:: ; C72E
	ds 1
wC72F:: ; C72F
	ds 1
wC730:: ; C730
	ds 1
wC731:: ; C731
	ds 1
wC732:: ; C732
	ds 1
wC733:: ; C733
	ds 1
wC734:: ; C734
	ds 1
wC735:: ; C735
	ds 1
wC736:: ; C736
	ds 1
wC737:: ; C737
	ds 1
wC738:: ; C738
	ds 1
wC739:: ; C739
	ds 1
wC73A:: ; C73A
	ds 1
wC73B:: ; C73B
	ds 1
wC73C:: ; C73C
	ds 1
wC73D:: ; C73D
	ds 1
wC73E:: ; C73E
	ds 1
wC73F:: ; C73F
	ds 1
wC740:: ; C740
	ds 1
wC741:: ; C741
	ds 1
wC742:: ; C742
	ds 1
wC743:: ; C743
	ds 1
wC744:: ; C744
	ds 1
wC745:: ; C745
	ds 1
wC746:: ; C746
	ds 1
wC747:: ; C747
	ds 1
wC748:: ; C748
	ds 1
wC749:: ; C749
	ds 1
wC74A:: ; C74A
	ds 1
wC74B:: ; C74B
	ds 1
wC74C:: ; C74C
	ds 1
wC74D:: ; C74D
	ds 1
wC74E:: ; C74E
	ds 1
wC74F:: ; C74F
	ds 1
wC750:: ; C750
	ds 1
wC751:: ; C751
	ds 1
wC752:: ; C752
	ds 1
wC753:: ; C753
	ds 1
wC754:: ; C754
	ds 1
wC755:: ; C755
	ds 1
wC756:: ; C756
	ds 1
wC757:: ; C757
	ds 1
wC758:: ; C758
	ds 1
wC759:: ; C759
	ds 1
wC75A:: ; C75A
	ds 1
wC75B:: ; C75B
	ds 1
wC75C:: ; C75C
	ds 1
wC75D:: ; C75D
	ds 1
wC75E:: ; C75E
	ds 1
wC75F:: ; C75F
	ds 1
wC760:: ; C760
	ds 1
wC761:: ; C761
	ds 1
wC762:: ; C762
	ds 1
wC763:: ; C763
	ds 1
wC764:: ; C764
	ds 1
wC765:: ; C765
	ds 1
wC766:: ; C766
	ds 1
wC767:: ; C767
	ds 1
wC768:: ; C768
	ds 1
wC769:: ; C769
	ds 1
wC76A:: ; C76A
	ds 1
wC76B:: ; C76B
	ds 1
wC76C:: ; C76C
	ds 1
wC76D:: ; C76D
	ds 1
wC76E:: ; C76E
	ds 1
wC76F:: ; C76F
	ds 1
wC770:: ; C770
	ds 1
wC771:: ; C771
	ds 1
wC772:: ; C772
	ds 1
wC773:: ; C773
	ds 1
wC774:: ; C774
	ds 1
wC775:: ; C775
	ds 1
wC776:: ; C776
	ds 1
wC777:: ; C777
	ds 1
wC778:: ; C778
	ds 1
wC779:: ; C779
	ds 1
wC77A:: ; C77A
	ds 1
wC77B:: ; C77B
	ds 1
wC77C:: ; C77C
	ds 1
wC77D:: ; C77D
	ds 1
wC77E:: ; C77E
	ds 1
wC77F:: ; C77F
	ds 1
wC780:: ; C780
	ds 1
wC781:: ; C781
	ds 1
wC782:: ; C782
	ds 1
wC783:: ; C783
	ds 1
wC784:: ; C784
	ds 1
wC785:: ; C785
	ds 1
wC786:: ; C786
	ds 1
wC787:: ; C787
	ds 1
wC788:: ; C788
	ds 1
wC789:: ; C789
	ds 1
wC78A:: ; C78A
	ds 1
wC78B:: ; C78B
	ds 1
wC78C:: ; C78C
	ds 1
wC78D:: ; C78D
	ds 1
wC78E:: ; C78E
	ds 1
wC78F:: ; C78F
	ds 1
wC790:: ; C790
	ds 1
wC791:: ; C791
	ds 1
wC792:: ; C792
	ds 1
wC793:: ; C793
	ds 1
wC794:: ; C794
	ds 1
wC795:: ; C795
	ds 1
wC796:: ; C796
	ds 1
wC797:: ; C797
	ds 1
wC798:: ; C798
	ds 1
wC799:: ; C799
	ds 1
wC79A:: ; C79A
	ds 1
wC79B:: ; C79B
	ds 1
wC79C:: ; C79C
	ds 1
wC79D:: ; C79D
	ds 1
wC79E:: ; C79E
	ds 1
wC79F:: ; C79F
	ds 1
wC7A0:: ; C7A0
	ds 1
wC7A1:: ; C7A1
	ds 1
wC7A2:: ; C7A2
	ds 1
wC7A3:: ; C7A3
	ds 1
wC7A4:: ; C7A4
	ds 1
wC7A5:: ; C7A5
	ds 1
wC7A6:: ; C7A6
	ds 1
wC7A7:: ; C7A7
	ds 1
wC7A8:: ; C7A8
	ds 1
wC7A9:: ; C7A9
	ds 1
wC7AA:: ; C7AA
	ds 1
wC7AB:: ; C7AB
	ds 1
wC7AC:: ; C7AC
	ds 1
wC7AD:: ; C7AD
	ds 1
wC7AE:: ; C7AE
	ds 1
wC7AF:: ; C7AF
	ds 1
wC7B0:: ; C7B0
	ds 1
wC7B1:: ; C7B1
	ds 1
wC7B2:: ; C7B2
	ds 1
wC7B3:: ; C7B3
	ds 1
wC7B4:: ; C7B4
	ds 1
wC7B5:: ; C7B5
	ds 1
wC7B6:: ; C7B6
	ds 1
wC7B7:: ; C7B7
	ds 1
wC7B8:: ; C7B8
	ds 1
wC7B9:: ; C7B9
	ds 1
wC7BA:: ; C7BA
	ds 1
wC7BB:: ; C7BB
	ds 1
wC7BC:: ; C7BC
	ds 1
wC7BD:: ; C7BD
	ds 1
wC7BE:: ; C7BE
	ds 1
wC7BF:: ; C7BF
	ds 1
wC7C0:: ; C7C0
	ds 1
wC7C1:: ; C7C1
	ds 1
wC7C2:: ; C7C2
	ds 1
wC7C3:: ; C7C3
	ds 1
wC7C4:: ; C7C4
	ds 1
wC7C5:: ; C7C5
	ds 1
wC7C6:: ; C7C6
	ds 1
wC7C7:: ; C7C7
	ds 1
wC7C8:: ; C7C8
	ds 1
wC7C9:: ; C7C9
	ds 1
wC7CA:: ; C7CA
	ds 1
wC7CB:: ; C7CB
	ds 1
wC7CC:: ; C7CC
	ds 1
wC7CD:: ; C7CD
	ds 1
wC7CE:: ; C7CE
	ds 1
wC7CF:: ; C7CF
	ds 1
wC7D0:: ; C7D0
	ds 1
wC7D1:: ; C7D1
	ds 1
wC7D2:: ; C7D2
	ds 1
wC7D3:: ; C7D3
	ds 1
wC7D4:: ; C7D4
	ds 1
wC7D5:: ; C7D5
	ds 1
wC7D6:: ; C7D6
	ds 1
wC7D7:: ; C7D7
	ds 1
wC7D8:: ; C7D8
	ds 1
wC7D9:: ; C7D9
	ds 1
wC7DA:: ; C7DA
	ds 1
wC7DB:: ; C7DB
	ds 1
wC7DC:: ; C7DC
	ds 1
wC7DD:: ; C7DD
	ds 1
wC7DE:: ; C7DE
	ds 1
wC7DF:: ; C7DF
	ds 1
wC7E0:: ; C7E0
	ds 1
wC7E1:: ; C7E1
	ds 1
wC7E2:: ; C7E2
	ds 1
wC7E3:: ; C7E3
	ds 1
wC7E4:: ; C7E4
	ds 1
wC7E5:: ; C7E5
	ds 1
wC7E6:: ; C7E6
	ds 1
wC7E7:: ; C7E7
	ds 1
wC7E8:: ; C7E8
	ds 1
wC7E9:: ; C7E9
	ds 1
wC7EA:: ; C7EA
	ds 1
wC7EB:: ; C7EB
	ds 1
wC7EC:: ; C7EC
	ds 1
wC7ED:: ; C7ED
	ds 1
wC7EE:: ; C7EE
	ds 1
wC7EF:: ; C7EF
	ds 1
wC7F0:: ; C7F0
	ds 1
wC7F1:: ; C7F1
	ds 1
wC7F2:: ; C7F2
	ds 1
wC7F3:: ; C7F3
	ds 1
wC7F4:: ; C7F4
	ds 1
wC7F5:: ; C7F5
	ds 1
wC7F6:: ; C7F6
	ds 1
wC7F7:: ; C7F7
	ds 1
wC7F8:: ; C7F8
	ds 1
wC7F9:: ; C7F9
	ds 1
wC7FA:: ; C7FA
	ds 1
wC7FB:: ; C7FB
	ds 1
wC7FC:: ; C7FC
	ds 1
wC7FD:: ; C7FD
	ds 1
wC7FE:: ; C7FE
	ds 1
wC7FF:: ; C7FF
	ds 1
wC800:: ; C800
	ds 1
wC801:: ; C801
	ds 1
wC802:: ; C802
	ds 1
wC803:: ; C803
	ds 1
wC804:: ; C804
	ds 1
wC805:: ; C805
	ds 1
wC806:: ; C806
	ds 1
wC807:: ; C807
	ds 1
wC808:: ; C808
	ds 1
wC809:: ; C809
	ds 1
wC80A:: ; C80A
	ds 1
wC80B:: ; C80B
	ds 1
wC80C:: ; C80C
	ds 1
wC80D:: ; C80D
	ds 1
wC80E:: ; C80E
	ds 1
wC80F:: ; C80F
	ds 1
wC810:: ; C810
	ds 1
wC811:: ; C811
	ds 1
wC812:: ; C812
	ds 1
wC813:: ; C813
	ds 1
wC814:: ; C814
	ds 1
wC815:: ; C815
	ds 1
wC816:: ; C816
	ds 1
wC817:: ; C817
	ds 1
wC818:: ; C818
	ds 1
wC819:: ; C819
	ds 1
wC81A:: ; C81A
	ds 1
wC81B:: ; C81B
	ds 1
wC81C:: ; C81C
	ds 1
wC81D:: ; C81D
	ds 1
wC81E:: ; C81E
	ds 1
wC81F:: ; C81F
	ds 1
wC820:: ; C820
	ds 1
wC821:: ; C821
	ds 1
wC822:: ; C822
	ds 1
wC823:: ; C823
	ds 1
wC824:: ; C824
	ds 1
wC825:: ; C825
	ds 1
wC826:: ; C826
	ds 1
wC827:: ; C827
	ds 1
wC828:: ; C828
	ds 1
wC829:: ; C829
	ds 1
wC82A:: ; C82A
	ds 1
wC82B:: ; C82B
	ds 1
wC82C:: ; C82C
	ds 1
wC82D:: ; C82D
	ds 1
wC82E:: ; C82E
	ds 1
wC82F:: ; C82F
	ds 1
wC830:: ; C830
	ds 1
wC831:: ; C831
	ds 1
wC832:: ; C832
	ds 1
wC833:: ; C833
	ds 1
wC834:: ; C834
	ds 1
wC835:: ; C835
	ds 1
wC836:: ; C836
	ds 1
wC837:: ; C837
	ds 1
wC838:: ; C838
	ds 1
wC839:: ; C839
	ds 1
wC83A:: ; C83A
	ds 1
wC83B:: ; C83B
	ds 1
wC83C:: ; C83C
	ds 1
wC83D:: ; C83D
	ds 1
wC83E:: ; C83E
	ds 1
wC83F:: ; C83F
	ds 1
wC840:: ; C840
	ds 1
wC841:: ; C841
	ds 1
wC842:: ; C842
	ds 1
wC843:: ; C843
	ds 1
wC844:: ; C844
	ds 1
wC845:: ; C845
	ds 1
wC846:: ; C846
	ds 1
wC847:: ; C847
	ds 1
wC848:: ; C848
	ds 1
wC849:: ; C849
	ds 1
wC84A:: ; C84A
	ds 1
wC84B:: ; C84B
	ds 1
wC84C:: ; C84C
	ds 1
wC84D:: ; C84D
	ds 1
wC84E:: ; C84E
	ds 1
wC84F:: ; C84F
	ds 1
wC850:: ; C850
	ds 1
wC851:: ; C851
	ds 1
wC852:: ; C852
	ds 1
wC853:: ; C853
	ds 1
wC854:: ; C854
	ds 1
wC855:: ; C855
	ds 1
wC856:: ; C856
	ds 1
wC857:: ; C857
	ds 1
wC858:: ; C858
	ds 1
wC859:: ; C859
	ds 1
wC85A:: ; C85A
	ds 1
wC85B:: ; C85B
	ds 1
wC85C:: ; C85C
	ds 1
wC85D:: ; C85D
	ds 1
wC85E:: ; C85E
	ds 1
wC85F:: ; C85F
	ds 1
wC860:: ; C860
	ds 1
wC861:: ; C861
	ds 1
wC862:: ; C862
	ds 1
wC863:: ; C863
	ds 1
wC864:: ; C864
	ds 1
wC865:: ; C865
	ds 1
wC866:: ; C866
	ds 1
wC867:: ; C867
	ds 1
wC868:: ; C868
	ds 1
wC869:: ; C869
	ds 1
wC86A:: ; C86A
	ds 1
wC86B:: ; C86B
	ds 1
wC86C:: ; C86C
	ds 1
wC86D:: ; C86D
	ds 1
wC86E:: ; C86E
	ds 1
wC86F:: ; C86F
	ds 1
wC870:: ; C870
	ds 1
wC871:: ; C871
	ds 1
wC872:: ; C872
	ds 1
wC873:: ; C873
	ds 1
wC874:: ; C874
	ds 1
wC875:: ; C875
	ds 1
wC876:: ; C876
	ds 1
wC877:: ; C877
	ds 1
wC878:: ; C878
	ds 1
wC879:: ; C879
	ds 1
wC87A:: ; C87A
	ds 1
wC87B:: ; C87B
	ds 1
wC87C:: ; C87C
	ds 1
wC87D:: ; C87D
	ds 1
wC87E:: ; C87E
	ds 1
wC87F:: ; C87F
	ds 1
wC880:: ; C880
	ds 1
wC881:: ; C881
	ds 1
wC882:: ; C882
	ds 1
wC883:: ; C883
	ds 1
wC884:: ; C884
	ds 1
wC885:: ; C885
	ds 1
wC886:: ; C886
	ds 1
wC887:: ; C887
	ds 1
wC888:: ; C888
	ds 1
wC889:: ; C889
	ds 1
wC88A:: ; C88A
	ds 1
wC88B:: ; C88B
	ds 1
wC88C:: ; C88C
	ds 1
wC88D:: ; C88D
	ds 1
wC88E:: ; C88E
	ds 1
wC88F:: ; C88F
	ds 1
wC890:: ; C890
	ds 1
wC891:: ; C891
	ds 1
wC892:: ; C892
	ds 1
wC893:: ; C893
	ds 1
wC894:: ; C894
	ds 1
wC895:: ; C895
	ds 1
wC896:: ; C896
	ds 1
wC897:: ; C897
	ds 1
wC898:: ; C898
	ds 1
wC899:: ; C899
	ds 1
wC89A:: ; C89A
	ds 1
wC89B:: ; C89B
	ds 1
wC89C:: ; C89C
	ds 1
wC89D:: ; C89D
	ds 1
wC89E:: ; C89E
	ds 1
wC89F:: ; C89F
	ds 1
wC8A0:: ; C8A0
	ds 1
wC8A1:: ; C8A1
	ds 1
wC8A2:: ; C8A2
	ds 1
wC8A3:: ; C8A3
	ds 1
wC8A4:: ; C8A4
	ds 1
wC8A5:: ; C8A5
	ds 1
wC8A6:: ; C8A6
	ds 1
wC8A7:: ; C8A7
	ds 1
wC8A8:: ; C8A8
	ds 1
wC8A9:: ; C8A9
	ds 1
wC8AA:: ; C8AA
	ds 1
wC8AB:: ; C8AB
	ds 1
wC8AC:: ; C8AC
	ds 1
wC8AD:: ; C8AD
	ds 1
wC8AE:: ; C8AE
	ds 1
wC8AF:: ; C8AF
	ds 1
wC8B0:: ; C8B0
	ds 1
wC8B1:: ; C8B1
	ds 1
wC8B2:: ; C8B2
	ds 1
wC8B3:: ; C8B3
	ds 1
wC8B4:: ; C8B4
	ds 1
wC8B5:: ; C8B5
	ds 1
wC8B6:: ; C8B6
	ds 1
wC8B7:: ; C8B7
	ds 1
wC8B8:: ; C8B8
	ds 1
wC8B9:: ; C8B9
	ds 1
wC8BA:: ; C8BA
	ds 1
wC8BB:: ; C8BB
	ds 1
wC8BC:: ; C8BC
	ds 1
wC8BD:: ; C8BD
	ds 1
wC8BE:: ; C8BE
	ds 1
wC8BF:: ; C8BF
	ds 1
wC8C0:: ; C8C0
	ds 1
wC8C1:: ; C8C1
	ds 1
wC8C2:: ; C8C2
	ds 1
wC8C3:: ; C8C3
	ds 1
wC8C4:: ; C8C4
	ds 1
wC8C5:: ; C8C5
	ds 1
wC8C6:: ; C8C6
	ds 1
wC8C7:: ; C8C7
	ds 1
wC8C8:: ; C8C8
	ds 1
wC8C9:: ; C8C9
	ds 1
wC8CA:: ; C8CA
	ds 1
wC8CB:: ; C8CB
	ds 1
wC8CC:: ; C8CC
	ds 1
wC8CD:: ; C8CD
	ds 1
wC8CE:: ; C8CE
	ds 1
wC8CF:: ; C8CF
	ds 1
wC8D0:: ; C8D0
	ds 1
wC8D1:: ; C8D1
	ds 1
wC8D2:: ; C8D2
	ds 1
wC8D3:: ; C8D3
	ds 1
wC8D4:: ; C8D4
	ds 1
wC8D5:: ; C8D5
	ds 1
wC8D6:: ; C8D6
	ds 1
wC8D7:: ; C8D7
	ds 1
wC8D8:: ; C8D8
	ds 1
wC8D9:: ; C8D9
	ds 1
wC8DA:: ; C8DA
	ds 1
wC8DB:: ; C8DB
	ds 1
wC8DC:: ; C8DC
	ds 1
wC8DD:: ; C8DD
	ds 1
wC8DE:: ; C8DE
	ds 1
wC8DF:: ; C8DF
	ds 1
wC8E0:: ; C8E0
	ds 1
wC8E1:: ; C8E1
	ds 1
wC8E2:: ; C8E2
	ds 1
wC8E3:: ; C8E3
	ds 1
wC8E4:: ; C8E4
	ds 1
wC8E5:: ; C8E5
	ds 1
wC8E6:: ; C8E6
	ds 1
wC8E7:: ; C8E7
	ds 1
wC8E8:: ; C8E8
	ds 1
wC8E9:: ; C8E9
	ds 1
wC8EA:: ; C8EA
	ds 1
wC8EB:: ; C8EB
	ds 1
wC8EC:: ; C8EC
	ds 1
wC8ED:: ; C8ED
	ds 1
wC8EE:: ; C8EE
	ds 1
wC8EF:: ; C8EF
	ds 1
wC8F0:: ; C8F0
	ds 1
wC8F1:: ; C8F1
	ds 1
wC8F2:: ; C8F2
	ds 1
wC8F3:: ; C8F3
	ds 1
wC8F4:: ; C8F4
	ds 1
wC8F5:: ; C8F5
	ds 1
wC8F6:: ; C8F6
	ds 1
wC8F7:: ; C8F7
	ds 1
wC8F8:: ; C8F8
	ds 1
wC8F9:: ; C8F9
	ds 1
wC8FA:: ; C8FA
	ds 1
wC8FB:: ; C8FB
	ds 1
wC8FC:: ; C8FC
	ds 1
wC8FD:: ; C8FD
	ds 1
wC8FE:: ; C8FE
	ds 1
wC8FF:: ; C8FF
	ds 1
wC900:: ; C900
	ds 1
wC901:: ; C901
	ds 1
wC902:: ; C902
	ds 1
wC903:: ; C903
	ds 1
wC904:: ; C904
	ds 1
wC905:: ; C905
	ds 1
wC906:: ; C906
	ds 1
wC907:: ; C907
	ds 1
wC908:: ; C908
	ds 1
wC909:: ; C909
	ds 1
wC90A:: ; C90A
	ds 1
wC90B:: ; C90B
	ds 1
wC90C:: ; C90C
	ds 1
wC90D:: ; C90D
	ds 1
wC90E:: ; C90E
	ds 1
wC90F:: ; C90F
	ds 1
wC910:: ; C910
	ds 1
wC911:: ; C911
	ds 1
wC912:: ; C912
	ds 1
wC913:: ; C913
	ds 1
wC914:: ; C914
	ds 1
wC915:: ; C915
	ds 1
wC916:: ; C916
	ds 1
wC917:: ; C917
	ds 1
wC918:: ; C918
	ds 1
wC919:: ; C919
	ds 1
wC91A:: ; C91A
	ds 1
wC91B:: ; C91B
	ds 1
wC91C:: ; C91C
	ds 1
wC91D:: ; C91D
	ds 1
wC91E:: ; C91E
	ds 1
wC91F:: ; C91F
	ds 1
wC920:: ; C920
	ds 1
wC921:: ; C921
	ds 1
wC922:: ; C922
	ds 1
wC923:: ; C923
	ds 1
wC924:: ; C924
	ds 1
wC925:: ; C925
	ds 1
wC926:: ; C926
	ds 1
wC927:: ; C927
	ds 1
wC928:: ; C928
	ds 1
wC929:: ; C929
	ds 1
wC92A:: ; C92A
	ds 1
wC92B:: ; C92B
	ds 1
wC92C:: ; C92C
	ds 1
wC92D:: ; C92D
	ds 1
wC92E:: ; C92E
	ds 1
wC92F:: ; C92F
	ds 1
wC930:: ; C930
	ds 1
wC931:: ; C931
	ds 1
wC932:: ; C932
	ds 1
wC933:: ; C933
	ds 1
wC934:: ; C934
	ds 1
wC935:: ; C935
	ds 1
wC936:: ; C936
	ds 1
wC937:: ; C937
	ds 1
wC938:: ; C938
	ds 1
wC939:: ; C939
	ds 1
wC93A:: ; C93A
	ds 1
wC93B:: ; C93B
	ds 1
wC93C:: ; C93C
	ds 1
wC93D:: ; C93D
	ds 1
wC93E:: ; C93E
	ds 1
wC93F:: ; C93F
	ds 1
wC940:: ; C940
	ds 1
wC941:: ; C941
	ds 1
wC942:: ; C942
	ds 1
wC943:: ; C943
	ds 1
wC944:: ; C944
	ds 1
wC945:: ; C945
	ds 1
wC946:: ; C946
	ds 1
wC947:: ; C947
	ds 1
wC948:: ; C948
	ds 1
wC949:: ; C949
	ds 1
wC94A:: ; C94A
	ds 1
wC94B:: ; C94B
	ds 1
wC94C:: ; C94C
	ds 1
wC94D:: ; C94D
	ds 1
wC94E:: ; C94E
	ds 1
wC94F:: ; C94F
	ds 1
wC950:: ; C950
	ds 1
wC951:: ; C951
	ds 1
wC952:: ; C952
	ds 1
wC953:: ; C953
	ds 1
wC954:: ; C954
	ds 1
wC955:: ; C955
	ds 1
wC956:: ; C956
	ds 1
wC957:: ; C957
	ds 1
wC958:: ; C958
	ds 1
wC959:: ; C959
	ds 1
wC95A:: ; C95A
	ds 1
wC95B:: ; C95B
	ds 1
wC95C:: ; C95C
	ds 1
wC95D:: ; C95D
	ds 1
wC95E:: ; C95E
	ds 1
wC95F:: ; C95F
	ds 1
wC960:: ; C960
	ds 1
wC961:: ; C961
	ds 1
wC962:: ; C962
	ds 1
wC963:: ; C963
	ds 1
wC964:: ; C964
	ds 1
wC965:: ; C965
	ds 1
wC966:: ; C966
	ds 1
wC967:: ; C967
	ds 1
wC968:: ; C968
	ds 1
wC969:: ; C969
	ds 1
wC96A:: ; C96A
	ds 1
wC96B:: ; C96B
	ds 1
wC96C:: ; C96C
	ds 1
wC96D:: ; C96D
	ds 1
wC96E:: ; C96E
	ds 1
wC96F:: ; C96F
	ds 1
wC970:: ; C970
	ds 1
wC971:: ; C971
	ds 1
wC972:: ; C972
	ds 1
wC973:: ; C973
	ds 1
wC974:: ; C974
	ds 1
wC975:: ; C975
	ds 1
wC976:: ; C976
	ds 1
wC977:: ; C977
	ds 1
wC978:: ; C978
	ds 1
wC979:: ; C979
	ds 1
wC97A:: ; C97A
	ds 1
wC97B:: ; C97B
	ds 1
wC97C:: ; C97C
	ds 1
wC97D:: ; C97D
	ds 1
wC97E:: ; C97E
	ds 1
wC97F:: ; C97F
	ds 1
wC980:: ; C980
	ds 1
wC981:: ; C981
	ds 1
wC982:: ; C982
	ds 1
wC983:: ; C983
	ds 1
wC984:: ; C984
	ds 1
wC985:: ; C985
	ds 1
wC986:: ; C986
	ds 1
wC987:: ; C987
	ds 1
wC988:: ; C988
	ds 1
wC989:: ; C989
	ds 1
wC98A:: ; C98A
	ds 1
wC98B:: ; C98B
	ds 1
wC98C:: ; C98C
	ds 1
wC98D:: ; C98D
	ds 1
wC98E:: ; C98E
	ds 1
wC98F:: ; C98F
	ds 1
wC990:: ; C990
	ds 1
wC991:: ; C991
	ds 1
wC992:: ; C992
	ds 1
wC993:: ; C993
	ds 1
wC994:: ; C994
	ds 1
wC995:: ; C995
	ds 1
wC996:: ; C996
	ds 1
wC997:: ; C997
	ds 1
wC998:: ; C998
	ds 1
wC999:: ; C999
	ds 1
wC99A:: ; C99A
	ds 1
wC99B:: ; C99B
	ds 1
wC99C:: ; C99C
	ds 1
wC99D:: ; C99D
	ds 1
wC99E:: ; C99E
	ds 1
wC99F:: ; C99F
	ds 1
wC9A0:: ; C9A0
	ds 1
wC9A1:: ; C9A1
	ds 1
wC9A2:: ; C9A2
	ds 1
wC9A3:: ; C9A3
	ds 1
wC9A4:: ; C9A4
	ds 1
wC9A5:: ; C9A5
	ds 1
wC9A6:: ; C9A6
	ds 1
wC9A7:: ; C9A7
	ds 1
wC9A8:: ; C9A8
	ds 1
wC9A9:: ; C9A9
	ds 1
wC9AA:: ; C9AA
	ds 1
wC9AB:: ; C9AB
	ds 1
wC9AC:: ; C9AC
	ds 1
wC9AD:: ; C9AD
	ds 1
wC9AE:: ; C9AE
	ds 1
wC9AF:: ; C9AF
	ds 1
wC9B0:: ; C9B0
	ds 1
wC9B1:: ; C9B1
	ds 1
wC9B2:: ; C9B2
	ds 1
wC9B3:: ; C9B3
	ds 1
wC9B4:: ; C9B4
	ds 1
wC9B5:: ; C9B5
	ds 1
wC9B6:: ; C9B6
	ds 1
wC9B7:: ; C9B7
	ds 1
wC9B8:: ; C9B8
	ds 1
wC9B9:: ; C9B9
	ds 1
wC9BA:: ; C9BA
	ds 1
wC9BB:: ; C9BB
	ds 1
wC9BC:: ; C9BC
	ds 1
wC9BD:: ; C9BD
	ds 1
wC9BE:: ; C9BE
	ds 1
wC9BF:: ; C9BF
	ds 1
wC9C0:: ; C9C0
	ds 1
wC9C1:: ; C9C1
	ds 1
wC9C2:: ; C9C2
	ds 1
wC9C3:: ; C9C3
	ds 1
wC9C4:: ; C9C4
	ds 1
wC9C5:: ; C9C5
	ds 1
wC9C6:: ; C9C6
	ds 1
wC9C7:: ; C9C7
	ds 1
wC9C8:: ; C9C8
	ds 1
wC9C9:: ; C9C9
	ds 1
wC9CA:: ; C9CA
	ds 1
wC9CB:: ; C9CB
	ds 1
wC9CC:: ; C9CC
	ds 1
wC9CD:: ; C9CD
	ds 1
wC9CE:: ; C9CE
	ds 1
wC9CF:: ; C9CF
	ds 1
wC9D0:: ; C9D0
	ds 1
wC9D1:: ; C9D1
	ds 1
wC9D2:: ; C9D2
	ds 1
wC9D3:: ; C9D3
	ds 1
wC9D4:: ; C9D4
	ds 1
wC9D5:: ; C9D5
	ds 1
wC9D6:: ; C9D6
	ds 1
wC9D7:: ; C9D7
	ds 1
wC9D8:: ; C9D8
	ds 1
wC9D9:: ; C9D9
	ds 1
wC9DA:: ; C9DA
	ds 1
wC9DB:: ; C9DB
	ds 1
wC9DC:: ; C9DC
	ds 1
wC9DD:: ; C9DD
	ds 1
wC9DE:: ; C9DE
	ds 1
wC9DF:: ; C9DF
	ds 1
wC9E0:: ; C9E0
	ds 1
wC9E1:: ; C9E1
	ds 1
wC9E2:: ; C9E2
	ds 1
wC9E3:: ; C9E3
	ds 1
wC9E4:: ; C9E4
	ds 1
wC9E5:: ; C9E5
	ds 1
wC9E6:: ; C9E6
	ds 1
wC9E7:: ; C9E7
	ds 1
wC9E8:: ; C9E8
	ds 1
wC9E9:: ; C9E9
	ds 1
wC9EA:: ; C9EA
	ds 1
wC9EB:: ; C9EB
	ds 1
wC9EC:: ; C9EC
	ds 1
wC9ED:: ; C9ED
	ds 1
wC9EE:: ; C9EE
	ds 1
wC9EF:: ; C9EF
	ds 1
wC9F0:: ; C9F0
	ds 1
wC9F1:: ; C9F1
	ds 1
wC9F2:: ; C9F2
	ds 1
wC9F3:: ; C9F3
	ds 1
wC9F4:: ; C9F4
	ds 1
wC9F5:: ; C9F5
	ds 1
wC9F6:: ; C9F6
	ds 1
wC9F7:: ; C9F7
	ds 1
wC9F8:: ; C9F8
	ds 1
wC9F9:: ; C9F9
	ds 1
wC9FA:: ; C9FA
	ds 1
wC9FB:: ; C9FB
	ds 1
wC9FC:: ; C9FC
	ds 1
wC9FD:: ; C9FD
	ds 1
wC9FE:: ; C9FE
	ds 1
wC9FF:: ; C9FF
	ds 1
wCA00:: ; CA00
	ds 1
wCA01:: ; CA01
	ds 1
wCA02:: ; CA02
	ds 1
wCA03:: ; CA03
	ds 1
wCA04:: ; CA04
	ds 1
wCA05:: ; CA05
	ds 1
wCA06:: ; CA06
	ds 1
wCA07:: ; CA07
	ds 1
wCA08:: ; CA08
	ds 1
wCA09:: ; CA09
	ds 1
wCA0A:: ; CA0A
	ds 1
wCA0B:: ; CA0B
	ds 1
wCA0C:: ; CA0C
	ds 1
wCA0D:: ; CA0D
	ds 1
wCA0E:: ; CA0E
	ds 1
wCA0F:: ; CA0F
	ds 1
wCA10:: ; CA10
	ds 1
wCA11:: ; CA11
	ds 1
wCA12:: ; CA12
	ds 1
wCA13:: ; CA13
	ds 1
wCA14:: ; CA14
	ds 1
wCA15:: ; CA15
	ds 1
wCA16:: ; CA16
	ds 1
wCA17:: ; CA17
	ds 1
wCA18:: ; CA18
	ds 1
wCA19:: ; CA19
	ds 1
wCA1A:: ; CA1A
	ds 1
wCA1B:: ; CA1B
	ds 1
wCA1C:: ; CA1C
	ds 1
wCA1D:: ; CA1D
	ds 1
wCA1E:: ; CA1E
	ds 1
wCA1F:: ; CA1F
	ds 1
wCA20:: ; CA20
	ds 1
wCA21:: ; CA21
	ds 1
wCA22:: ; CA22
	ds 1
wCA23:: ; CA23
	ds 1
wCA24:: ; CA24
	ds 1
wCA25:: ; CA25
	ds 1
wCA26:: ; CA26
	ds 1
wCA27:: ; CA27
	ds 1
wCA28:: ; CA28
	ds 1
wCA29:: ; CA29
	ds 1
wCA2A:: ; CA2A
	ds 1
wCA2B:: ; CA2B
	ds 1
wCA2C:: ; CA2C
	ds 1
wCA2D:: ; CA2D
	ds 1
wCA2E:: ; CA2E
	ds 1
wCA2F:: ; CA2F
	ds 1
wCA30:: ; CA30
	ds 1
wCA31:: ; CA31
	ds 1
wCA32:: ; CA32
	ds 1
wCA33:: ; CA33
	ds 1
wCA34:: ; CA34
	ds 1
wCA35:: ; CA35
	ds 1
wCA36:: ; CA36
	ds 1
wCA37:: ; CA37
	ds 1
wCA38:: ; CA38
	ds 1
wCA39:: ; CA39
	ds 1
wCA3A:: ; CA3A
	ds 1
wCA3B:: ; CA3B
	ds 1
wCA3C:: ; CA3C
	ds 1
wCA3D:: ; CA3D
	ds 1
wCA3E:: ; CA3E
	ds 1
wCA3F:: ; CA3F
	ds 1
wCA40:: ; CA40
	ds 1
wCA41:: ; CA41
	ds 1
wCA42:: ; CA42
	ds 1
wCA43:: ; CA43
	ds 1
wCA44:: ; CA44
	ds 1
wCA45:: ; CA45
	ds 1
wCA46:: ; CA46
	ds 1
wCA47:: ; CA47
	ds 1
wCA48:: ; CA48
	ds 1
wCA49:: ; CA49
	ds 1
wCA4A:: ; CA4A
	ds 1
wCA4B:: ; CA4B
	ds 1
wCA4C:: ; CA4C
	ds 1
wCA4D:: ; CA4D
	ds 1
wCA4E:: ; CA4E
	ds 1
wCA4F:: ; CA4F
	ds 1
wCA50:: ; CA50
	ds 1
wCA51:: ; CA51
	ds 1
wCA52:: ; CA52
	ds 1
wCA53:: ; CA53
	ds 1
wCA54:: ; CA54
	ds 1
wCA55:: ; CA55
	ds 1
wCA56:: ; CA56
	ds 1
wCA57:: ; CA57
	ds 1
wCA58:: ; CA58
	ds 1
wCA59:: ; CA59
	ds 1
wCA5A:: ; CA5A
	ds 1
wCA5B:: ; CA5B
	ds 1
wCA5C:: ; CA5C
	ds 1
wCA5D:: ; CA5D
	ds 1
wCA5E:: ; CA5E
	ds 1
wCA5F:: ; CA5F
	ds 1
wCA60:: ; CA60
	ds 1
wCA61:: ; CA61
	ds 1
wCA62:: ; CA62
	ds 1
wCA63:: ; CA63
	ds 1
wCA64:: ; CA64
	ds 1
wCA65:: ; CA65
	ds 1
wCA66:: ; CA66
	ds 1
wCA67:: ; CA67
	ds 1
wCA68:: ; CA68
	ds 1
wCA69:: ; CA69
	ds 1
wCA6A:: ; CA6A
	ds 1
wCA6B:: ; CA6B
	ds 1
wCA6C:: ; CA6C
	ds 1
wCA6D:: ; CA6D
	ds 1
wCA6E:: ; CA6E
	ds 1
wCA6F:: ; CA6F
	ds 1
wCA70:: ; CA70
	ds 1
wCA71:: ; CA71
	ds 1
wCA72:: ; CA72
	ds 1
wCA73:: ; CA73
	ds 1
wCA74:: ; CA74
	ds 1
wCA75:: ; CA75
	ds 1
wCA76:: ; CA76
	ds 1
wCA77:: ; CA77
	ds 1
wCA78:: ; CA78
	ds 1
wCA79:: ; CA79
	ds 1
wCA7A:: ; CA7A
	ds 1
wCA7B:: ; CA7B
	ds 1
wCA7C:: ; CA7C
	ds 1
wCA7D:: ; CA7D
	ds 1
wCA7E:: ; CA7E
	ds 1
wCA7F:: ; CA7F
	ds 1
wCA80:: ; CA80
	ds 1
wCA81:: ; CA81
	ds 1
wCA82:: ; CA82
	ds 1
wCA83:: ; CA83
	ds 1
wCA84:: ; CA84
	ds 1
wCA85:: ; CA85
	ds 1
wCA86:: ; CA86
	ds 1
wCA87:: ; CA87
	ds 1
wCA88:: ; CA88
	ds 1
wCA89:: ; CA89
	ds 1
wCA8A:: ; CA8A
	ds 1
wCA8B:: ; CA8B
	ds 1
wCA8C:: ; CA8C
	ds 1
wCA8D:: ; CA8D
	ds 1
wCA8E:: ; CA8E
	ds 1
wCA8F:: ; CA8F
	ds 1
wCA90:: ; CA90
	ds 1
wCA91:: ; CA91
	ds 1
wCA92:: ; CA92
	ds 1
wCA93:: ; CA93
	ds 1
wCA94:: ; CA94
	ds 1
wCA95:: ; CA95
	ds 1
wCA96:: ; CA96
	ds 1
wCA97:: ; CA97
	ds 1
wCA98:: ; CA98
	ds 1
wCA99:: ; CA99
	ds 1
wCA9A:: ; CA9A
	ds 1
wCA9B:: ; CA9B
	ds 1
wCA9C:: ; CA9C
	ds 1
wCA9D:: ; CA9D
	ds 1
wCA9E:: ; CA9E
	ds 1
wCA9F:: ; CA9F
	ds 1
wCAA0:: ; CAA0
	ds 1
wCAA1:: ; CAA1
	ds 1
wCAA2:: ; CAA2
	ds 1
wCAA3:: ; CAA3
	ds 1
wCAA4:: ; CAA4
	ds 1
wCAA5:: ; CAA5
	ds 1
wCAA6:: ; CAA6
	ds 1
wCAA7:: ; CAA7
	ds 1
wCAA8:: ; CAA8
	ds 1
wCAA9:: ; CAA9
	ds 1
wCAAA:: ; CAAA
	ds 1
wCAAB:: ; CAAB
	ds 1
wCAAC:: ; CAAC
	ds 1
wCAAD:: ; CAAD
	ds 1
wCAAE:: ; CAAE
	ds 1
wCAAF:: ; CAAF
	ds 1
wCAB0:: ; CAB0
	ds 1
wCAB1:: ; CAB1
	ds 1
wCAB2:: ; CAB2
	ds 1
wCAB3:: ; CAB3
	ds 1
wCAB4:: ; CAB4
	ds 1
wCAB5:: ; CAB5
	ds 1
wCAB6:: ; CAB6
	ds 1
wCAB7:: ; CAB7
	ds 1
wCAB8:: ; CAB8
	ds 1
wCAB9:: ; CAB9
	ds 1
wCABA:: ; CABA
	ds 1
wCABB:: ; CABB
	ds 1
wCABC:: ; CABC
	ds 1
wCABD:: ; CABD
	ds 1
wCABE:: ; CABE
	ds 1
wCABF:: ; CABF
	ds 1
wCAC0:: ; CAC0
	ds 1
wCAC1:: ; CAC1
	ds 1
wCAC2:: ; CAC2
	ds 1
wCAC3:: ; CAC3
	ds 1
wCAC4:: ; CAC4
	ds 1
wCAC5:: ; CAC5
	ds 1
wCAC6:: ; CAC6
	ds 1
wCAC7:: ; CAC7
	ds 1
wCAC8:: ; CAC8
	ds 1
wCAC9:: ; CAC9
	ds 1
wCACA:: ; CACA
	ds 1
wCACB:: ; CACB
	ds 1
wCACC:: ; CACC
	ds 1
wCACD:: ; CACD
	ds 1
wCACE:: ; CACE
	ds 1
wCACF:: ; CACF
	ds 1
wCAD0:: ; CAD0
	ds 1
wCAD1:: ; CAD1
	ds 1
wCAD2:: ; CAD2
	ds 1
wCAD3:: ; CAD3
	ds 1
wCAD4:: ; CAD4
	ds 1
wCAD5:: ; CAD5
	ds 1
wCAD6:: ; CAD6
	ds 1
wCAD7:: ; CAD7
	ds 1
wCAD8:: ; CAD8
	ds 1
wCAD9:: ; CAD9
	ds 1
wCADA:: ; CADA
	ds 1
wCADB:: ; CADB
	ds 1
wCADC:: ; CADC
	ds 1
wCADD:: ; CADD
	ds 1
wCADE:: ; CADE
	ds 1
wCADF:: ; CADF
	ds 1
wCAE0:: ; CAE0
	ds 1
wCAE1:: ; CAE1
	ds 1
wCAE2:: ; CAE2
	ds 1
wCAE3:: ; CAE3
	ds 1
wCAE4:: ; CAE4
	ds 1
wCAE5:: ; CAE5
	ds 1
wCAE6:: ; CAE6
	ds 1
wCAE7:: ; CAE7
	ds 1
wCAE8:: ; CAE8
	ds 1
wCAE9:: ; CAE9
	ds 1
wCAEA:: ; CAEA
	ds 1
wCAEB:: ; CAEB
	ds 1
wCAEC:: ; CAEC
	ds 1
wCAED:: ; CAED
	ds 1
wCAEE:: ; CAEE
	ds 1
wCAEF:: ; CAEF
	ds 1
wCAF0:: ; CAF0
	ds 1
wCAF1:: ; CAF1
	ds 1
wCAF2:: ; CAF2
	ds 1
wCAF3:: ; CAF3
	ds 1
wCAF4:: ; CAF4
	ds 1
wCAF5:: ; CAF5
	ds 1
wCAF6:: ; CAF6
	ds 1
wCAF7:: ; CAF7
	ds 1
wCAF8:: ; CAF8
	ds 1
wCAF9:: ; CAF9
	ds 1
wCAFA:: ; CAFA
	ds 1
wCAFB:: ; CAFB
	ds 1
wCAFC:: ; CAFC
	ds 1
wCAFD:: ; CAFD
	ds 1
wCAFE:: ; CAFE
	ds 1
wCAFF:: ; CAFF
	ds 1
wCB00:: ; CB00
	ds 1
wCB01:: ; CB01
	ds 1
wCB02:: ; CB02
	ds 1
wCB03:: ; CB03
	ds 1
wCB04:: ; CB04
	ds 1
wCB05:: ; CB05
	ds 1
wCB06:: ; CB06
	ds 1
wCB07:: ; CB07
	ds 1
wCB08:: ; CB08
	ds 1
wCB09:: ; CB09
	ds 1
wCB0A:: ; CB0A
	ds 1
wCB0B:: ; CB0B
	ds 1
wCB0C:: ; CB0C
	ds 1
wCB0D:: ; CB0D
	ds 1
wCB0E:: ; CB0E
	ds 1
wCB0F:: ; CB0F
	ds 1
wCB10:: ; CB10
	ds 1
wCB11:: ; CB11
	ds 1
wCB12:: ; CB12
	ds 1
wCB13:: ; CB13
	ds 1
wCB14:: ; CB14
	ds 1
wCB15:: ; CB15
	ds 1
wCB16:: ; CB16
	ds 1
wCB17:: ; CB17
	ds 1
wCB18:: ; CB18
	ds 1
wCB19:: ; CB19
	ds 1
wCB1A:: ; CB1A
	ds 1
wCB1B:: ; CB1B
	ds 1
wCB1C:: ; CB1C
	ds 1
wCB1D:: ; CB1D
	ds 1
wCB1E:: ; CB1E
	ds 1
wCB1F:: ; CB1F
	ds 1
wCB20:: ; CB20
	ds 1
wCB21:: ; CB21
	ds 1
wCB22:: ; CB22
	ds 1
wCB23:: ; CB23
	ds 1
wCB24:: ; CB24
	ds 1
wCB25:: ; CB25
	ds 1
wCB26:: ; CB26
	ds 1
wCB27:: ; CB27
	ds 1
wCB28:: ; CB28
	ds 1
wCB29:: ; CB29
	ds 1
wCB2A:: ; CB2A
	ds 1
wCB2B:: ; CB2B
	ds 1
wCB2C:: ; CB2C
	ds 1
wCB2D:: ; CB2D
	ds 1
wCB2E:: ; CB2E
	ds 1
wCB2F:: ; CB2F
	ds 1
wCB30:: ; CB30
	ds 1
wCB31:: ; CB31
	ds 1
wCB32:: ; CB32
	ds 1
wCB33:: ; CB33
	ds 1
wCB34:: ; CB34
	ds 1
wCB35:: ; CB35
	ds 1
wCB36:: ; CB36
	ds 1
wCB37:: ; CB37
	ds 1
wCB38:: ; CB38
	ds 1
wCB39:: ; CB39
	ds 1
wCB3A:: ; CB3A
	ds 1
wCB3B:: ; CB3B
	ds 1
wCB3C:: ; CB3C
	ds 1
wCB3D:: ; CB3D
	ds 1
wCB3E:: ; CB3E
	ds 1
wCB3F:: ; CB3F
	ds 1
wCB40:: ; CB40
	ds 1
wCB41:: ; CB41
	ds 1
wCB42:: ; CB42
	ds 1
wCB43:: ; CB43
	ds 1
wCB44:: ; CB44
	ds 1
wCB45:: ; CB45
	ds 1
wCB46:: ; CB46
	ds 1
wCB47:: ; CB47
	ds 1
wCB48:: ; CB48
	ds 1
wCB49:: ; CB49
	ds 1
wCB4A:: ; CB4A
	ds 1
wCB4B:: ; CB4B
	ds 1
wCB4C:: ; CB4C
	ds 1
wCB4D:: ; CB4D
	ds 1
wCB4E:: ; CB4E
	ds 1
wCB4F:: ; CB4F
	ds 1
wCB50:: ; CB50
	ds 1
wCB51:: ; CB51
	ds 1
wCB52:: ; CB52
	ds 1
wCB53:: ; CB53
	ds 1
wCB54:: ; CB54
	ds 1
wCB55:: ; CB55
	ds 1
wCB56:: ; CB56
	ds 1
wCB57:: ; CB57
	ds 1
wCB58:: ; CB58
	ds 1
wCB59:: ; CB59
	ds 1
wCB5A:: ; CB5A
	ds 1
wCB5B:: ; CB5B
	ds 1
wCB5C:: ; CB5C
	ds 1
wCB5D:: ; CB5D
	ds 1
wCB5E:: ; CB5E
	ds 1
wCB5F:: ; CB5F
	ds 1
wCB60:: ; CB60
	ds 1
wCB61:: ; CB61
	ds 1
wCB62:: ; CB62
	ds 1
wCB63:: ; CB63
	ds 1
wCB64:: ; CB64
	ds 1
wCB65:: ; CB65
	ds 1
wCB66:: ; CB66
	ds 1
wCB67:: ; CB67
	ds 1
wCB68:: ; CB68
	ds 1
wCB69:: ; CB69
	ds 1
wCB6A:: ; CB6A
	ds 1
wCB6B:: ; CB6B
	ds 1
wCB6C:: ; CB6C
	ds 1
wCB6D:: ; CB6D
	ds 1
wCB6E:: ; CB6E
	ds 1
wCB6F:: ; CB6F
	ds 1
wCB70:: ; CB70
	ds 1
wCB71:: ; CB71
	ds 1
wCB72:: ; CB72
	ds 1
wCB73:: ; CB73
	ds 1
wCB74:: ; CB74
	ds 1
wCB75:: ; CB75
	ds 1
wCB76:: ; CB76
	ds 1
wCB77:: ; CB77
	ds 1
wCB78:: ; CB78
	ds 1
wCB79:: ; CB79
	ds 1
wCB7A:: ; CB7A
	ds 1
wCB7B:: ; CB7B
	ds 1
wCB7C:: ; CB7C
	ds 1
wCB7D:: ; CB7D
	ds 1
wCB7E:: ; CB7E
	ds 1
wCB7F:: ; CB7F
	ds 1
wCB80:: ; CB80
	ds 1
wCB81:: ; CB81
	ds 1
wCB82:: ; CB82
	ds 1
wCB83:: ; CB83
	ds 1
wCB84:: ; CB84
	ds 1
wCB85:: ; CB85
	ds 1
wCB86:: ; CB86
	ds 1
wCB87:: ; CB87
	ds 1
wCB88:: ; CB88
	ds 1
wCB89:: ; CB89
	ds 1
wCB8A:: ; CB8A
	ds 1
wCB8B:: ; CB8B
	ds 1
wCB8C:: ; CB8C
	ds 1
wCB8D:: ; CB8D
	ds 1
wCB8E:: ; CB8E
	ds 1
wCB8F:: ; CB8F
	ds 1
wCB90:: ; CB90
	ds 1
wCB91:: ; CB91
	ds 1
wCB92:: ; CB92
	ds 1
wCB93:: ; CB93
	ds 1
wCB94:: ; CB94
	ds 1
wCB95:: ; CB95
	ds 1
wCB96:: ; CB96
	ds 1
wCB97:: ; CB97
	ds 1
wCB98:: ; CB98
	ds 1
wCB99:: ; CB99
	ds 1
wCB9A:: ; CB9A
	ds 1
wCB9B:: ; CB9B
	ds 1
wCB9C:: ; CB9C
	ds 1
wCB9D:: ; CB9D
	ds 1
wCB9E:: ; CB9E
	ds 1
wCB9F:: ; CB9F
	ds 1
wCBA0:: ; CBA0
	ds 1
wCBA1:: ; CBA1
	ds 1
wCBA2:: ; CBA2
	ds 1
wCBA3:: ; CBA3
	ds 1
wCBA4:: ; CBA4
	ds 1
wCBA5:: ; CBA5
	ds 1
wCBA6:: ; CBA6
	ds 1
wCBA7:: ; CBA7
	ds 1
wCBA8:: ; CBA8
	ds 1
wCBA9:: ; CBA9
	ds 1
wCBAA:: ; CBAA
	ds 1
wCBAB:: ; CBAB
	ds 1
wCBAC:: ; CBAC
	ds 1
wCBAD:: ; CBAD
	ds 1
wCBAE:: ; CBAE
	ds 1
wCBAF:: ; CBAF
	ds 1
wCBB0:: ; CBB0
	ds 1
wCBB1:: ; CBB1
	ds 1
wCBB2:: ; CBB2
	ds 1
wCBB3:: ; CBB3
	ds 1
wCBB4:: ; CBB4
	ds 1
wCBB5:: ; CBB5
	ds 1
wCBB6:: ; CBB6
	ds 1
wCBB7:: ; CBB7
	ds 1
wCBB8:: ; CBB8
	ds 1
wCBB9:: ; CBB9
	ds 1
wCBBA:: ; CBBA
	ds 1
wCBBB:: ; CBBB
	ds 1
wCBBC:: ; CBBC
	ds 1
wCBBD:: ; CBBD
	ds 1
wCBBE:: ; CBBE
	ds 1
wCBBF:: ; CBBF
	ds 1
wCBC0:: ; CBC0
	ds 1
wCBC1:: ; CBC1
	ds 1
wCBC2:: ; CBC2
	ds 1
wCBC3:: ; CBC3
	ds 1
wCBC4:: ; CBC4
	ds 1
wCBC5:: ; CBC5
	ds 1
wCBC6:: ; CBC6
	ds 1
wCBC7:: ; CBC7
	ds 1
wCBC8:: ; CBC8
	ds 1
wCBC9:: ; CBC9
	ds 1
wCBCA:: ; CBCA
	ds 1
wCBCB:: ; CBCB
	ds 1
wCBCC:: ; CBCC
	ds 1
wCBCD:: ; CBCD
	ds 1
wCBCE:: ; CBCE
	ds 1
wCBCF:: ; CBCF
	ds 1
wCBD0:: ; CBD0
	ds 1
wCBD1:: ; CBD1
	ds 1
wCBD2:: ; CBD2
	ds 1
wCBD3:: ; CBD3
	ds 1
wCBD4:: ; CBD4
	ds 1
wCBD5:: ; CBD5
	ds 1
wCBD6:: ; CBD6
	ds 1
wCBD7:: ; CBD7
	ds 1
wCBD8:: ; CBD8
	ds 1
wCBD9:: ; CBD9
	ds 1
wCBDA:: ; CBDA
	ds 1
wCBDB:: ; CBDB
	ds 1
wCBDC:: ; CBDC
	ds 1
wCBDD:: ; CBDD
	ds 1
wCBDE:: ; CBDE
	ds 1
wCBDF:: ; CBDF
	ds 1
wCBE0:: ; CBE0
	ds 1
wCBE1:: ; CBE1
	ds 1
wCBE2:: ; CBE2
	ds 1
wCBE3:: ; CBE3
	ds 1
wCBE4:: ; CBE4
	ds 1
wCBE5:: ; CBE5
	ds 1
wCBE6:: ; CBE6
	ds 1
wCBE7:: ; CBE7
	ds 1
wCBE8:: ; CBE8
	ds 1
wCBE9:: ; CBE9
	ds 1
wCBEA:: ; CBEA
	ds 1
wCBEB:: ; CBEB
	ds 1
wCBEC:: ; CBEC
	ds 1
wCBED:: ; CBED
	ds 1
wCBEE:: ; CBEE
	ds 1
wCBEF:: ; CBEF
	ds 1
wCBF0:: ; CBF0
	ds 1
wCBF1:: ; CBF1
	ds 1
wCBF2:: ; CBF2
	ds 1
wCBF3:: ; CBF3
	ds 1
wCBF4:: ; CBF4
	ds 1
wCBF5:: ; CBF5
	ds 1
wCBF6:: ; CBF6
	ds 1
wCBF7:: ; CBF7
	ds 1
wCBF8:: ; CBF8
	ds 1
wCBF9:: ; CBF9
	ds 1
wCBFA:: ; CBFA
	ds 1
wCBFB:: ; CBFB
	ds 1
wCBFC:: ; CBFC
	ds 1
wCBFD:: ; CBFD
	ds 1
wCBFE:: ; CBFE
	ds 1
wCBFF:: ; CBFF
	ds 1
wCC00:: ; CC00
	ds 1
wCC01:: ; CC01
	ds 1
wCC02:: ; CC02
	ds 1
wCC03:: ; CC03
	ds 1
wCC04:: ; CC04
	ds 1
wCC05:: ; CC05
	ds 1
wCC06:: ; CC06
	ds 1
wCC07:: ; CC07
	ds 1
wCC08:: ; CC08
	ds 1
wCC09:: ; CC09
	ds 1
wCC0A:: ; CC0A
	ds 1
wCC0B:: ; CC0B
	ds 1
wCC0C:: ; CC0C
	ds 1
wCC0D:: ; CC0D
	ds 1
wCC0E:: ; CC0E
	ds 1
wCC0F:: ; CC0F
	ds 1
wCC10:: ; CC10
	ds 1
wCC11:: ; CC11
	ds 1
wCC12:: ; CC12
	ds 1
wCC13:: ; CC13
	ds 1
wCC14:: ; CC14
	ds 1
wCC15:: ; CC15
	ds 1
wCC16:: ; CC16
	ds 1
wCC17:: ; CC17
	ds 1
wCC18:: ; CC18
	ds 1
wCC19:: ; CC19
	ds 1
wCC1A:: ; CC1A
	ds 1
wCC1B:: ; CC1B
	ds 1
wCC1C:: ; CC1C
	ds 1
wCC1D:: ; CC1D
	ds 1
wCC1E:: ; CC1E
	ds 1
wCC1F:: ; CC1F
	ds 1
wCC20:: ; CC20
	ds 1
wCC21:: ; CC21
	ds 1
wCC22:: ; CC22
	ds 1
wCC23:: ; CC23
	ds 1
wCC24:: ; CC24
	ds 1
wCC25:: ; CC25
	ds 1
wCC26:: ; CC26
	ds 1
wCC27:: ; CC27
	ds 1
wCC28:: ; CC28
	ds 1
wCC29:: ; CC29
	ds 1
wCC2A:: ; CC2A
	ds 1
wCC2B:: ; CC2B
	ds 1
wCC2C:: ; CC2C
	ds 1
wCC2D:: ; CC2D
	ds 1
wCC2E:: ; CC2E
	ds 1
wCC2F:: ; CC2F
	ds 1
wCC30:: ; CC30
	ds 1
wCC31:: ; CC31
	ds 1
wCC32:: ; CC32
	ds 1
wCC33:: ; CC33
	ds 1
wCC34:: ; CC34
	ds 1
wCC35:: ; CC35
	ds 1
wCC36:: ; CC36
	ds 1
wCC37:: ; CC37
	ds 1
wCC38:: ; CC38
	ds 1
wCC39:: ; CC39
	ds 1
wCC3A:: ; CC3A
	ds 1
wCC3B:: ; CC3B
	ds 1
wCC3C:: ; CC3C
	ds 1
wCC3D:: ; CC3D
	ds 1
wCC3E:: ; CC3E
	ds 1
wCC3F:: ; CC3F
	ds 1
wCC40:: ; CC40
	ds 1
wCC41:: ; CC41
	ds 1
wCC42:: ; CC42
	ds 1
wCC43:: ; CC43
	ds 1
wCC44:: ; CC44
	ds 1
wCC45:: ; CC45
	ds 1
wCC46:: ; CC46
	ds 1
wCC47:: ; CC47
	ds 1
wCC48:: ; CC48
	ds 1
wCC49:: ; CC49
	ds 1
wCC4A:: ; CC4A
	ds 1
wCC4B:: ; CC4B
	ds 1
wCC4C:: ; CC4C
	ds 1
wCC4D:: ; CC4D
	ds 1
wCC4E:: ; CC4E
	ds 1
wCC4F:: ; CC4F
	ds 1
wCC50:: ; CC50
	ds 1
wCC51:: ; CC51
	ds 1
wCC52:: ; CC52
	ds 1
wCC53:: ; CC53
	ds 1
wCC54:: ; CC54
	ds 1
wCC55:: ; CC55
	ds 1
wCC56:: ; CC56
	ds 1
wCC57:: ; CC57
	ds 1
wCC58:: ; CC58
	ds 1
wCC59:: ; CC59
	ds 1
wCC5A:: ; CC5A
	ds 1
wCC5B:: ; CC5B
	ds 1
wCC5C:: ; CC5C
	ds 1
wCC5D:: ; CC5D
	ds 1
wCC5E:: ; CC5E
	ds 1
wCC5F:: ; CC5F
	ds 1
wCC60:: ; CC60
	ds 1
wCC61:: ; CC61
	ds 1
wCC62:: ; CC62
	ds 1
wCC63:: ; CC63
	ds 1
wCC64:: ; CC64
	ds 1
wCC65:: ; CC65
	ds 1
wCC66:: ; CC66
	ds 1
wCC67:: ; CC67
	ds 1
wCC68:: ; CC68
	ds 1
wCC69:: ; CC69
	ds 1
wCC6A:: ; CC6A
	ds 1
wCC6B:: ; CC6B
	ds 1
wCC6C:: ; CC6C
	ds 1
wCC6D:: ; CC6D
	ds 1
wCC6E:: ; CC6E
	ds 1
wCC6F:: ; CC6F
	ds 1
wCC70:: ; CC70
	ds 1
wCC71:: ; CC71
	ds 1
wCC72:: ; CC72
	ds 1
wCC73:: ; CC73
	ds 1
wCC74:: ; CC74
	ds 1
wCC75:: ; CC75
	ds 1
wCC76:: ; CC76
	ds 1
wCC77:: ; CC77
	ds 1
wCC78:: ; CC78
	ds 1
wCC79:: ; CC79
	ds 1
wCC7A:: ; CC7A
	ds 1
wCC7B:: ; CC7B
	ds 1
wCC7C:: ; CC7C
	ds 1
wCC7D:: ; CC7D
	ds 1
wCC7E:: ; CC7E
	ds 1
wCC7F:: ; CC7F
	ds 1
wCC80:: ; CC80
	ds 1
wCC81:: ; CC81
	ds 1
wCC82:: ; CC82
	ds 1
wCC83:: ; CC83
	ds 1
wCC84:: ; CC84
	ds 1
wCC85:: ; CC85
	ds 1
wCC86:: ; CC86
	ds 1
wCC87:: ; CC87
	ds 1
wCC88:: ; CC88
	ds 1
wCC89:: ; CC89
	ds 1
wCC8A:: ; CC8A
	ds 1
wCC8B:: ; CC8B
	ds 1
wCC8C:: ; CC8C
	ds 1
wCC8D:: ; CC8D
	ds 1
wCC8E:: ; CC8E
	ds 1
wCC8F:: ; CC8F
	ds 1
wCC90:: ; CC90
	ds 1
wCC91:: ; CC91
	ds 1
wCC92:: ; CC92
	ds 1
wCC93:: ; CC93
	ds 1
wCC94:: ; CC94
	ds 1
wCC95:: ; CC95
	ds 1
wCC96:: ; CC96
	ds 1
wCC97:: ; CC97
	ds 1
wCC98:: ; CC98
	ds 1
wCC99:: ; CC99
	ds 1
wCC9A:: ; CC9A
	ds 1
wCC9B:: ; CC9B
	ds 1
wCC9C:: ; CC9C
	ds 1
wCC9D:: ; CC9D
	ds 1
wCC9E:: ; CC9E
	ds 1
wCC9F:: ; CC9F
	ds 1
wCCA0:: ; CCA0
	ds 1
wCCA1:: ; CCA1
	ds 1
wCCA2:: ; CCA2
	ds 1
wCCA3:: ; CCA3
	ds 1
wCCA4:: ; CCA4
	ds 1
wCCA5:: ; CCA5
	ds 1
wCCA6:: ; CCA6
	ds 1
wCCA7:: ; CCA7
	ds 1
wCCA8:: ; CCA8
	ds 1
wCCA9:: ; CCA9
	ds 1
wCCAA:: ; CCAA
	ds 1
wCCAB:: ; CCAB
	ds 1
wCCAC:: ; CCAC
	ds 1
wCCAD:: ; CCAD
	ds 1
wCCAE:: ; CCAE
	ds 1
wCCAF:: ; CCAF
	ds 1
wCCB0:: ; CCB0
	ds 1
wCCB1:: ; CCB1
	ds 1
wCCB2:: ; CCB2
	ds 1
wCCB3:: ; CCB3
	ds 1
wCCB4:: ; CCB4
	ds 1
wCCB5:: ; CCB5
	ds 1
wCCB6:: ; CCB6
	ds 1
wCCB7:: ; CCB7
	ds 1
wCCB8:: ; CCB8
	ds 1
wCCB9:: ; CCB9
	ds 1
wCCBA:: ; CCBA
	ds 1
wCCBB:: ; CCBB
	ds 1
wCCBC:: ; CCBC
	ds 1
wCCBD:: ; CCBD
	ds 1
wCCBE:: ; CCBE
	ds 1
wCCBF:: ; CCBF
	ds 1
wCCC0:: ; CCC0
	ds 1
wCCC1:: ; CCC1
	ds 1
wCCC2:: ; CCC2
	ds 1
wCCC3:: ; CCC3
	ds 1
wCCC4:: ; CCC4
	ds 1
wCCC5:: ; CCC5
	ds 1
wCCC6:: ; CCC6
	ds 1
wCCC7:: ; CCC7
	ds 1
wCCC8:: ; CCC8
	ds 1
wCCC9:: ; CCC9
	ds 1
wCCCA:: ; CCCA
	ds 1
wCCCB:: ; CCCB
	ds 1
wCCCC:: ; CCCC
	ds 1
wCCCD:: ; CCCD
	ds 1
wCCCE:: ; CCCE
	ds 1
wCCCF:: ; CCCF
	ds 1
wCCD0:: ; CCD0
	ds 1
wCCD1:: ; CCD1
	ds 1
wCCD2:: ; CCD2
	ds 1
wCCD3:: ; CCD3
	ds 1
wCCD4:: ; CCD4
	ds 1
wCCD5:: ; CCD5
	ds 1
wCCD6:: ; CCD6
	ds 1
wCCD7:: ; CCD7
	ds 1
wCCD8:: ; CCD8
	ds 1
wCCD9:: ; CCD9
	ds 1
wCCDA:: ; CCDA
	ds 1
wCCDB:: ; CCDB
	ds 1
wCCDC:: ; CCDC
	ds 1
wCCDD:: ; CCDD
	ds 1
wCCDE:: ; CCDE
	ds 1
wCCDF:: ; CCDF
	ds 1
wCCE0:: ; CCE0
	ds 1
wCCE1:: ; CCE1
	ds 1
wCCE2:: ; CCE2
	ds 1
wCCE3:: ; CCE3
	ds 1
wCCE4:: ; CCE4
	ds 1
wCCE5:: ; CCE5
	ds 1
wCCE6:: ; CCE6
	ds 1
wCCE7:: ; CCE7
	ds 1
wCCE8:: ; CCE8
	ds 1
wCCE9:: ; CCE9
	ds 1
wCCEA:: ; CCEA
	ds 1
wCCEB:: ; CCEB
	ds 1
wCCEC:: ; CCEC
	ds 1
wCCED:: ; CCED
	ds 1
wCCEE:: ; CCEE
	ds 1
wCCEF:: ; CCEF
	ds 1
wCCF0:: ; CCF0
	ds 1
wCCF1:: ; CCF1
	ds 1
wCCF2:: ; CCF2
	ds 1
wCCF3:: ; CCF3
	ds 1
wCCF4:: ; CCF4
	ds 1
wCCF5:: ; CCF5
	ds 1
wCCF6:: ; CCF6
	ds 1
wCCF7:: ; CCF7
	ds 1
wCCF8:: ; CCF8
	ds 1
wCCF9:: ; CCF9
	ds 1
wCCFA:: ; CCFA
	ds 1
wCCFB:: ; CCFB
	ds 1
wCCFC:: ; CCFC
	ds 1
wCCFD:: ; CCFD
	ds 1
wCCFE:: ; CCFE
	ds 1
wCCFF:: ; CCFF
	ds 1
wCD00:: ; CD00
	ds 1
wCD01:: ; CD01
	ds 1
wCD02:: ; CD02
	ds 1
wCD03:: ; CD03
	ds 1
wCD04:: ; CD04
	ds 1
wCD05:: ; CD05
	ds 1
wCD06:: ; CD06
	ds 1
wCD07:: ; CD07
	ds 1
wCD08:: ; CD08
	ds 1
wCD09:: ; CD09
	ds 1
wCD0A:: ; CD0A
	ds 1
wCD0B:: ; CD0B
	ds 1
wCD0C:: ; CD0C
	ds 1
wCD0D:: ; CD0D
	ds 1
wCD0E:: ; CD0E
	ds 1
wCD0F:: ; CD0F
	ds 1
wCD10:: ; CD10
	ds 1
wCD11:: ; CD11
	ds 1
wCD12:: ; CD12
	ds 1
wCD13:: ; CD13
	ds 1
wCD14:: ; CD14
	ds 1
wCD15:: ; CD15
	ds 1
wCD16:: ; CD16
	ds 1
wCD17:: ; CD17
	ds 1
wCD18:: ; CD18
	ds 1
wCD19:: ; CD19
	ds 1
wCD1A:: ; CD1A
	ds 1
wCD1B:: ; CD1B
	ds 1
wCD1C:: ; CD1C
	ds 1
wCD1D:: ; CD1D
	ds 1
wCD1E:: ; CD1E
	ds 1
wCD1F:: ; CD1F
	ds 1
wCD20:: ; CD20
	ds 1
wCD21:: ; CD21
	ds 1
wCD22:: ; CD22
	ds 1
wCD23:: ; CD23
	ds 1
wCD24:: ; CD24
	ds 1
wCD25:: ; CD25
	ds 1
wCD26:: ; CD26
	ds 1
wCD27:: ; CD27
	ds 1
wCD28:: ; CD28
	ds 1
wCD29:: ; CD29
	ds 1
wCD2A:: ; CD2A
	ds 1
wCD2B:: ; CD2B
	ds 1
wCD2C:: ; CD2C
	ds 1
wCD2D:: ; CD2D
	ds 1
wCD2E:: ; CD2E
	ds 1
wCD2F:: ; CD2F
	ds 1
wCD30:: ; CD30
	ds 1
wCD31:: ; CD31
	ds 1
wCD32:: ; CD32
	ds 1
wCD33:: ; CD33
	ds 1
wCD34:: ; CD34
	ds 1
wCD35:: ; CD35
	ds 1
wCD36:: ; CD36
	ds 1
wCD37:: ; CD37
	ds 1
wCD38:: ; CD38
	ds 1
wCD39:: ; CD39
	ds 1
wCD3A:: ; CD3A
	ds 1
wCD3B:: ; CD3B
	ds 1
wCD3C:: ; CD3C
	ds 1
wCD3D:: ; CD3D
	ds 1
wCD3E:: ; CD3E
	ds 1
wCD3F:: ; CD3F
	ds 1
wCD40:: ; CD40
	ds 1
wCD41:: ; CD41
	ds 1
wCD42:: ; CD42
	ds 1
wCD43:: ; CD43
	ds 1
wCD44:: ; CD44
	ds 1
wCD45:: ; CD45
	ds 1
wCD46:: ; CD46
	ds 1
wCD47:: ; CD47
	ds 1
wCD48:: ; CD48
	ds 1
wCD49:: ; CD49
	ds 1
wCD4A:: ; CD4A
	ds 1
wCD4B:: ; CD4B
	ds 1
wCD4C:: ; CD4C
	ds 1
wCD4D:: ; CD4D
	ds 1
wCD4E:: ; CD4E
	ds 1
wCD4F:: ; CD4F
	ds 1
wCD50:: ; CD50
	ds 1
wCD51:: ; CD51
	ds 1
wCD52:: ; CD52
	ds 1
wCD53:: ; CD53
	ds 1
wCD54:: ; CD54
	ds 1
wCD55:: ; CD55
	ds 1
wCD56:: ; CD56
	ds 1
wCD57:: ; CD57
	ds 1
wCD58:: ; CD58
	ds 1
wCD59:: ; CD59
	ds 1
wCD5A:: ; CD5A
	ds 1
wCD5B:: ; CD5B
	ds 1
wCD5C:: ; CD5C
	ds 1
wCD5D:: ; CD5D
	ds 1
wCD5E:: ; CD5E
	ds 1
wCD5F:: ; CD5F
	ds 1
wCD60:: ; CD60
	ds 1
wCD61:: ; CD61
	ds 1
wCD62:: ; CD62
	ds 1
wCD63:: ; CD63
	ds 1
wCD64:: ; CD64
	ds 1
wCD65:: ; CD65
	ds 1
wCD66:: ; CD66
	ds 1
wCD67:: ; CD67
	ds 1
wCD68:: ; CD68
	ds 1
wCD69:: ; CD69
	ds 1
wCD6A:: ; CD6A
	ds 1
wCD6B:: ; CD6B
	ds 1
wCD6C:: ; CD6C
	ds 1
wCD6D:: ; CD6D
	ds 1
wCD6E:: ; CD6E
	ds 1
wCD6F:: ; CD6F
	ds 1
wCD70:: ; CD70
	ds 1
wCD71:: ; CD71
	ds 1
wCD72:: ; CD72
	ds 1
wCD73:: ; CD73
	ds 1
wCD74:: ; CD74
	ds 1
wCD75:: ; CD75
	ds 1
wCD76:: ; CD76
	ds 1
wCD77:: ; CD77
	ds 1
wCD78:: ; CD78
	ds 1
wCD79:: ; CD79
	ds 1
wCD7A:: ; CD7A
	ds 1
wCD7B:: ; CD7B
	ds 1
wCD7C:: ; CD7C
	ds 1
wCD7D:: ; CD7D
	ds 1
wCD7E:: ; CD7E
	ds 1
wCD7F:: ; CD7F
	ds 1
wCD80:: ; CD80
	ds 1
wCD81:: ; CD81
	ds 1
wCD82:: ; CD82
	ds 1
wCD83:: ; CD83
	ds 1
wCD84:: ; CD84
	ds 1
wCD85:: ; CD85
	ds 1
wCD86:: ; CD86
	ds 1
wCD87:: ; CD87
	ds 1
wCD88:: ; CD88
	ds 1
wCD89:: ; CD89
	ds 1
wCD8A:: ; CD8A
	ds 1
wCD8B:: ; CD8B
	ds 1
wCD8C:: ; CD8C
	ds 1
wCD8D:: ; CD8D
	ds 1
wCD8E:: ; CD8E
	ds 1
wCD8F:: ; CD8F
	ds 1
wCD90:: ; CD90
	ds 1
wCD91:: ; CD91
	ds 1
wCD92:: ; CD92
	ds 1
wCD93:: ; CD93
	ds 1
wCD94:: ; CD94
	ds 1
wCD95:: ; CD95
	ds 1
wCD96:: ; CD96
	ds 1
wCD97:: ; CD97
	ds 1
wCD98:: ; CD98
	ds 1
wCD99:: ; CD99
	ds 1
wCD9A:: ; CD9A
	ds 1
wCD9B:: ; CD9B
	ds 1
wCD9C:: ; CD9C
	ds 1
wCD9D:: ; CD9D
	ds 1
wCD9E:: ; CD9E
	ds 1
wCD9F:: ; CD9F
	ds 1
wCDA0:: ; CDA0
	ds 1
wCDA1:: ; CDA1
	ds 1
wCDA2:: ; CDA2
	ds 1
wCDA3:: ; CDA3
	ds 1
wCDA4:: ; CDA4
	ds 1
wCDA5:: ; CDA5
	ds 1
wCDA6:: ; CDA6
	ds 1
wCDA7:: ; CDA7
	ds 1
wCDA8:: ; CDA8
	ds 1
wCDA9:: ; CDA9
	ds 1
wCDAA:: ; CDAA
	ds 1
wCDAB:: ; CDAB
	ds 1
wCDAC:: ; CDAC
	ds 1
wCDAD:: ; CDAD
	ds 1
wCDAE:: ; CDAE
	ds 1
wCDAF:: ; CDAF
	ds 1
wCDB0:: ; CDB0
	ds 1
wCDB1:: ; CDB1
	ds 1
wCDB2:: ; CDB2
	ds 1
wCDB3:: ; CDB3
	ds 1
wCDB4:: ; CDB4
	ds 1
wCDB5:: ; CDB5
	ds 1
wCDB6:: ; CDB6
	ds 1
wCDB7:: ; CDB7
	ds 1
wCDB8:: ; CDB8
	ds 1
wCDB9:: ; CDB9
	ds 1
wCDBA:: ; CDBA
	ds 1
wCDBB:: ; CDBB
	ds 1
wCDBC:: ; CDBC
	ds 1
wCDBD:: ; CDBD
	ds 1
wCDBE:: ; CDBE
	ds 1
wCDBF:: ; CDBF
	ds 1
wCDC0:: ; CDC0
	ds 1
wCDC1:: ; CDC1
	ds 1
wCDC2:: ; CDC2
	ds 1
wCDC3:: ; CDC3
	ds 1
wCDC4:: ; CDC4
	ds 1
wCDC5:: ; CDC5
	ds 1
wCDC6:: ; CDC6
	ds 1
wCDC7:: ; CDC7
	ds 1
wCDC8:: ; CDC8
	ds 1
wCDC9:: ; CDC9
	ds 1
wCDCA:: ; CDCA
	ds 1
wCDCB:: ; CDCB
	ds 1
wCDCC:: ; CDCC
	ds 1
wCDCD:: ; CDCD
	ds 1
wCDCE:: ; CDCE
	ds 1
wCDCF:: ; CDCF
	ds 1
wCDD0:: ; CDD0
	ds 1
wCDD1:: ; CDD1
	ds 1
wCDD2:: ; CDD2
	ds 1
wCDD3:: ; CDD3
	ds 1
wCDD4:: ; CDD4
	ds 1
wCDD5:: ; CDD5
	ds 1
wCDD6:: ; CDD6
	ds 1
wCDD7:: ; CDD7
	ds 1
wCDD8:: ; CDD8
	ds 1
wCDD9:: ; CDD9
	ds 1
wCDDA:: ; CDDA
	ds 1
wCDDB:: ; CDDB
	ds 1
wCDDC:: ; CDDC
	ds 1
wCDDD:: ; CDDD
	ds 1
wCDDE:: ; CDDE
	ds 1
wCDDF:: ; CDDF
	ds 1
wCDE0:: ; CDE0
	ds 1
wCDE1:: ; CDE1
	ds 1
wCDE2:: ; CDE2
	ds 1
wCDE3:: ; CDE3
	ds 1
wCDE4:: ; CDE4
	ds 1
wCDE5:: ; CDE5
	ds 1
wCDE6:: ; CDE6
	ds 1
wCDE7:: ; CDE7
	ds 1
wCDE8:: ; CDE8
	ds 1
wCDE9:: ; CDE9
	ds 1
wCDEA:: ; CDEA
	ds 1
wCDEB:: ; CDEB
	ds 1
wCDEC:: ; CDEC
	ds 1
wCDED:: ; CDED
	ds 1
wCDEE:: ; CDEE
	ds 1
wCDEF:: ; CDEF
	ds 1
wCDF0:: ; CDF0
	ds 1
wCDF1:: ; CDF1
	ds 1
wCDF2:: ; CDF2
	ds 1
wCDF3:: ; CDF3
	ds 1
wCDF4:: ; CDF4
	ds 1
wCDF5:: ; CDF5
	ds 1
wCDF6:: ; CDF6
	ds 1
wCDF7:: ; CDF7
	ds 1
wCDF8:: ; CDF8
	ds 1
wCDF9:: ; CDF9
	ds 1
wCDFA:: ; CDFA
	ds 1
wCDFB:: ; CDFB
	ds 1
wCDFC:: ; CDFC
	ds 1
wCDFD:: ; CDFD
	ds 1
wCDFE:: ; CDFE
	ds 1
wCDFF:: ; CDFF
	ds 1
wCE00:: ; CE00
	ds 1
wCE01:: ; CE01
	ds 1
wCE02:: ; CE02
	ds 1
wCE03:: ; CE03
	ds 1
wCE04:: ; CE04
	ds 1
wCE05:: ; CE05
	ds 1
wCE06:: ; CE06
	ds 1
wCE07:: ; CE07
	ds 1
wCE08:: ; CE08
	ds 1
wCE09:: ; CE09
	ds 1
wCE0A:: ; CE0A
	ds 1
wCE0B:: ; CE0B
	ds 1
wCE0C:: ; CE0C
	ds 1
wCE0D:: ; CE0D
	ds 1
wCE0E:: ; CE0E
	ds 1
wCE0F:: ; CE0F
	ds 1
wCE10:: ; CE10
	ds 1
wCE11:: ; CE11
	ds 1
wCE12:: ; CE12
	ds 1
wCE13:: ; CE13
	ds 1
wCE14:: ; CE14
	ds 1
wCE15:: ; CE15
	ds 1
wCE16:: ; CE16
	ds 1
wCE17:: ; CE17
	ds 1
wCE18:: ; CE18
	ds 1
wCE19:: ; CE19
	ds 1
wCE1A:: ; CE1A
	ds 1
wCE1B:: ; CE1B
	ds 1
wCE1C:: ; CE1C
	ds 1
wCE1D:: ; CE1D
	ds 1
wCE1E:: ; CE1E
	ds 1
wCE1F:: ; CE1F
	ds 1
wCE20:: ; CE20
	ds 1
wCE21:: ; CE21
	ds 1
wCE22:: ; CE22
	ds 1
wCE23:: ; CE23
	ds 1
wCE24:: ; CE24
	ds 1
wCE25:: ; CE25
	ds 1
wCE26:: ; CE26
	ds 1
wCE27:: ; CE27
	ds 1
wCE28:: ; CE28
	ds 1
wCE29:: ; CE29
	ds 1
wCE2A:: ; CE2A
	ds 1
wCE2B:: ; CE2B
	ds 1
wCE2C:: ; CE2C
	ds 1
wCE2D:: ; CE2D
	ds 1
wCE2E:: ; CE2E
	ds 1
wCE2F:: ; CE2F
	ds 1
wCE30:: ; CE30
	ds 1
wCE31:: ; CE31
	ds 1
wCE32:: ; CE32
	ds 1
wCE33:: ; CE33
	ds 1
wCE34:: ; CE34
	ds 1
wCE35:: ; CE35
	ds 1
wCE36:: ; CE36
	ds 1
wCE37:: ; CE37
	ds 1
wCE38:: ; CE38
	ds 1
wCE39:: ; CE39
	ds 1
wCE3A:: ; CE3A
	ds 1
wCE3B:: ; CE3B
	ds 1
wCE3C:: ; CE3C
	ds 1
wCE3D:: ; CE3D
	ds 1
wCE3E:: ; CE3E
	ds 1
wCE3F:: ; CE3F
	ds 1
wCE40:: ; CE40
	ds 1
wCE41:: ; CE41
	ds 1
wCE42:: ; CE42
	ds 1
wCE43:: ; CE43
	ds 1
wCE44:: ; CE44
	ds 1
wCE45:: ; CE45
	ds 1
wCE46:: ; CE46
	ds 1
wCE47:: ; CE47
	ds 1
wCE48:: ; CE48
	ds 1
wCE49:: ; CE49
	ds 1
wCE4A:: ; CE4A
	ds 1
wCE4B:: ; CE4B
	ds 1
wCE4C:: ; CE4C
	ds 1
wCE4D:: ; CE4D
	ds 1
wCE4E:: ; CE4E
	ds 1
wCE4F:: ; CE4F
	ds 1
wCE50:: ; CE50
	ds 1
wCE51:: ; CE51
	ds 1
wCE52:: ; CE52
	ds 1
wCE53:: ; CE53
	ds 1
wCE54:: ; CE54
	ds 1
wCE55:: ; CE55
	ds 1
wCE56:: ; CE56
	ds 1
wCE57:: ; CE57
	ds 1
wCE58:: ; CE58
	ds 1
wCE59:: ; CE59
	ds 1
wCE5A:: ; CE5A
	ds 1
wCE5B:: ; CE5B
	ds 1
wCE5C:: ; CE5C
	ds 1
wCE5D:: ; CE5D
	ds 1
wCE5E:: ; CE5E
	ds 1
wCE5F:: ; CE5F
	ds 1
wCE60:: ; CE60
	ds 1
wCE61:: ; CE61
	ds 1
wCE62:: ; CE62
	ds 1
wCE63:: ; CE63
	ds 1
wCE64:: ; CE64
	ds 1
wCE65:: ; CE65
	ds 1
wCE66:: ; CE66
	ds 1
wCE67:: ; CE67
	ds 1
wCE68:: ; CE68
	ds 1
wCE69:: ; CE69
	ds 1
wCE6A:: ; CE6A
	ds 1
wCE6B:: ; CE6B
	ds 1
wCE6C:: ; CE6C
	ds 1
wCE6D:: ; CE6D
	ds 1
wCE6E:: ; CE6E
	ds 1
wCE6F:: ; CE6F
	ds 1
wCE70:: ; CE70
	ds 1
wCE71:: ; CE71
	ds 1
wCE72:: ; CE72
	ds 1
wCE73:: ; CE73
	ds 1
wCE74:: ; CE74
	ds 1
wCE75:: ; CE75
	ds 1
wCE76:: ; CE76
	ds 1
wCE77:: ; CE77
	ds 1
wCE78:: ; CE78
	ds 1
wCE79:: ; CE79
	ds 1
wCE7A:: ; CE7A
	ds 1
wCE7B:: ; CE7B
	ds 1
wCE7C:: ; CE7C
	ds 1
wCE7D:: ; CE7D
	ds 1
wCE7E:: ; CE7E
	ds 1
wCE7F:: ; CE7F
	ds 1
wCE80:: ; CE80
	ds 1
wCE81:: ; CE81
	ds 1
wCE82:: ; CE82
	ds 1
wCE83:: ; CE83
	ds 1
wCE84:: ; CE84
	ds 1
wCE85:: ; CE85
	ds 1
wCE86:: ; CE86
	ds 1
wCE87:: ; CE87
	ds 1
wCE88:: ; CE88
	ds 1
wCE89:: ; CE89
	ds 1
wCE8A:: ; CE8A
	ds 1
wCE8B:: ; CE8B
	ds 1
wCE8C:: ; CE8C
	ds 1
wCE8D:: ; CE8D
	ds 1
wCE8E:: ; CE8E
	ds 1
wCE8F:: ; CE8F
	ds 1
wCE90:: ; CE90
	ds 1
wCE91:: ; CE91
	ds 1
wCE92:: ; CE92
	ds 1
wCE93:: ; CE93
	ds 1
wCE94:: ; CE94
	ds 1
wCE95:: ; CE95
	ds 1
wCE96:: ; CE96
	ds 1
wCE97:: ; CE97
	ds 1
wCE98:: ; CE98
	ds 1
wCE99:: ; CE99
	ds 1
wCE9A:: ; CE9A
	ds 1
wCE9B:: ; CE9B
	ds 1
wCE9C:: ; CE9C
	ds 1
wCE9D:: ; CE9D
	ds 1
wCE9E:: ; CE9E
	ds 1
wCE9F:: ; CE9F
	ds 1
wCEA0:: ; CEA0
	ds 1
wCEA1:: ; CEA1
	ds 1
wCEA2:: ; CEA2
	ds 1
wCEA3:: ; CEA3
	ds 1
wCEA4:: ; CEA4
	ds 1
wCEA5:: ; CEA5
	ds 1
wCEA6:: ; CEA6
	ds 1
wCEA7:: ; CEA7
	ds 1
wCEA8:: ; CEA8
	ds 1
wCEA9:: ; CEA9
	ds 1
wCEAA:: ; CEAA
	ds 1
wCEAB:: ; CEAB
	ds 1
wCEAC:: ; CEAC
	ds 1
wCEAD:: ; CEAD
	ds 1
wCEAE:: ; CEAE
	ds 1
wCEAF:: ; CEAF
	ds 1
wCEB0:: ; CEB0
	ds 1
wCEB1:: ; CEB1
	ds 1
wCEB2:: ; CEB2
	ds 1
wCEB3:: ; CEB3
	ds 1
wCEB4:: ; CEB4
	ds 1
wCEB5:: ; CEB5
	ds 1
wCEB6:: ; CEB6
	ds 1
wCEB7:: ; CEB7
	ds 1
wCEB8:: ; CEB8
	ds 1
wCEB9:: ; CEB9
	ds 1
wCEBA:: ; CEBA
	ds 1
wCEBB:: ; CEBB
	ds 1
wCEBC:: ; CEBC
	ds 1
wCEBD:: ; CEBD
	ds 1
wCEBE:: ; CEBE
	ds 1
wCEBF:: ; CEBF
	ds 1
wCEC0:: ; CEC0
	ds 1
wCEC1:: ; CEC1
	ds 1
wCEC2:: ; CEC2
	ds 1
wCEC3:: ; CEC3
	ds 1
wCEC4:: ; CEC4
	ds 1
wCEC5:: ; CEC5
	ds 1
wCEC6:: ; CEC6
	ds 1
wCEC7:: ; CEC7
	ds 1
wCEC8:: ; CEC8
	ds 1
wCEC9:: ; CEC9
	ds 1
wCECA:: ; CECA
	ds 1
wCECB:: ; CECB
	ds 1
wCECC:: ; CECC
	ds 1
wCECD:: ; CECD
	ds 1
wCECE:: ; CECE
	ds 1
wCECF:: ; CECF
	ds 1
wCED0:: ; CED0
	ds 1
wCED1:: ; CED1
	ds 1
wCED2:: ; CED2
	ds 1
wCED3:: ; CED3
	ds 1
wCED4:: ; CED4
	ds 1
wCED5:: ; CED5
	ds 1
wCED6:: ; CED6
	ds 1
wCED7:: ; CED7
	ds 1
wCED8:: ; CED8
	ds 1
wCED9:: ; CED9
	ds 1
wCEDA:: ; CEDA
	ds 1
wCEDB:: ; CEDB
	ds 1
wCEDC:: ; CEDC
	ds 1
wCEDD:: ; CEDD
	ds 1
wCEDE:: ; CEDE
	ds 1
wCEDF:: ; CEDF
	ds 1
wCEE0:: ; CEE0
	ds 1
wCEE1:: ; CEE1
	ds 1
wCEE2:: ; CEE2
	ds 1
wCEE3:: ; CEE3
	ds 1
wCEE4:: ; CEE4
	ds 1
wCEE5:: ; CEE5
	ds 1
wCEE6:: ; CEE6
	ds 1
wCEE7:: ; CEE7
	ds 1
wCEE8:: ; CEE8
	ds 1
wCEE9:: ; CEE9
	ds 1
wCEEA:: ; CEEA
	ds 1
wCEEB:: ; CEEB
	ds 1
wCEEC:: ; CEEC
	ds 1
wCEED:: ; CEED
	ds 1
wCEEE:: ; CEEE
	ds 1
wCEEF:: ; CEEF
	ds 1
wCEF0:: ; CEF0
	ds 1
wCEF1:: ; CEF1
	ds 1
wCEF2:: ; CEF2
	ds 1
wCEF3:: ; CEF3
	ds 1
wCEF4:: ; CEF4
	ds 1
wCEF5:: ; CEF5
	ds 1
wCEF6:: ; CEF6
	ds 1
wCEF7:: ; CEF7
	ds 1
wCEF8:: ; CEF8
	ds 1
wCEF9:: ; CEF9
	ds 1
wCEFA:: ; CEFA
	ds 1
wCEFB:: ; CEFB
	ds 1
wCEFC:: ; CEFC
	ds 1
wCEFD:: ; CEFD
	ds 1
wCEFE:: ; CEFE
	ds 1
wCEFF:: ; CEFF
	ds 1
wCF00:: ; CF00
	ds 1
wCF01:: ; CF01
	ds 1
wCF02:: ; CF02
	ds 1
wCF03:: ; CF03
	ds 1
wCF04:: ; CF04
	ds 1
wCF05:: ; CF05
	ds 1
wCF06:: ; CF06
	ds 1
wCF07:: ; CF07
	ds 1
wCF08:: ; CF08
	ds 1
wCF09:: ; CF09
	ds 1
wCF0A:: ; CF0A
	ds 1
wCF0B:: ; CF0B
	ds 1
wCF0C:: ; CF0C
	ds 1
wCF0D:: ; CF0D
	ds 1
wCF0E:: ; CF0E
	ds 1
wCF0F:: ; CF0F
	ds 1
wCF10:: ; CF10
	ds 1
wCF11:: ; CF11
	ds 1
wCF12:: ; CF12
	ds 1
wCF13:: ; CF13
	ds 1
wCF14:: ; CF14
	ds 1
wCF15:: ; CF15
	ds 1
wCF16:: ; CF16
	ds 1
wCF17:: ; CF17
	ds 1
wCF18:: ; CF18
	ds 1
wCF19:: ; CF19
	ds 1
wCF1A:: ; CF1A
	ds 1
wCF1B:: ; CF1B
	ds 1
wCF1C:: ; CF1C
	ds 1
wCF1D:: ; CF1D
	ds 1
wCF1E:: ; CF1E
	ds 1
wCF1F:: ; CF1F
	ds 1
wCF20:: ; CF20
	ds 1
wCF21:: ; CF21
	ds 1
wCF22:: ; CF22
	ds 1
wCF23:: ; CF23
	ds 1
wCF24:: ; CF24
	ds 1
wCF25:: ; CF25
	ds 1
wCF26:: ; CF26
	ds 1
wCF27:: ; CF27
	ds 1
wCF28:: ; CF28
	ds 1
wCF29:: ; CF29
	ds 1
wCF2A:: ; CF2A
	ds 1
wCF2B:: ; CF2B
	ds 1
wCF2C:: ; CF2C
	ds 1
wCF2D:: ; CF2D
	ds 1
wCF2E:: ; CF2E
	ds 1
wCF2F:: ; CF2F
	ds 1
wCF30:: ; CF30
	ds 1
wCF31:: ; CF31
	ds 1
wCF32:: ; CF32
	ds 1
wCF33:: ; CF33
	ds 1
wCF34:: ; CF34
	ds 1
wCF35:: ; CF35
	ds 1
wCF36:: ; CF36
	ds 1
wCF37:: ; CF37
	ds 1
wCF38:: ; CF38
	ds 1
wCF39:: ; CF39
	ds 1
wCF3A:: ; CF3A
	ds 1
wCF3B:: ; CF3B
	ds 1
wCF3C:: ; CF3C
	ds 1
wCF3D:: ; CF3D
	ds 1
wCF3E:: ; CF3E
	ds 1
wCF3F:: ; CF3F
	ds 1
wCF40:: ; CF40
	ds 1
wCF41:: ; CF41
	ds 1
wCF42:: ; CF42
	ds 1
wCF43:: ; CF43
	ds 1
wCF44:: ; CF44
	ds 1
wCF45:: ; CF45
	ds 1
wCF46:: ; CF46
	ds 1
wCF47:: ; CF47
	ds 1
wCF48:: ; CF48
	ds 1
wCF49:: ; CF49
	ds 1
wCF4A:: ; CF4A
	ds 1
wCF4B:: ; CF4B
	ds 1
wCF4C:: ; CF4C
	ds 1
wCF4D:: ; CF4D
	ds 1
wCF4E:: ; CF4E
	ds 1
wCF4F:: ; CF4F
	ds 1
wCF50:: ; CF50
	ds 1
wCF51:: ; CF51
	ds 1
wCF52:: ; CF52
	ds 1
wCF53:: ; CF53
	ds 1
wCF54:: ; CF54
	ds 1
wCF55:: ; CF55
	ds 1
wCF56:: ; CF56
	ds 1
wCF57:: ; CF57
	ds 1
wCF58:: ; CF58
	ds 1
wCF59:: ; CF59
	ds 1
wCF5A:: ; CF5A
	ds 1
wCF5B:: ; CF5B
	ds 1
wCF5C:: ; CF5C
	ds 1
wCF5D:: ; CF5D
	ds 1
wCF5E:: ; CF5E
	ds 1
wCF5F:: ; CF5F
	ds 1
wCF60:: ; CF60
	ds 1
wCF61:: ; CF61
	ds 1
wCF62:: ; CF62
	ds 1
wCF63:: ; CF63
	ds 1
wCF64:: ; CF64
	ds 1
wCF65:: ; CF65
	ds 1
wCF66:: ; CF66
	ds 1
wCF67:: ; CF67
	ds 1
wCF68:: ; CF68
	ds 1
wCF69:: ; CF69
	ds 1
wCF6A:: ; CF6A
	ds 1
wCF6B:: ; CF6B
	ds 1
wCF6C:: ; CF6C
	ds 1
wCF6D:: ; CF6D
	ds 1
wCF6E:: ; CF6E
	ds 1
wCF6F:: ; CF6F
	ds 1
wCF70:: ; CF70
	ds 1
wCF71:: ; CF71
	ds 1
wCF72:: ; CF72
	ds 1
wCF73:: ; CF73
	ds 1
wCF74:: ; CF74
	ds 1
wCF75:: ; CF75
	ds 1
wCF76:: ; CF76
	ds 1
wCF77:: ; CF77
	ds 1
wCF78:: ; CF78
	ds 1
wCF79:: ; CF79
	ds 1
wCF7A:: ; CF7A
	ds 1
wCF7B:: ; CF7B
	ds 1
wCF7C:: ; CF7C
	ds 1
wCF7D:: ; CF7D
	ds 1
wCF7E:: ; CF7E
	ds 1
wCF7F:: ; CF7F
	ds 1
wCF80:: ; CF80
	ds 1
wCF81:: ; CF81
	ds 1
wCF82:: ; CF82
	ds 1
wCF83:: ; CF83
	ds 1
wCF84:: ; CF84
	ds 1
wCF85:: ; CF85
	ds 1
wCF86:: ; CF86
	ds 1
wCF87:: ; CF87
	ds 1
wCF88:: ; CF88
	ds 1
wCF89:: ; CF89
	ds 1
wCF8A:: ; CF8A
	ds 1
wCF8B:: ; CF8B
	ds 1
wCF8C:: ; CF8C
	ds 1
wCF8D:: ; CF8D
	ds 1
wCF8E:: ; CF8E
	ds 1
wCF8F:: ; CF8F
	ds 1
wCF90:: ; CF90
	ds 1
wCF91:: ; CF91
	ds 1
wCF92:: ; CF92
	ds 1
wCF93:: ; CF93
	ds 1
wCF94:: ; CF94
	ds 1
wCF95:: ; CF95
	ds 1
wCF96:: ; CF96
	ds 1
wCF97:: ; CF97
	ds 1
wCF98:: ; CF98
	ds 1
wCF99:: ; CF99
	ds 1
wCF9A:: ; CF9A
	ds 1
wCF9B:: ; CF9B
	ds 1
wCF9C:: ; CF9C
	ds 1
wCF9D:: ; CF9D
	ds 1
wCF9E:: ; CF9E
	ds 1
wCF9F:: ; CF9F
	ds 1
wCFA0:: ; CFA0
	ds 1
wCFA1:: ; CFA1
	ds 1
wCFA2:: ; CFA2
	ds 1
wCFA3:: ; CFA3
	ds 1
wCFA4:: ; CFA4
	ds 1
wCFA5:: ; CFA5
	ds 1
wCFA6:: ; CFA6
	ds 1
wCFA7:: ; CFA7
	ds 1
wCFA8:: ; CFA8
	ds 1
wCFA9:: ; CFA9
	ds 1
wCFAA:: ; CFAA
	ds 1
wCFAB:: ; CFAB
	ds 1
wCFAC:: ; CFAC
	ds 1
wCFAD:: ; CFAD
	ds 1
wCFAE:: ; CFAE
	ds 1
wCFAF:: ; CFAF
	ds 1
wCFB0:: ; CFB0
	ds 1
wCFB1:: ; CFB1
	ds 1
wCFB2:: ; CFB2
	ds 1
wCFB3:: ; CFB3
	ds 1
wCFB4:: ; CFB4
	ds 1
wCFB5:: ; CFB5
	ds 1
wCFB6:: ; CFB6
	ds 1
wCFB7:: ; CFB7
	ds 1
wCFB8:: ; CFB8
	ds 1
wCFB9:: ; CFB9
	ds 1
wCFBA:: ; CFBA
	ds 1
wCFBB:: ; CFBB
	ds 1
wCFBC:: ; CFBC
	ds 1
wCFBD:: ; CFBD
	ds 1
wCFBE:: ; CFBE
	ds 1
wCFBF:: ; CFBF
	ds 1
wCFC0:: ; CFC0
	ds 1
wCFC1:: ; CFC1
	ds 1
wCFC2:: ; CFC2
	ds 1
wCFC3:: ; CFC3
	ds 1
wCFC4:: ; CFC4
	ds 1
wCFC5:: ; CFC5
	ds 1
wCFC6:: ; CFC6
	ds 1
wCFC7:: ; CFC7
	ds 1
wCFC8:: ; CFC8
	ds 1
wCFC9:: ; CFC9
	ds 1
wCFCA:: ; CFCA
	ds 1
wCFCB:: ; CFCB
	ds 1
wCFCC:: ; CFCC
	ds 1
wCFCD:: ; CFCD
	ds 1
wCFCE:: ; CFCE
	ds 1
wCFCF:: ; CFCF
	ds 1
wCFD0:: ; CFD0
	ds 1
wCFD1:: ; CFD1
	ds 1
wCFD2:: ; CFD2
	ds 1
wCFD3:: ; CFD3
	ds 1
wCFD4:: ; CFD4
	ds 1
wCFD5:: ; CFD5
	ds 1
wCFD6:: ; CFD6
	ds 1
wCFD7:: ; CFD7
	ds 1
wCFD8:: ; CFD8
	ds 1
wCFD9:: ; CFD9
	ds 1
wCFDA:: ; CFDA
	ds 1
wCFDB:: ; CFDB
	ds 1
wCFDC:: ; CFDC
	ds 1
wCFDD:: ; CFDD
	ds 1
wCFDE:: ; CFDE
	ds 1
wCFDF:: ; CFDF
	ds 1
wCFE0:: ; CFE0
	ds 1
wCFE1:: ; CFE1
	ds 1
wCFE2:: ; CFE2
	ds 1
wCFE3:: ; CFE3
	ds 1
wCFE4:: ; CFE4
	ds 1
wCFE5:: ; CFE5
	ds 1
wCFE6:: ; CFE6
	ds 1
wCFE7:: ; CFE7
	ds 1
wCFE8:: ; CFE8
	ds 1
wCFE9:: ; CFE9
	ds 1
wCFEA:: ; CFEA
	ds 1
wCFEB:: ; CFEB
	ds 1
wCFEC:: ; CFEC
	ds 1
wCFED:: ; CFED
	ds 1
wCFEE:: ; CFEE
	ds 1
wCFEF:: ; CFEF
	ds 1
wCFF0:: ; CFF0
	ds 1
wCFF1:: ; CFF1
	ds 1
wCFF2:: ; CFF2
	ds 1
wCFF3:: ; CFF3
	ds 1
wCFF4:: ; CFF4
	ds 1
wCFF5:: ; CFF5
	ds 1
wCFF6:: ; CFF6
	ds 1
wCFF7:: ; CFF7
	ds 1
wCFF8:: ; CFF8
	ds 1
wCFF9:: ; CFF9
	ds 1
wCFFA:: ; CFFA
	ds 1
wCFFB:: ; CFFB
	ds 1
wCFFC:: ; CFFC
	ds 1
wCFFD:: ; CFFD
	ds 1
wCFFE:: ; CFFE
	ds 1
wCFFF:: ; CFFF
	ds 1
