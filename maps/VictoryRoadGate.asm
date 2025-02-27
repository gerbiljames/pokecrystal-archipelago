	object_const_def
	const VICTORYROADGATE_OFFICER
	const VICTORYROADGATE_BLACK_BELT1
	const VICTORYROADGATE_BLACK_BELT2

VictoryRoadGate_MapScripts:
	def_scene_scripts
	scene_script VictoryRoadGateNoop1Scene, SCENE_VICTORYROADGATE_BADGE_CHECK
	scene_script VictoryRoadGateNoop2Scene, SCENE_VICTORYROADGATE_NOOP

	def_callbacks

VictoryRoadGateNoop1Scene:
	end

VictoryRoadGateNoop2Scene:
	end

VictoryRoadGateBadgeCheckScript:
	turnobject PLAYER, LEFT
	sjump _VictoryRoadGateBadgeCheckScript

VictoryRoadGateOfficerScript:
	faceplayer
_VictoryRoadGateBadgeCheckScript:
	opentext
	writetext VictoryRoadGateOfficerText
	promptbutton
	readvar VAR_BADGES
.AP_Setting_VictoryRoadBadges
	ifgreater NUM_JOHTO_BADGES - 1, .AllEightBadges
	writetext VictoryRoadGateNotEnoughBadgesText
	waitbutton
	closetext
	applymovement PLAYER, VictoryRoadGateStepDownMovement
	end

.AllEightBadges:
	writetext VictoryRoadGateEightBadgesText
	waitbutton
	closetext
	setscene SCENE_VICTORYROADGATE_NOOP
	end

VictoryRoadGateLeftBlackBeltScript:
	faceplayer
	opentext
	writetext VictoryRoadGateLeftBlackBeltText
	readvar VAR_BADGES
.AP_Setting_RedBadges_Gate
	ifgreater 15, .OpenMtSilver
	writetext VictoryRoadGateLeftNoEntryText
	waitbutton
	closetext
	end

.OpenMtSilver
	writetext VictoryRoadGateLeftBadgesText
	promptbutton
	closetext
	playsound SFX_WARP_TO
	applymovement VICTORYROADGATE_BLACK_BELT1, VictoryRoadGateGuyTeleport
	disappear VICTORYROADGATE_BLACK_BELT1
	setevent EVENT_OPENED_MT_SILVER
	end

VictoryRoadGateRightBlackBeltScript:
	jumptextfaceplayer VictoryRoadGateRightBlackBeltText

VictoryRoadGateStepDownMovement:
	step DOWN
	step_end

VictoryRoadGateOfficerText:
	text "Only trainers who"
	line "have proven them-"
	cont "selves may pass."
	done

VictoryRoadGateNotEnoughBadgesText:
	text "You don't have all"
.AP_Setting_VictoryRoadBadges_Text
	line "08 GYM BADGES."

	para "I'm sorry, but I"
	line "can't let you go"
	cont "through."
	done

VictoryRoadGateEightBadgesText:
	text "Oh! You have"
	line "the BADGES!"

	para "Please, go right"
	line "on through!"
	done

VictoryRoadGateLeftBlackBeltText:
	text "This way leads to"
	line "MT.SILVER."

	para "They say you need"
.AP_Setting_RedBadges_Text
	line "16 BADGES to get"
	cont "there."
	done

VictoryRoadGateLeftBadgesText:
	text "Oh! You have all"
	line "the BADGES!"

	para "I'll get out of"
	line "your way."
	done

VictoryRoadGateLeftNoEntryText:
	text "Looks like you"
	line "don't have enough."
	done

VictoryRoadGateRightBlackBeltText:
	text "Off to the #MON"
	line "LEAGUE, are you?"

	para "The ELITE FOUR are"
	line "so strong it's"

	para "scary, and they're"
	line "ready for you!"
	done

VictoryRoadGateGuyTeleport:
	teleport_from
	step_end

VictoryRoadGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 13, ROUTE_22, 1
	warp_event 18, 13, ROUTE_22, 1
	warp_event  9, 17, ROUTE_26, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event  9,  0, VICTORY_ROAD, 1
	warp_event 10,  0, VICTORY_ROAD, 1
	warp_event  1, 13, ROUTE_28, 2
	warp_event  2, 13, ROUTE_28, 2

	def_coord_events
	coord_event 10, 5, SCENE_VICTORYROADGATE_BADGE_CHECK, VictoryRoadGateBadgeCheckScript

	def_bg_events

	def_object_events
	object_event  8, 5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateOfficerScript, -1
	object_event  7,  11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateLeftBlackBeltScript, EVENT_OPENED_MT_SILVER
	object_event 12,  11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VictoryRoadGateRightBlackBeltScript, EVENT_FOUGHT_SNORLAX
