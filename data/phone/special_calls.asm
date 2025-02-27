MACRO specialcall
; condition, contact, script
	dw \1
	db \2
	dba \3
ENDM

SpecialPhoneCallList:
; entries correspond to SPECIALCALL_* constants
	table_width SPECIALCALL_SIZE, SpecialPhoneCallList
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_ELM,      ElmPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_BIKESHOP, BikeShopPhoneCallerScript
	specialcall SpecialCallWhereverYouAre,  PHONECONTACT_MOM,      MomPhoneLectureScript
	specialcall SpecialCallOnlyWhenOutside, PHONECONTACT_ELM,      ElmPhoneCallerScript
AP_Setting_SpecialCalls:
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_00
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_01
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_02
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_03
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_04
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_05
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_06
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_07
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_08
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_09
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0A
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0B
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0C
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0D
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0E
	specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_0F
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_10
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_11
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_12
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_13
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_14
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_15
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_16
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_17
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_18
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_19
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1A
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1B
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1C
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1D
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1E
	; specialcall SpecialCallWhereverYouAre,  TRAINER_NONE,          PhoneCallTrap_Script_1F
	assert_table_length NUM_SPECIALCALLS
