PhoneCallTrap_Script_00: 
	farwritetext PhoneCallTrap_00
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_01: 
	farwritetext PhoneCallTrap_01
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_02: 
	farwritetext PhoneCallTrap_02
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_03: 
	farwritetext PhoneCallTrap_03
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_04: 
	farwritetext PhoneCallTrap_04
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_05: 
	farwritetext PhoneCallTrap_05
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_06: 
	farwritetext PhoneCallTrap_06
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_07: 
	farwritetext PhoneCallTrap_07
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_08: 
	farwritetext PhoneCallTrap_08
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_09: 
	farwritetext PhoneCallTrap_09
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0A: 
	farwritetext PhoneCallTrap_0A
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0B: 
	farwritetext PhoneCallTrap_0B
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0C: 
	farwritetext PhoneCallTrap_0C
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0D: 
	farwritetext PhoneCallTrap_0D
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0E: 
	farwritetext PhoneCallTrap_0E
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end
PhoneCallTrap_Script_0F: 
	farwritetext PhoneCallTrap_0F
	specialphonecall SPECIALCALL_NONE
	callasm IncrementReadCounter
	end

IncrementReadCounter:
	ld a, [wArchipelagoPhoneTrapIndex]
	ld [wArchipelagoPhoneTrapReadIndex], a
	ret