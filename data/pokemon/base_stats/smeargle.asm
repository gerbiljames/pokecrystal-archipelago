	db SMEARGLE ; 235
AP_Stats_Base_SMEARGLE:
	db  55,  20,  35,  75,  20,  45
	;   hp  atk  def  spd  sat  sdf
AP_Stats_Types_SMEARGLE:
	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 106 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/smeargle/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
AP_Stats_TMHM_SMEARGLE:
	tmhm
	; end
