require("dotenv").config();
const path = require("path");
const fs = require("fs");
const bsdiff = require("bsdiff-node");

const AP_DIR = path.join(process.env.AP_DIR, "worlds/pokemon_crystal/data/");

const locations_data = JSON.parse(fs.readFileSync(path.join(AP_DIR, "locations.json"), "utf-8"));
const misc_data = JSON.parse(fs.readFileSync("script_data/misc_data.json", "utf-8"));
const types_data = JSON.parse(fs.readFileSync("script_data/types_data.json", "utf-8"));

const symfile = fs.readFileSync("pokecrystal.sym", "utf-8");
const rom = fs.readFileSync("pokecrystal.gbc");
const rom11 = fs.readFileSync("pokecrystal11.gbc");
const special_scripts = [
	"AP_Seed_Name",
	"AP_Wild",
	"AP_Setting",
	"AP_Starter",
	"BaseData",
	"AP_Misc",
	"Mart",
	"AP_TrainerParty",
	"AP_Evos",
	"AP_Attacks",
	"AP_Static",
	"AP_Start_Inventory",
	"AP_Prob",
	"AP_FishMons",
	"AP_Togepi",
	"AP_Trainer",
	"AP_Stats",
	"TreeMonSet",
	"AP_ItemText",
	"AP_Music_",
	"AP_FruitTree",
	"AP_MoveData",
	"AP_EncounterMusic"
];
let data = {
	rom_version: "",
	rom_version11: "",
	rom_addresses: {},
	ram_addresses: {},
	event_flags: {},
	pokemon: {},
	trainers: {},
	moves: {},
	items: {},
	tmhm: {},
	wilds: {
		fish: {},
		tree: {},
		grass: {},
		water: {}
	},
	static: {},
	types: {},
	misc: {},
	sfx: {
		pointers: [],
		cries: {}
	},
	music: {
		consts: {},
		maps: [],
		encounters: [],
		scripts: {}
	}
};

const parse_address = address => {
	const [bank, addr] = address.split(":");
	if (parseInt(bank, 16) === 0) {
		return parseInt(addr, 16);
	} else {
		return parseInt(bank, 16) * 0x4000 + parseInt(addr, 16) - 0x4000;
	}
};

const location_scripts = Object.values(locations_data).map(loc => loc.script);

symfile.split("\n").forEach(line => {
	//split "SomeFunction.AP_Label_Name" to just "AP_Label_Name"
	const label = line.split(" ").at(-1).split(".").at(-1);
	if (location_scripts.includes(label) || special_scripts.some(scr => label.startsWith(scr))) {
		const address = line.split(" ")[0];
		let rom_address = parse_address(address);
		const label_loc = Object.values(locations_data).find(loc => loc.script === label);
		const type = label_loc?.type;
		//fix label offsets
		if (type === "giveitem") {
			rom_address++;
		} else if (type === "hiddenitem") {
			rom_address += 2;
		}
		//warn for duplicate labels
		if (data.rom_addresses[label]) {
			console.log("dupe: " + label);
		}
		data.rom_addresses[label] = rom_address;
		if (label.startsWith("AP_Music_MAP_")) {
			const name = label.split("AP_Music_")[1];
			data.music.maps.push(name);
		} else if (label.startsWith("AP_Music_")) {
			const name = label.split("AP_Music_")[1];
			const mus = label.split("__")[1];
			data.music.scripts[name] = mus;
		}
	}
	if (
		label.startsWith("wArchipelago") ||
		["wEventFlags", "wMapEventStatus", "wMapGroup", "wMapNumber", "wPokedexCaught", "wStatusFlags"].includes(label)
	) {
		const address = line.split(" ")[0];
		const ram_address = parse_address(address) - 0xc000;
		data.ram_addresses[label] = ram_address;
	}
});
console.log("parsed symbol file");

data.rom_addresses["AP_ROM_Header"] = 0x134;
data.rom_addresses["AP_ROM_Revision"] = 0x14c;
data.rom_addresses["AP_ROM_Version"] = 0x14e;

//GB Header global checksum. Used for checking if basepatch matches between apworld and patch file
data.rom_version = rom.readUIntLE(0x14e, 2);
data.rom_version11 = rom11.readUIntLE(0x14e, 2);
//get pointers for SFX out of ROM
let sfx_adr = data.rom_addresses["AP_Setting_SFX_Pointers"];
for (let i = 0; i < 207; i++) {
	let bank = rom.readUIntLE(sfx_adr + i * 3, 1);
	let adr = rom.readUIntLE(sfx_adr + i * 3 + 1, 2);
	data.sfx.pointers.push([bank, adr]);
}
console.log("parsed ROM");

var event_flags = fs.readFileSync("constants/event_flags.asm", "utf-8");
let event_i = 0;
event_flags.split("\n").forEach(line => {
	if (line.includes("const EVENT_")) {
		const event_name = line.split(";")[0].split(" ").at(-1);
		data.event_flags[event_name] = event_i;
		event_i++;
	}
});
//berry trees are right after event flags in ROM, effectively the first berry tree has event flag 0x800
var script_const = fs.readFileSync("constants/script_constants.asm", "utf-8");
script_const.split("\n").forEach(line => {
	if (line.includes("const FRUITTREE_")) {
		const event_name = line.split(";")[0].split(" ")[1];
		data.event_flags[event_name] = event_i;
		event_i++;
	}
});

console.log("parsed event flags");

var mus_const = fs.readFileSync("constants/music_constants.asm", "utf-8");
var mus_pointer = fs.readFileSync("audio/music_pointers.asm", "utf-8").split("\n");
let mus_i = 0;
mus_const.split("\n").forEach(line => {
	if (line.includes("const MUSIC_")) {
		const mus_name = line.split(";")[0].split(" ")[1];
		//data.music.consts[mus_name] = mus_i;
		var pointer_line = mus_i + 5;
		var pointer_name = mus_pointer[pointer_line].split("Music_").at(-1).toLowerCase();
		const mus_asm = fs.readFileSync("audio/music/" + pointer_name + ".asm", "utf-8");
		const loop = mus_asm.includes("\tsound_loop 0,");
		data.music.consts[mus_name] = { id: mus_i, loop };
		mus_i++;
	}
});

data.music.encounters = [
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_RIVAL_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_ROCKET_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_POKEMANIAC_ENCOUNTER",
	"MUSIC_ROCKET_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_POKEMANIAC_ENCOUNTER",
	"MUSIC_RIVAL_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_OFFICER_ENCOUNTER",
	"MUSIC_POKEMANIAC_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_POKEMANIAC_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_ROCKET_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_YOUNGSTER_ENCOUNTER",
	"MUSIC_ROCKET_ENCOUNTER",
	"MUSIC_SAGE_ENCOUNTER",
	"MUSIC_SAGE_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_KIMONO_ENCOUNTER",
	"MUSIC_LASS_ENCOUNTER",
	"MUSIC_BEAUTY_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_RIVAL_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER",
	"MUSIC_ROCKET_ENCOUNTER",
	"MUSIC_HIKER_ENCOUNTER"
];

console.log("parsed music");

var cry_const = fs.readFileSync("constants/cry_constants.asm", "utf-8");
let cry_i = 0;
cry_const.split("\n").forEach(line => {
	if (line.includes("const CRY_")) {
		const cry_name = line.split(";")[0].split(" ")[1];
		data.sfx.cries[cry_name] = cry_i;
		cry_i++;
	}
});

console.log("parsed cries");

var pkmn_constants = fs.readFileSync("constants/pokemon_constants.asm", "utf-8");
var pkmn_evosattacks = fs.readFileSync("data/pokemon/evos_attacks.asm", "utf-8").split("\n");
let pkmn_i = 1;
let pkmn_linecount = 0;
let break_pkmn = false;

const pkmn_lines = pkmn_constants.split("\n");
while (!break_pkmn) {
	const line = pkmn_lines[pkmn_linecount];
	//end of the const definitions
	if (line.startsWith("DEF NUM_POKEMON")) {
		break_pkmn = true;
		continue;
	}
	if (line.startsWith("\tconst ")) {
		//get pokemon from const def
		const pkmn_name = line.trim().split(" ")[1];
		const id = pkmn_i;
		//open their stats file
		var pkmn_basestats = fs
			.readFileSync("data/pokemon/base_stats/" + pkmn_name.toLowerCase() + ".asm", "utf-8")
			.split("\n");
		//line 3 has base_stats (hp, atk, def etc.)
		const base_stats = pkmn_basestats[2]
			.replace(/ +/g, " ")
			.split("db ")[1]
			.split(", ")
			.map(s => parseInt(s));
		//line 6 has their types
		let types = pkmn_basestats[5].split(" ;")[0].split("db ")[1].split(", ");
		//monotype pokemon have the same type listed twice, dedupe it
		if (types[0] === types[1]) types = [types[0]];
		let tm_hm;
		//line 21 has their TM/HM/Move tutor compatibility
		if (pkmn_basestats[20] === "\ttmhm") {
			tm_hm = [];
		} else {
			tm_hm = pkmn_basestats[20].split("tmhm ")[1].split(", ");
		}
		//find the line in the evos_attacks file with the pokemon's evolutions label
		const evos_i = pkmn_evosattacks.findIndex(ea => ea === ".AP_Evos_" + pkmn_name);
		const evolutions = [];
		const endevos_i = pkmn_evosattacks.findIndex((ea, i) => i > evos_i && ea.match(new RegExp("^\tdb 0")));
		for (let i = evos_i + 1; i < endevos_i; i++) {
			evolutions.push(pkmn_evosattacks[i].split("\tdb ")[1].split(", "));
		}
		//find the line in the evos_attacks file with the pokemon's attacks label
		const attacks_i = pkmn_evosattacks.findIndex(ea => ea === ".AP_Attacks_" + pkmn_name);
		const learnset = [];
		const endmoves_i = pkmn_evosattacks.findIndex((ea, i) => i > endevos_i && ea.match(new RegExp("^\tdb 0 ;")));
		for (let i = attacks_i + 1; i < endmoves_i; i++) {
			const move = pkmn_evosattacks[i].split("\tdb ")[1].split(", ");
			learnset.push([parseInt(move[0]), move[1]]);
		}
		const pkmn_data = { id, base_stats, types, evolutions, learnset, tm_hm };
		data.pokemon[pkmn_name] = pkmn_data;
		pkmn_i++;
	}
	pkmn_linecount++;
}

//iterate through every pokemon
Object.keys(data.pokemon).forEach(pkmn_name => {
	//iterate through every pokemon again and check if they evolve into the current pokemon
	const has_pre_evolutions = Object.values(data.pokemon).some(p =>
		p.evolutions.map(e => e.at(-1)).includes(pkmn_name)
	);
	//if none do, theyre a base pokemon
	data.pokemon[pkmn_name].is_base = !has_pre_evolutions;
	//sum stats to get bst
	data.pokemon[pkmn_name].bst = data.pokemon[pkmn_name].base_stats.reduce((a, c) => a + c, 0);
});

console.log("parsed pokemon data");

var move_constants = fs.readFileSync("constants/move_constants.asm", "utf-8");
var move_data = fs.readFileSync("data/moves/moves.asm", "utf-8").split("\n");
var move_names = fs.readFileSync("data/moves/names.asm", "utf-8").split("\n");
let move_i = 0;
let move_linecount = 0;
let break_move = false;
const move_lines = move_constants.split("\n");
while (!break_move) {
	const line = move_lines[move_linecount];
	//end of move consts
	if (line.startsWith("DEF NUM_ATTACKS")) {
		break_move = true;
		continue;
	}
	if (line.startsWith("\tconst ")) {
		const move_name = line.trim().split(" ")[1];
		const id = move_i;
		//catch for move 0
		if (move_name === "NO_MOVE") {
			data.moves[move_name] = {
				id: 0,
				type: null,
				power: null,
				accuracy: null,
				pp: null,
				is_hm: false,
				name: ""
			};
			move_i++;
			move_linecount++;
			continue;
		}
		//find the move attributes line
		const move_data_line = move_data
			.find(m => m.match(`^\tmove ${move_name}`))
			.replace(/ +/g, " ")
			.split(", ");
		const power = parseInt(move_data_line[2]);
		const type = move_data_line[3];
		const accuracy = parseInt(move_data_line[4]);
		const pp = parseInt(move_data_line[5]);
		const is_hm = ["CUT", "FLY", "SURF", "STRENGTH", "FLASH", "WHIRLPOOL", "WATERFALL"].includes(move_name);
		const name = move_names[move_i + 1].split('"').at(-2);

		data.moves[move_name] = { id, type, power, accuracy, pp, is_hm, name };
		move_i++;
	}
	move_linecount++;
}

console.log("parsed move data");

var trainerparties = fs.readFileSync("data/trainers/parties.asm", "utf-8");
let trainer_i = 0;
let trainer_lines = trainerparties.split("\n");
let t_line = trainer_lines[trainer_i];

while (trainer_i < trainer_lines.length - 1) {
	//find label for trainer
	while (!t_line?.startsWith(".AP_TrainerParty")) {
		trainer_i++;
		t_line = trainer_lines[trainer_i];
	}
	//get end of label for trainer const name
	const trainer_name = t_line.slice(17);
	trainer_i++;
	t_line = trainer_lines[trainer_i];
	//name "FALKNER@" is 8 bytes long
	//this is for skipping the name when writing parties to the ROM
	const name_length = t_line.split('"')[1].split("@")[0].length + 1;
	const trainer_type = t_line.split(";")[0].split(" ").at(-1);
	const pokemon = [];
	trainer_i++;
	t_line = trainer_lines[trainer_i];
	//until the end of their party
	while (!t_line.startsWith("\tdb -1 ;")) {
		//get their pokemon, split into an array of values
		//array has pokemon level, pokemon name, held item (if present), and moves (if present)
		//work of converting this into an understandable object is currently done in python
		const mon = t_line.split("\tdb ")[1].replace(/ +/g, " ").split(", ");
		pokemon.push([parseInt(mon[0]), ...mon.slice(1)]);
		trainer_i++;
		t_line = trainer_lines[trainer_i];
	}
	const trainer_data = { trainer_type, pokemon, name_length };
	data.trainers[trainer_name] = trainer_data;
}

console.log("parsed trainer parties");

var item_consts = fs.readFileSync("constants/item_constants.asm", "utf-8").split("\n");
let item_i = 0;
//indices for sections of the items file
const items_start = item_consts.findIndex(i => i.match(/^\tconst /));
const items_end = item_consts.findIndex(i => i === "DEF NUM_ITEMS EQU const_value - 1");
const tms_start = item_consts.findIndex(i => i.match(/^\tadd_tm /));
const tms_end = item_consts.findIndex(i => i === "DEF NUM_TMS EQU __tmhm_value__ - 1");
const hms_start = item_consts.findIndex(i => i.match(/^\tadd_hm /));
const hms_end = item_consts.findIndex(i => i === "DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1");

for (let i = items_start; i < items_end; i++) {
	let item_name = item_consts[i].split(";")[0].replace(/ +/g, " ").split(" ").at(-2);
	data.items[item_name] = item_i;
	item_i++;
}
let tm_num = 1;
//add TMs and HMs data while we're here
for (let i = tms_start; i < tms_end; i++) {
	let item_name = item_consts[i].split(";")[0].replace(/ +/g, " ").split(" ").at(-2);
	tm_type = data.moves[item_name].type;
	data.tmhm[item_name] = { type: tm_type, tm_num: tm_num, is_hm: false };
	item_name = "TM_" + item_name;
	data.items[item_name] = item_i;
	item_i++;
	tm_num++;
}

for (let i = hms_start; i < hms_end; i++) {
	let item_name = item_consts[i].split(";")[0].replace(/ +/g, " ").split(" ").at(-2);
	tm_type = data.moves[item_name].type;
	data.tmhm[item_name] = { type: tm_type, tm_num: tm_num, is_hm: true };
	item_name = "HM_" + item_name;
	data.items[item_name] = item_i;
	item_i++;
	tm_num++;
}
//also move tutors
data.tmhm["FLAMETHROWER"] = { type: "FIRE", tm_num: tm_num, is_hm: false };
tm_num++;
data.tmhm["THUNDERBOLT"] = { type: "ELECTRIC", tm_num: tm_num, is_hm: false };
tm_num++;
data.tmhm["ICE_BEAM"] = { type: "ICE", tm_num: tm_num, is_hm: false };

console.log("parsed item constants");

var grasslabels = Object.keys(data.rom_addresses).filter(e => e.startsWith("AP_WildGrass"));
var johto_grass = fs.readFileSync("data/wild/johto_grass.asm", "utf-8").split("\n");
var kanto_grass = fs.readFileSync("data/wild/kanto_grass.asm", "utf-8").split("\n");
grasslabels.forEach(grass => {
	var grass_name = grass.split("AP_WildGrass_").at(-1);
	var grass_mons = [];
	var grass_line = johto_grass.findIndex(l => l.includes(grass));
	if (grass_line === -1) {
		grass_line = kanto_grass.findIndex(l => l.includes(grass));
		grass_line += 3;

		for (let i = 0; i < 7; i++) {
			var grass_data = kanto_grass[grass_line].split("\tdb ").at(-1);

			grass_data = grass_data.split(", ");

			grass_mons.push({ level: grass_data[0], pokemon: grass_data[1] });
			grass_line++;
		}
	} else {
		grass_line += 3;
		for (let i = 0; i < 7; i++) {
			var grass_data = johto_grass[grass_line].split("\tdb ").at(-1);
			grass_data = grass_data.split(", ");
			grass_mons.push({ level: grass_data[0], pokemon: grass_data[1] });
			grass_line++;
		}
	}
	data.wilds.grass[grass_name] = grass_mons;
});

console.log("parsed grass mons");

var waterlabels = Object.keys(data.rom_addresses).filter(e => e.startsWith("AP_WildWater"));
var johto_water = fs.readFileSync("data/wild/johto_water.asm", "utf-8").split("\n");
var kanto_water = fs.readFileSync("data/wild/kanto_water.asm", "utf-8").split("\n");
waterlabels.forEach(water => {
	var water_name = water.split("AP_WildWater_").at(-1);
	var water_mons = [];
	var water_line = johto_water.findIndex(l => l.includes(water));
	if (water_line === -1) {
		water_line = kanto_water.findIndex(l => l.includes(water));
		water_line += 2;

		for (let i = 0; i < 3; i++) {
			var water_data = kanto_water[water_line].split("\tdb ").at(-1);
			water_data = water_data.split(", ");
			water_mons.push({ level: water_data[0], pokemon: water_data[1] });
			water_line++;
		}
	} else {
		water_line += 2;
		for (let i = 0; i < 3; i++) {
			var water_data = johto_water[water_line].split("\tdb ").at(-1);
			water_data = water_data.split(", ");
			water_mons.push({ level: water_data[0], pokemon: water_data[1] });
			water_line++;
		}
	}
	data.wilds.water[water_name] = water_mons;
});

console.log("parsed water mons");

var fishes = fs.readFileSync("data/wild/fish.asm", "utf-8").split("\n");
let fish_line = 26;
while (fishes[fish_line] !== ".AP_FishMons_TimeFish:") {
	fish_line++;
	const fishname = fishes[fish_line].slice(1, -5);
	data.wilds.fish[fishname] = { Old: [], Good: [], Super: [] };
	fish_line++;
	while (fishes[fish_line] !== `.${fishname}_Good:`) {
		s = fishes[fish_line].split(",");
		const mon = s[1].trim();
		const level = s[2].trim();
		data.wilds.fish[fishname].Old.push({ level, pokemon: mon });
		fish_line++;
	}
	fish_line++;
	while (fishes[fish_line] !== `.${fishname}_Super:`) {
		s = fishes[fish_line].split(",");
		const mon = s[1].trim();
		const level = s[2].trim();
		data.wilds.fish[fishname].Good.push({ level, pokemon: mon });
		fish_line++;
	}
	fish_line++;
	while (!!fishes[fish_line].trim()) {
		s = fishes[fish_line].split(",");
		const mon = s[1].trim();
		const level = s[2].trim();
		data.wilds.fish[fishname].Super.push({ level, pokemon: mon });
		fish_line++;
	}
	fish_line++;
}
console.log("parsed fish");

var treemons = fs.readFileSync("data/wild/treemons.asm", "utf-8").split("\n");
let tree_line = 17;
for (let j = 0; j < 6; j++) {
	var group_name = treemons[tree_line].split("_").at(-1).slice(0, -1);
	tree_line += 2;
	let common = [];
	for (let i = 0; i < 6; i++) {
		var pokemon = treemons[tree_line].split(", ")[1];
		var level = treemons[tree_line].split(" ").at(-1);
		common.push({ level, pokemon });
		tree_line++;
	}
	tree_line++;
	tree_line++;
	let rare = [];
	for (let i = 0; i < 6; i++) {
		var pokemon = treemons[tree_line].split(", ")[1];
		var level = treemons[tree_line].split(" ").at(-1);
		rare.push({ level, pokemon });
		tree_line++;
	}
	tree_line += 2;
	data.wilds.tree[group_name] = { common, rare };
}
rockcommon = [];
tree_line++;
var rockmon = treemons[tree_line].split(", ")[1];
var rocklevel = treemons[tree_line].split(" ").at(-1);
rockcommon.push({ level: rocklevel, pokemon: rockmon });
tree_line++;
rockmon = treemons[tree_line].split(", ")[1];
rocklevel = treemons[tree_line].split(" ").at(-1);
rockcommon.push({ level: rocklevel, pokemon: rockmon });
data.wilds.tree["Rock"] = { common: rockcommon };

console.log("parsed trees");

data.static = {
	UnionCaveLapras: { pokemon: "LAPRAS", addresses: ["AP_Static_UnionCaveLapras_1", "AP_Static_UnionCaveLapras_2"] },
	EggTogepi: { pokemon: "TOGEPI", addresses: ["AP_Static_Togepi"] },
	RocketHQTrap1: { pokemon: "VOLTORB", addresses: ["AP_Static_RocketHQTrap_1"] },
	RocketHQTrap2: { pokemon: "GEODUDE", addresses: ["AP_Static_RocketHQTrap_2"] },
	RocketHQTrap3: { pokemon: "KOFFING", addresses: ["AP_Static_RocketHQTrap_3"] },
	RocketHQElectrode1: {
		pokemon: "ELECTRODE",
		addresses: ["AP_Static_RocketHQElectrode_1_1", "AP_Static_RocketHQElectrode_1_2"]
	},
	RocketHQElectrode2: {
		pokemon: "ELECTRODE",
		addresses: ["AP_Static_RocketHQElectrode_2_1", "AP_Static_RocketHQElectrode_2_2"]
	},
	RocketHQElectrode3: {
		pokemon: "ELECTRODE",
		addresses: ["AP_Static_RocketHQElectrode_3_1", "AP_Static_RocketHQElectrode_3_2"]
	},
	RedGyarados: { pokemon: "GYARADOS", addresses: ["AP_Static_RedGyarados_1", "AP_Static_RedGyarados_2"] },
	Ho_Oh: { pokemon: "HO_OH", addresses: ["AP_Static_Ho_Oh_1", "AP_Static_Ho_Oh_2"] },
	Suicune: {
		pokemon: "SUICUNE",
		addresses: ["AP_Static_Suicune_1", "AP_Static_Suicune_2", "AP_Static_Suicune_3", "AP_Static_Suicune_4"]
	},
	Lugia: { pokemon: "LUGIA", addresses: ["AP_Static_Lugia_1", "AP_Static_Lugia_2"] },
	Raikou: {
		pokemon: "RAIKOU",
		addresses: [
			"AP_Static_Raikou_1",
			"AP_Static_Raikou_2",
			"AP_Static_Raikou_3",
			"AP_Static_Raikou_4",
			"AP_Static_Raikou_5"
		]
	},
	Entei: {
		pokemon: "ENTEI",
		addresses: [
			"AP_Static_Entei_1",
			"AP_Static_Entei_2",
			"AP_Static_Entei_3",
			"AP_Static_Entei_4",
			"AP_Static_Entei_5"
		]
	},
	Sudowoodo: { pokemon: "SUDOWOODO", addresses: ["AP_Static_Sudowoodo"] },
	Snorlax: { pokemon: "SNORLAX", addresses: ["AP_Static_Snorlax_1", "AP_Static_Snorlax_2"] },
	CatchTutorial1: { pokemon: "RATATTA", addresses: ["AP_Static_CatchTutorial_1"] },
	CatchTutorial2: { pokemon: "RATATTA", addresses: ["AP_Static_CatchTutorial_2"] },
	CatchTutorial3: { pokemon: "RATATTA", addresses: ["AP_Static_CatchTutorial_3"] },
	Kenya: { pokemon: "SPEAROW", addresses: ["AP_Static_Kenya"] }
};

data.misc = misc_data.misc;
data.types = types_data.types;

console.log("did misc");

const out = JSON.stringify(data);
fs.writeFileSync(path.join(AP_DIR, "data.json"), out);

const ap_rom = path.join(__dirname, "pokecrystal.gbc");
const base_rom = path.join(__dirname, "pokecrystal_base.gbc");
const patch_file = path.join(AP_DIR, "basepatch.bsdiff4");

const ap_rom11 = path.join(__dirname, "pokecrystal11.gbc");
const base_rom11 = path.join(__dirname, "pokecrystal11_base.gbc");
const patch_file11 = path.join(AP_DIR, "basepatch11.bsdiff4");

bsdiff.diffSync(base_rom, ap_rom, patch_file);
bsdiff.diffSync(base_rom11, ap_rom11, patch_file11);

console.log("did patch");

console.log("AP RAM: " + data.ram_addresses["wArchipelagoItemReceived"].toString(16).toUpperCase());
console.log("ROM CHECKSUM: " + data.rom_version.toString(16).toUpperCase());
console.log("ROM.11 CHECKSUM: " + data.rom_version11.toString(16).toUpperCase());
