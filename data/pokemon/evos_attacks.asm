SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
.AP_Evos_BULBASAUR
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
.AP_Attacks_BULBASAUR
 	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SWEET_SCENT
	db 32, GROWTH
	db 39, SYNTHESIS
	db 46, SOLARBEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
.AP_Evos_IVYSAUR
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
.AP_Attacks_IVYSAUR
 	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 38, GROWTH
	db 47, SYNTHESIS
	db 56, SOLARBEAM
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
.AP_Evos_VENUSAUR
	db 0
.AP_Attacks_VENUSAUR
 	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 53, SYNTHESIS
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
.AP_Evos_CHARMANDER
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
.AP_Attacks_CHARMANDER
 	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, DRAGON_RAGE
	db 49, FIRE_SPIN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
.AP_Evos_CHARMELEON
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
.AP_Attacks_CHARMELEON
 	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CharizardEvosAttacks:
.AP_Evos_CHARIZARD
	db 0
.AP_Attacks_CHARIZARD
 	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 54, DRAGON_RAGE
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
.AP_Evos_SQUIRTLE
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
.AP_Attacks_SQUIRTLE
 	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 40, SKULL_BASH
	db 47, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WartortleEvosAttacks:
.AP_Evos_WARTORTLE
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
.AP_Attacks_WARTORTLE
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 45, SKULL_BASH
	db 53, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
.AP_Evos_BLASTOISE
	db 0
.AP_Attacks_BLASTOISE
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 1, WITHDRAW
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 55, SKULL_BASH
	db 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
.AP_Evos_CATERPIE
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
.AP_Attacks_CATERPIE
 	db 1, TACKLE
	db 1, STRING_SHOT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
.AP_Evos_METAPOD
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
.AP_Attacks_METAPOD
 	db 1, HARDEN
	db 7, HARDEN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
.AP_Evos_BUTTERFREE
	db 0
.AP_Attacks_BUTTERFREE
 	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 28, GUST
	db 34, PSYBEAM
	db 40, SAFEGUARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
.AP_Evos_WEEDLE
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
.AP_Attacks_WEEDLE
 	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KakunaEvosAttacks:
.AP_Evos_KAKUNA
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
.AP_Attacks_KAKUNA
 	db 1, HARDEN
	db 7, HARDEN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
.AP_Evos_BEEDRILL
	db 0
.AP_Attacks_BEEDRILL
 	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 15, FOCUS_ENERGY
	db 20, TWINEEDLE
	db 25, RAGE
	db 30, PURSUIT
	db 35, PIN_MISSILE
	db 40, AGILITY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
.AP_Evos_PIDGEY
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0
.AP_Attacks_PIDGEY
 	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 29, WING_ATTACK
	db 37, AGILITY
	db 47, MIRROR_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
.AP_Evos_PIDGEOTTO
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0
.AP_Attacks_PIDGEOTTO
 	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 43, AGILITY
	db 55, MIRROR_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
.AP_Evos_PIDGEOT
	db 0
.AP_Attacks_PIDGEOT
 	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 46, AGILITY
	db 61, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
.AP_Evos_RATTATA
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
.AP_Attacks_RATTATA
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RaticateEvosAttacks:
.AP_Evos_RATICATE
	db 0
.AP_Attacks_RATICATE
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
.AP_Evos_SPEAROW
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
.AP_Attacks_SPEAROW
 	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 25, PURSUIT
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

FearowEvosAttacks:
.AP_Evos_FEAROW
	db 0
.AP_Attacks_FEAROW
 	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, FURY_ATTACK
	db 7, LEER
	db 13, FURY_ATTACK
	db 26, PURSUIT
	db 32, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
.AP_Evos_EKANS
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
.AP_Attacks_EKANS
 	db 1, WRAP
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 23, GLARE
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
.AP_Evos_ARBOK
	db 0
.AP_Attacks_ARBOK
 	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 9, POISON_STING
	db 15, BITE
	db 25, GLARE
	db 33, SCREECH
	db 43, ACID
	db 51, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
.AP_Evos_PIKACHU
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0
.AP_Attacks_PIKACHU
 	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RaichuEvosAttacks:
.AP_Evos_RAICHU
	db 0
.AP_Attacks_RAICHU
 	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
.AP_Evos_SANDSHREW
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
.AP_Attacks_SANDSHREW
 	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 37, FURY_SWIPES
	db 45, SANDSTORM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
.AP_Evos_SANDSLASH
	db 0
.AP_Attacks_SANDSLASH
 	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 42, FURY_SWIPES
	db 52, SANDSTORM
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
.AP_Evos_NIDORAN_F
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
.AP_Attacks_NIDORAN_F
 	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
.AP_Evos_NIDORINA
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0
.AP_Attacks_NIDORINA
 	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, TAIL_WHIP
	db 36, BITE
	db 46, FURY_SWIPES
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
.AP_Evos_NIDOQUEEN
	db 0
.AP_Attacks_NIDOQUEEN
 	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 23, BODY_SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
.AP_Evos_NIDORAN_M
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
.AP_Attacks_NIDORAN_M
 	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
.AP_Evos_NIDORINO
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0
.AP_Attacks_NIDORINO
 	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NidokingEvosAttacks:
.AP_Evos_NIDOKING
	db 0
.AP_Attacks_NIDOKING
 	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
.AP_Evos_CLEFAIRY
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0
.AP_Attacks_CLEFAIRY
 	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ClefableEvosAttacks:
.AP_Evos_CLEFABLE
	db 0
.AP_Attacks_CLEFABLE
 	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
.AP_Evos_VULPIX
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0
.AP_Attacks_VULPIX
 	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
.AP_Evos_NINETALES
	db 0
.AP_Attacks_NINETALES
 	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
.AP_Evos_JIGGLYPUFF
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0
.AP_Attacks_JIGGLYPUFF
 	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
.AP_Evos_WIGGLYTUFF
	db 0
.AP_Attacks_WIGGLYTUFF
 	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
.AP_Evos_ZUBAT
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
.AP_Attacks_ZUBAT
 	db 1, LEECH_LIFE
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 27, WING_ATTACK
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
.AP_Evos_GOLBAT
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0
.AP_Attacks_GOLBAT
 	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

OddishEvosAttacks:
.AP_Evos_ODDISH
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
.AP_Attacks_ODDISH
 	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GloomEvosAttacks:
.AP_Evos_GLOOM
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0
.AP_Attacks_GLOOM
 	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
.AP_Evos_VILEPLUME
	db 0
.AP_Attacks_VILEPLUME
 	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
.AP_Evos_PARAS
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
.AP_Attacks_PARAS
 	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
.AP_Evos_PARASECT
	db 0
.AP_Attacks_PARASECT
 	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 37, SLASH
	db 46, GROWTH
	db 55, GIGA_DRAIN
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
.AP_Evos_VENONAT
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
.AP_Attacks_VENONAT
 	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VenomothEvosAttacks:
.AP_Evos_VENOMOTH
	db 0
.AP_Attacks_VENOMOTH
 	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
.AP_Evos_DIGLETT
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
.AP_Attacks_DIGLETT
 	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
.AP_Evos_DUGTRIO
	db 0
.AP_Attacks_DUGTRIO
 	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
.AP_Evos_MEOWTH
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
.AP_Attacks_MEOWTH
 	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FAINT_ATTACK
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 46, SLASH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PersianEvosAttacks:
.AP_Evos_PERSIAN
	db 0
.AP_Attacks_PERSIAN
 	db 1, SCRATCH
	db 1, GROWL
	db 1, BITE
	db 11, BITE
	db 20, PAY_DAY
	db 29, FAINT_ATTACK
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, SLASH
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
.AP_Evos_PSYDUCK
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0
.AP_Attacks_PSYDUCK
 	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GolduckEvosAttacks:
.AP_Evos_GOLDUCK
	db 0
.AP_Attacks_GOLDUCK
 	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 44, FURY_SWIPES
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
.AP_Evos_MANKEY
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
.AP_Attacks_MANKEY
 	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
.AP_Evos_PRIMEAPE
	db 0
.AP_Attacks_PRIMEAPE
 	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
.AP_Evos_GROWLITHE
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0
.AP_Attacks_GROWLITHE
 	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
.AP_Evos_ARCANINE
	db 0
.AP_Attacks_ARCANINE
 	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
.AP_Evos_POLIWAG
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0
.AP_Attacks_POLIWAG
 	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 25, RAIN_DANCE
	db 31, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
.AP_Evos_POLIWHIRL
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0
.AP_Attacks_POLIWHIRL
 	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
.AP_Evos_POLIWRATH
	db 0
.AP_Attacks_POLIWRATH
 	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 35, SUBMISSION
	db 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
.AP_Evos_ABRA
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
.AP_Attacks_ABRA
 	db 1, TELEPORT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KadabraEvosAttacks:
.AP_Evos_KADABRA
	db EVOLVE_LEVEL, 40, ALAKAZAM
	db 0
.AP_Attacks_KADABRA
 	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0, NO_MOVE
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
.AP_Evos_ALAKAZAM
	db 0
.AP_Attacks_ALAKAZAM
 	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MachopEvosAttacks:
.AP_Evos_MACHOP
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
.AP_Attacks_MACHOP
 	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MachokeEvosAttacks:
.AP_Evos_MACHOKE
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0
.AP_Attacks_MACHOKE
 	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MachampEvosAttacks:
.AP_Evos_MACHAMP
	db 0
.AP_Attacks_MACHAMP
 	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0, NO_MOVE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
.AP_Evos_BELLSPROUT
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
.AP_Attacks_BELLSPROUT
 	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
.AP_Evos_WEEPINBELL
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0
.AP_Attacks_WEEPINBELL
 	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
.AP_Evos_VICTREEBEL
	db 0
.AP_Attacks_VICTREEBEL
 	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
.AP_Evos_TENTACOOL
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
.AP_Attacks_TENTACOOL
 	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
.AP_Evos_TENTACRUEL
	db 0
.AP_Attacks_TENTACRUEL
 	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 38, BARRIER
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
.AP_Evos_GEODUDE
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
.AP_Attacks_GEODUDE
 	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
.AP_Evos_GRAVELER
	db EVOLVE_LEVEL, 40, GOLEM
	db 0
.AP_Attacks_GRAVELER
 	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GolemEvosAttacks:
.AP_Evos_GOLEM
	db 0
.AP_Attacks_GOLEM
 	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
.AP_Evos_PONYTA
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0
.AP_Attacks_PONYTA
 	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RapidashEvosAttacks:
.AP_Evos_RAPIDASH
	db 0
.AP_Attacks_RAPIDASH
 	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, FURY_ATTACK
	db 47, AGILITY
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
.AP_Evos_SLOWPOKE
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0
.AP_Attacks_SLOWPOKE
 	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
.AP_Evos_SLOWBRO
	db 0
.AP_Attacks_SLOWBRO
 	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
.AP_Evos_MAGNEMITE
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
.AP_Attacks_MAGNEMITE
 	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
.AP_Evos_MAGNETON
	db 0
.AP_Attacks_MAGNETON
 	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
.AP_Evos_FARFETCH_D
	db 0
.AP_Attacks_FARFETCH_D
 	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
.AP_Evos_DODUO
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
.AP_Attacks_DODUO
 	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DodrioEvosAttacks:
.AP_Evos_DODRIO
	db 0
.AP_Attacks_DODRIO
 	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
.AP_Evos_SEEL
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
.AP_Attacks_SEEL
 	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DewgongEvosAttacks:
.AP_Evos_DEWGONG
	db 0
.AP_Attacks_DEWGONG
 	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GrimerEvosAttacks:
.AP_Evos_GRIMER
	db EVOLVE_LEVEL, 38, MUK
	db 0
.AP_Attacks_GRIMER
 	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MukEvosAttacks:
.AP_Evos_MUK
	db 0
.AP_Attacks_MUK
 	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 33, HARDEN
	db 37, DISABLE
	db 45, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ShellderEvosAttacks:
.AP_Evos_SHELLDER
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0
.AP_Attacks_SHELLDER
 	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CloysterEvosAttacks:
.AP_Evos_CLOYSTER
	db 0
.AP_Attacks_CLOYSTER
 	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 33, SPIKES
	db 41, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
.AP_Evos_GASTLY
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
.AP_Attacks_GASTLY
 	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HaunterEvosAttacks:
.AP_Evos_HAUNTER
	db EVOLVE_LEVEL, 40, GENGAR
	db 0
.AP_Attacks_HAUNTER
 	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GengarEvosAttacks:
.AP_Evos_GENGAR
	db 0
.AP_Attacks_GENGAR
 	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0, NO_MOVE
	db 0 ; no more level-up moves

OnixEvosAttacks:
.AP_Evos_ONIX
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0
.AP_Attacks_ONIX
 	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
.AP_Evos_DROWZEE
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
.AP_Attacks_DROWZEE
 	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HypnoEvosAttacks:
.AP_Evos_HYPNO
	db 0
.AP_Attacks_HYPNO
 	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, PSYCH_UP
	db 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
.AP_Evos_KRABBY
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
.AP_Attacks_KRABBY
 	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 34, PROTECT
	db 41, CRABHAMMER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
.AP_Evos_KINGLER
	db 0
.AP_Attacks_KINGLER
 	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 38, PROTECT
	db 49, CRABHAMMER
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
.AP_Evos_VOLTORB
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
.AP_Attacks_VOLTORB
 	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
.AP_Evos_ELECTRODE
	db 0
.AP_Attacks_ELECTRODE
 	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
.AP_Evos_EXEGGCUTE
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0
.AP_Attacks_EXEGGCUTE
 	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
.AP_Evos_EXEGGUTOR
	db 0
.AP_Attacks_EXEGGUTOR
 	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
.AP_Evos_CUBONE
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
.AP_Attacks_CUBONE
 	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
.AP_Evos_MAROWAK
	db 0
.AP_Attacks_MAROWAK
 	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
.AP_Evos_HITMONLEE
	db 0
.AP_Attacks_HITMONLEE
 	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 46, MEGA_KICK
	db 51, REVERSAL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
.AP_Evos_HITMONCHAN
	db 0
.AP_Attacks_HITMONCHAN
 	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, MEGA_PUNCH
	db 44, DETECT
	db 50, COUNTER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

LickitungEvosAttacks:
.AP_Evos_LICKITUNG
	db 0
.AP_Attacks_LICKITUNG
 	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KoffingEvosAttacks:
.AP_Evos_KOFFING
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
.AP_Attacks_KOFFING
 	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WeezingEvosAttacks:
.AP_Evos_WEEZING
	db 0
.AP_Attacks_WEEZING
 	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SELFDESTRUCT
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
.AP_Evos_RHYHORN
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
.AP_Attacks_RHYHORN
 	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
.AP_Evos_RHYDON
	db 0
.AP_Attacks_RHYDON
 	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 54, TAKE_DOWN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
.AP_Evos_CHANSEY
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0
.AP_Attacks_CHANSEY
 	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
.AP_Evos_TANGELA
	db 0
.AP_Attacks_TANGELA
 	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, BIND
	db 31, MEGA_DRAIN
	db 34, STUN_SPORE
	db 40, SLAM
	db 46, GROWTH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
.AP_Evos_KANGASKHAN
	db 0
.AP_Attacks_KANGASKHAN
 	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
.AP_Evos_HORSEA
	db EVOLVE_LEVEL, 32, SEADRA
	db 0
.AP_Attacks_HORSEA
 	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
.AP_Evos_SEADRA
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0
.AP_Attacks_SEADRA
 	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
.AP_Evos_GOLDEEN
	db EVOLVE_LEVEL, 33, SEAKING
	db 0
.AP_Attacks_GOLDEEN
 	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SeakingEvosAttacks:
.AP_Evos_SEAKING
	db 0
.AP_Attacks_SEAKING
 	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, HORN_DRILL
	db 61, AGILITY
	db 0, NO_MOVE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
.AP_Evos_STARYU
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0
.AP_Attacks_STARYU
 	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

StarmieEvosAttacks:
.AP_Evos_STARMIE
	db 0
.AP_Attacks_STARMIE
 	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
.AP_Evos_MR__MIME
	db 0
.AP_Attacks_MR__MIME
 	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ScytherEvosAttacks:
.AP_Evos_SCYTHER
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0
.AP_Attacks_SCYTHER
 	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

JynxEvosAttacks:
.AP_Evos_JYNX
	db 0
.AP_Attacks_JYNX
 	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
.AP_Evos_ELECTABUZZ
	db 0
.AP_Attacks_ELECTABUZZ
 	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MagmarEvosAttacks:
.AP_Evos_MAGMAR
	db 0
.AP_Attacks_MAGMAR
 	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
.AP_Evos_PINSIR
	db 0
.AP_Attacks_PINSIR
 	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, BIND
	db 19, SEISMIC_TOSS
	db 25, HARDEN
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
.AP_Evos_TAUROS
	db 0
.AP_Attacks_TAUROS
 	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
.AP_Evos_MAGIKARP
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
.AP_Attacks_MAGIKARP
 	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
.AP_Evos_GYARADOS
	db 0
.AP_Attacks_GYARADOS
 	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
.AP_Evos_LAPRAS
	db 0
.AP_Attacks_LAPRAS
 	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DittoEvosAttacks:
.AP_Evos_DITTO
	db 0
.AP_Attacks_DITTO
 	db 1, TRANSFORM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

EeveeEvosAttacks:
.AP_Evos_EEVEE
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0
.AP_Attacks_EEVEE
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
.AP_Evos_VAPOREON
	db 0
.AP_Attacks_VAPOREON
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

JolteonEvosAttacks:
.AP_Evos_JOLTEON
	db 0
.AP_Attacks_JOLTEON
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

FlareonEvosAttacks:
.AP_Evos_FLAREON
	db 0
.AP_Attacks_FLAREON
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
.AP_Evos_PORYGON
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0
.AP_Attacks_PORYGON
 	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0, NO_MOVE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
.AP_Evos_OMANYTE
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
.AP_Attacks_OMANYTE
 	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

OmastarEvosAttacks:
.AP_Evos_OMASTAR
	db 0
.AP_Attacks_OMASTAR
 	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KabutoEvosAttacks:
.AP_Evos_KABUTO
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
.AP_Attacks_KABUTO
 	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
.AP_Evos_KABUTOPS
	db 0
.AP_Attacks_KABUTOPS
 	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
.AP_Evos_AERODACTYL
	db 0
.AP_Attacks_AERODACTYL
 	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
.AP_Evos_SNORLAX
	db 0
.AP_Attacks_SNORLAX
 	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
.AP_Evos_ARTICUNO
	db 0
.AP_Attacks_ARTICUNO
 	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
.AP_Evos_ZAPDOS
	db 0
.AP_Attacks_ZAPDOS
 	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MoltresEvosAttacks:
.AP_Evos_MOLTRES
	db 0
.AP_Attacks_MOLTRES
 	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DratiniEvosAttacks:
.AP_Evos_DRATINI
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
.AP_Attacks_DRATINI
 	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DragonairEvosAttacks:
.AP_Evos_DRAGONAIR
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
.AP_Attacks_DRAGONAIR
 	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
.AP_Evos_DRAGONITE
	db 0
.AP_Attacks_DRAGONITE
 	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
.AP_Evos_MEWTWO
	db 0
.AP_Attacks_MEWTWO
 	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MewEvosAttacks:
.AP_Evos_MEW
	db 0
.AP_Attacks_MEW
 	db 1, POUND
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
.AP_Evos_CHIKORITA
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0
.AP_Attacks_CHIKORITA
 	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 22, SYNTHESIS
	db 29, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 43, SAFEGUARD
	db 50, SOLARBEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

BayleefEvosAttacks:
.AP_Evos_BAYLEEF
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0
.AP_Attacks_BAYLEEF
 	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 47, SAFEGUARD
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
.AP_Evos_MEGANIUM
	db 0
.AP_Attacks_MEGANIUM
 	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 51, SAFEGUARD
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
.AP_Evos_CYNDAQUIL
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0
.AP_Attacks_CYNDAQUIL
 	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 27, FLAME_WHEEL
	db 36, SWIFT
	db 46, FLAMETHROWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
.AP_Evos_QUILAVA
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0
.AP_Attacks_QUILAVA
 	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 42, SWIFT
	db 54, FLAMETHROWER
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
.AP_Evos_TYPHLOSION
	db 0
.AP_Attacks_TYPHLOSION
 	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 45, SWIFT
	db 60, FLAMETHROWER
	db 0 ; no more level-up moves

TotodileEvosAttacks:
.AP_Evos_TOTODILE
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0
.AP_Attacks_TOTODILE
 	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 27, SCARY_FACE
	db 35, SLASH
	db 43, SCREECH
	db 52, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CroconawEvosAttacks:
.AP_Evos_CROCONAW
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0
.AP_Attacks_CROCONAW
 	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 37, SLASH
	db 45, SCREECH
	db 55, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
.AP_Evos_FERALIGATR
	db 0
.AP_Attacks_FERALIGATR
 	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 38, SLASH
	db 47, SCREECH
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
.AP_Evos_SENTRET
	db EVOLVE_LEVEL, 15, FURRET
	db 0
.AP_Attacks_SENTRET
 	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

FurretEvosAttacks:
.AP_Evos_FURRET
	db 0
.AP_Attacks_FURRET
 	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HoothootEvosAttacks:
.AP_Evos_HOOTHOOT
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0
.AP_Attacks_HOOTHOOT
 	db 1, TACKLE
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, DREAM_EATER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
.AP_Evos_NOCTOWL
	db 0
.AP_Attacks_NOCTOWL
 	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 41, CONFUSION
	db 57, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
.AP_Evos_LEDYBA
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0
.AP_Attacks_LEDYBA
 	db 1, TACKLE
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 29, BATON_PASS
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

LedianEvosAttacks:
.AP_Evos_LEDIAN
	db 0
.AP_Attacks_LEDIAN
 	db 1, TACKLE
	db 1, SUPERSONIC
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 24, SAFEGUARD
	db 33, BATON_PASS
	db 42, SWIFT
	db 51, AGILITY
	db 60, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
.AP_Evos_SPINARAK
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0
.AP_Attacks_SPINARAK
 	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 23, LEECH_LIFE
	db 30, FURY_SWIPES
	db 37, SPIDER_WEB
	db 45, AGILITY
	db 53, PSYCHIC_M
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

AriadosEvosAttacks:
.AP_Evos_ARIADOS
	db 0
.AP_Attacks_ARIADOS
 	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, CONSTRICT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 25, LEECH_LIFE
	db 34, FURY_SWIPES
	db 43, SPIDER_WEB
	db 53, AGILITY
	db 63, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
.AP_Evos_CROBAT
	db 0
.AP_Attacks_CROBAT
 	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
.AP_Evos_CHINCHOU
	db EVOLVE_LEVEL, 27, LANTURN
	db 0
.AP_Attacks_CHINCHOU
 	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

LanturnEvosAttacks:
.AP_Evos_LANTURN
	db 0
.AP_Attacks_LANTURN
 	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PichuEvosAttacks:
.AP_Evos_PICHU
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0
.AP_Attacks_PICHU
 	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CleffaEvosAttacks:
.AP_Evos_CLEFFA
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0
.AP_Attacks_CLEFFA
 	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
.AP_Evos_IGGLYBUFF
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0
.AP_Attacks_IGGLYBUFF
 	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TogepiEvosAttacks:
.AP_Evos_TOGEPI
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0
.AP_Attacks_TOGEPI
 	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
.AP_Evos_TOGETIC
	db 0
.AP_Attacks_TOGETIC
 	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

NatuEvosAttacks:
.AP_Evos_NATU
	db EVOLVE_LEVEL, 25, XATU
	db 0
.AP_Attacks_NATU
 	db 1, PECK
	db 1, LEER
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 30, FUTURE_SIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

XatuEvosAttacks:
.AP_Evos_XATU
	db 0
.AP_Attacks_XATU
 	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 35, FUTURE_SIGHT
	db 50, CONFUSE_RAY
	db 65, PSYCHIC_M
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MareepEvosAttacks:
.AP_Evos_MAREEP
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0
.AP_Attacks_MAREEP
 	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 23, COTTON_SPORE
	db 30, LIGHT_SCREEN
	db 37, THUNDER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
.AP_Evos_FLAAFFY
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0
.AP_Attacks_FLAAFFY
 	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
	db 0, NO_MOVE
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
.AP_Evos_AMPHAROS
	db 0
.AP_Attacks_AMPHAROS
 	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
.AP_Evos_BELLOSSOM
	db 0
.AP_Attacks_BELLOSSOM
 	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
.AP_Evos_MARILL
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0
.AP_Attacks_MARILL
 	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
.AP_Evos_AZUMARILL
	db 0
.AP_Attacks_AZUMARILL
 	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, RAIN_DANCE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
.AP_Evos_SUDOWOODO
	db 0
.AP_Attacks_SUDOWOODO
 	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 28, ROCK_SLIDE
	db 37, FAINT_ATTACK
	db 46, SLAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
.AP_Evos_POLITOED
	db 0
.AP_Attacks_POLITOED
 	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
.AP_Evos_HOPPIP
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0
.AP_Attacks_HOPPIP
 	db 1, SPLASH
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 30, MEGA_DRAIN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
.AP_Evos_SKIPLOOM
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0
.AP_Attacks_SKIPLOOM
 	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 29, COTTON_SPORE
	db 36, MEGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
.AP_Evos_JUMPLUFF
	db 0
.AP_Attacks_JUMPLUFF
 	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, MEGA_DRAIN
	db 0 ; no more level-up moves

AipomEvosAttacks:
.AP_Evos_AIPOM
	db 0
.AP_Attacks_AIPOM
 	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 6, SAND_ATTACK
	db 12, BATON_PASS
	db 19, FURY_SWIPES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
.AP_Evos_SUNKERN
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0
.AP_Attacks_SUNKERN
 	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 31, SYNTHESIS
	db 46, GIGA_DRAIN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
.AP_Evos_SUNFLORA
	db 0
.AP_Attacks_SUNFLORA
 	db 1, ABSORB
	db 1, POUND
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 31, PETAL_DANCE
	db 46, SOLARBEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
.AP_Evos_YANMA
	db 0
.AP_Attacks_YANMA
 	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, SONICBOOM
	db 25, DETECT
	db 31, SUPERSONIC
	db 37, WING_ATTACK
	db 43, SCREECH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WooperEvosAttacks:
.AP_Evos_WOOPER
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0
.AP_Attacks_WOOPER
 	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 21, AMNESIA
	db 31, EARTHQUAKE
	db 41, RAIN_DANCE
	db 51, MIST
	db 51, HAZE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
.AP_Evos_QUAGSIRE
	db 0
.AP_Attacks_QUAGSIRE
 	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 23, AMNESIA
	db 35, EARTHQUAKE
	db 47, RAIN_DANCE
	db 59, MIST
	db 59, HAZE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
.AP_Evos_ESPEON
	db 0
.AP_Attacks_ESPEON
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYCH_UP
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
.AP_Evos_UMBREON
	db 0
.AP_Attacks_UMBREON
 	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
.AP_Evos_MURKROW
	db 0
.AP_Attacks_MURKROW
 	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
.AP_Evos_SLOWKING
	db 0
.AP_Attacks_SLOWKING
 	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, SWAGGER
	db 48, PSYCHIC_M
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
.AP_Evos_MISDREAVUS
	db 0
.AP_Attacks_MISDREAVUS
 	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

UnownEvosAttacks:
.AP_Evos_UNOWN
	db 0
.AP_Attacks_UNOWN
 	db 1, HIDDEN_POWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
.AP_Evos_WOBBUFFET
	db 0
.AP_Attacks_WOBBUFFET
 	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
.AP_Evos_GIRAFARIG
	db 0
.AP_Attacks_GIRAFARIG
 	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 30, BATON_PASS
	db 41, PSYBEAM
	db 54, CRUNCH
	db 0 ; no more level-up moves

PinecoEvosAttacks:
.AP_Evos_PINECO
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0
.AP_Attacks_PINECO
 	db 1, TACKLE
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 36, EXPLOSION
	db 43, SPIKES
	db 50, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
.AP_Evos_FORRETRESS
	db 0
.AP_Attacks_FORRETRESS
 	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 39, EXPLOSION
	db 49, SPIKES
	db 59, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
.AP_Evos_DUNSPARCE
	db 0
.AP_Attacks_DUNSPARCE
 	db 1, RAGE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 18, SPITE
	db 26, PURSUIT
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GligarEvosAttacks:
.AP_Evos_GLIGAR
	db 0
.AP_Attacks_GLIGAR
 	db 1, POISON_STING
	db 6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 36, SLASH
	db 44, SCREECH
	db 52, GUILLOTINE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
.AP_Evos_STEELIX
	db 0
.AP_Attacks_STEELIX
 	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 49, CRUNCH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
.AP_Evos_SNUBBULL
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0
.AP_Attacks_SNUBBULL
 	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

GranbullEvosAttacks:
.AP_Evos_GRANBULL
	db 0
.AP_Attacks_GRANBULL
 	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 28, ROAR
	db 38, RAGE
	db 51, TAKE_DOWN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
.AP_Evos_QWILFISH
	db 0
.AP_Attacks_QWILFISH
 	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, WATER_GUN
	db 28, PIN_MISSILE
	db 37, TAKE_DOWN
	db 46, HYDRO_PUMP
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
.AP_Evos_SCIZOR
	db 0
.AP_Attacks_SCIZOR
 	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
.AP_Evos_SHUCKLE
	db 0
.AP_Attacks_SHUCKLE
 	db 1, CONSTRICT
	db 1, WITHDRAW
	db 9, WRAP
	db 14, ENCORE
	db 23, SAFEGUARD
	db 28, BIDE
	db 37, REST
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
.AP_Evos_HERACROSS
	db 0
.AP_Attacks_HERACROSS
 	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 44, REVERSAL
	db 54, MEGAHORN
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
.AP_Evos_SNEASEL
	db 0
.AP_Attacks_SNEASEL
 	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, FAINT_ATTACK
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, SLASH
	db 57, BEAT_UP
	db 65, METAL_CLAW
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
.AP_Evos_TEDDIURSA
	db EVOLVE_LEVEL, 30, URSARING
	db 0
.AP_Attacks_TEDDIURSA
 	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 36, SLASH
	db 43, SNORE
	db 50, THRASH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
.AP_Evos_URSARING
	db 0
.AP_Attacks_URSARING
 	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 39, SLASH
	db 49, SNORE
	db 59, THRASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
.AP_Evos_SLUGMA
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0
.AP_Attacks_SLUGMA
 	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, BODY_SLAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
.AP_Evos_MAGCARGO
	db 0
.AP_Attacks_MAGCARGO
 	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, BODY_SLAM
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
.AP_Evos_SWINUB
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0
.AP_Attacks_SWINUB
 	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 37, MIST
	db 46, BLIZZARD
	db 55, AMNESIA
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
.AP_Evos_PILOSWINE
	db 0
.AP_Attacks_PILOSWINE
 	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ENDURE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, MIST
	db 56, BLIZZARD
	db 70, AMNESIA
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
.AP_Evos_CORSOLA
	db 0
.AP_Attacks_CORSOLA
 	db 1, TACKLE
	db 7, HARDEN
	db 13, BUBBLE
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SPIKE_CANNON
	db 37, MIRROR_COAT
	db 43, ANCIENTPOWER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
.AP_Evos_REMORAID
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0
.AP_Attacks_REMORAID
 	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 33, FOCUS_ENERGY
	db 44, ICE_BEAM
	db 55, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
.AP_Evos_OCTILLERY
	db 0
.AP_Attacks_OCTILLERY
 	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 38, FOCUS_ENERGY
	db 54, ICE_BEAM
	db 70, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
.AP_Evos_DELIBIRD
	db 0
.AP_Attacks_DELIBIRD
 	db 1, PRESENT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MantineEvosAttacks:
.AP_Evos_MANTINE
	db 0
.AP_Attacks_MANTINE
 	db 1, TACKLE
	db 1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 49, CONFUSE_RAY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
.AP_Evos_SKARMORY
	db 0
.AP_Attacks_SKARMORY
 	db 1, LEER
	db 1, PECK
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 37, FURY_ATTACK
	db 49, STEEL_WING
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
.AP_Evos_HOUNDOUR
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0
.AP_Attacks_HOUNDOUR
 	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
.AP_Evos_HOUNDOOM
	db 0
.AP_Attacks_HOUNDOOM
 	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FAINT_ATTACK
	db 41, FLAMETHROWER
	db 52, CRUNCH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

KingdraEvosAttacks:
.AP_Evos_KINGDRA
	db 0
.AP_Attacks_KINGDRA
 	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
.AP_Evos_PHANPY
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0
.AP_Attacks_PHANPY
 	db 1, TACKLE
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 41, ENDURE
	db 49, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
.AP_Evos_DONPHAN
	db 0
.AP_Attacks_DONPHAN
 	db 1, HORN_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, FURY_ATTACK
	db 33, ROLLOUT
	db 41, RAPID_SPIN
	db 49, EARTHQUAKE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
.AP_Evos_PORYGON2
	db 0
.AP_Attacks_PORYGON2
 	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 0, NO_MOVE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
.AP_Evos_STANTLER
	db 0
.AP_Attacks_STANTLER
 	db 1, TACKLE
	db 8, LEER
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, SAND_ATTACK
	db 40, TAKE_DOWN
	db 49, CONFUSE_RAY
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
.AP_Evos_SMEARGLE
	db 0
.AP_Attacks_SMEARGLE
 	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
.AP_Evos_TYROGUE
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0
.AP_Attacks_TYROGUE
 	db 1, TACKLE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
.AP_Evos_HITMONTOP
	db 0
.AP_Attacks_HITMONTOP
 	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 13, PURSUIT
	db 19, QUICK_ATTACK
	db 25, RAPID_SPIN
	db 31, COUNTER
	db 37, AGILITY
	db 43, DETECT
	db 49, TRIPLE_KICK
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
.AP_Evos_SMOOCHUM
	db EVOLVE_LEVEL, 30, JYNX
	db 0
.AP_Attacks_SMOOCHUM
 	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

ElekidEvosAttacks:
.AP_Evos_ELEKID
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0
.AP_Attacks_ELEKID
 	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MagbyEvosAttacks:
.AP_Evos_MAGBY
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0
.AP_Attacks_MAGBY
 	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

MiltankEvosAttacks:
.AP_Evos_MILTANK
	db 0
.AP_Attacks_MILTANK
 	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
.AP_Evos_BLISSEY
	db 0
.AP_Attacks_BLISSEY
 	db 1, POUND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
.AP_Evos_RAIKOU
	db 0
.AP_Attacks_RAIKOU
 	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

EnteiEvosAttacks:
.AP_Evos_ENTEI
	db 0
.AP_Attacks_ENTEI
 	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
.AP_Evos_SUICUNE
	db 0
.AP_Attacks_SUICUNE
 	db 1, BITE
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
.AP_Evos_LARVITAR
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0
.AP_Attacks_LARVITAR
 	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
.AP_Evos_PUPITAR
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0
.AP_Attacks_PUPITAR
 	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 56, EARTHQUAKE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
.AP_Evos_TYRANITAR
	db 0
.AP_Attacks_TYRANITAR
 	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
.AP_Evos_LUGIA
	db 0
.AP_Attacks_LUGIA
 	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

HoOhEvosAttacks:
.AP_Evos_HO_OH
	db 0
.AP_Attacks_HO_OH
 	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0, NO_MOVE
	db 0 ; no more level-up moves

CelebiEvosAttacks:
.AP_Evos_CELEBI
	db 0
.AP_Attacks_CELEBI
 	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves