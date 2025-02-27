	db MAGIKARP ; 129
AP_Stats_Base_MAGIKARP:
	db  20,  10,  55,  80,  15,  20
	;   hp  atk  def  spd  sat  sdf
AP_Stats_Types_MAGIKARP:
	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/magikarp/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
AP_Stats_TMHM_MAGIKARP:
	tmhm
	; end
