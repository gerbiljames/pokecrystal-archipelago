	db KAKUNA ; 014
AP_Stats_Base_KAKUNA:
	db  45,  25,  50,  35,  25,  25
	;   hp  atk  def  spd  sat  sdf
AP_Stats_Types_KAKUNA:
	db BUG, POISON ; type
	db 120 ; catch rate
	db 71 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kakuna/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
AP_Stats_TMHM_KAKUNA:
	tmhm
	; end
