; Disassembly of "Soukoban (Japan).gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis
; 7745
TextTable:; $7745
    dw PlayOrCreateMenu
    dw StartOrContinueMenu
    db $5f, $77
    db $65, $77
    db $6b, $77
    db $71, $77
    db $77, $77

PlayOrCreateMenu::
    dw MenuTxt
    dw CleanWarehousTxt
    dw CreateWarehouseTxt

StartOrContinueMenu::
    dw WhichOneTxt
    dw GoToWarehouseTxt
    dw WarehouseKeyTxt

    db $dd, $77, $e7, $77, $ee, $77
    db $f7, $77, $03, $78, $ee, $77, $0c, $78, $bd, $77, $13, $78, $c5, $77, $1d, $78
    db $1f, $78, $0c, $78, $bd, $77, $ee, $77

PauseMenuTextboxTop::	
	db $54, $55, $55, $55, $55, $55, $55, $55
    db $55, $55, $55, $55, $55, $55, $56, $ff

PauseMenuTextboxSides::   
	db $5a, $d4, $d4, $d4, $d4, $d4, $d4, $d4
	db $d4, $d4, $d4, $d4, $d4, $d4, $5b, $ff

PauseMenuTextboxBottom:: 
	db $57, $58, $58, $58, $58, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $59, $ff