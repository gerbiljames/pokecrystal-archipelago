/* 
Builds location_mapping and item_mapping files from the crystal poptracker, using data from the AP world.
*/
require("dotenv").config();
const fs = require("fs");
const path = require("path");

const AP_DIR = path.join(process.env.AP_DIR, "worlds/pokemon_crystal/data/");
const TRACKER_DIR = path.join(process.env.TRACKER_DIR, "scripts/autotracking/");

const locations = JSON.parse(fs.readFileSync(path.join(AP_DIR, "locations.json"), "utf-8"));
const items = JSON.parse(fs.readFileSync(path.join(AP_DIR, "items.json"), "utf-8"));
const regions = JSON.parse(fs.readFileSync(path.join(AP_DIR, "regions.json"), "utf-8"));
const data = JSON.parse(fs.readFileSync(path.join(AP_DIR, "data.json"), "utf-8"));

const OVERRIDE_REGIONS_MAP = {
	//REGION_NAME: ["Location Name", "Check Name Prefix - "],
	REGION_AZALEA_GYM: ["Azalea Town", "Gym - "],
	REGION_BLACKTHORN_GYM_1F: ["Blackthorn City", "Gym - "],
	"REGION_BLACKTHORN_GYM_1F:STRENGTH": ["Blackthorn City", "Gym - "],
	REGION_BLACKTHORN_GYM_2F: ["Blackthorn City", "Gym - "],
	REGION_CELADON_GYM: ["Celadon City", "Gym - "],
	REGION_CERULEAN_GYM: ["Cerulean City", "Gym - "],
	REGION_CIANWOOD_GYM: ["Cianwood City", "Gym - "],
	"REGION_CIANWOOD_GYM:STRENGTH": ["Cianwood City", "Gym - "],
	REGION_ECRUTEAK_GYM: ["Ecruteak City", "Gym - "],
	REGION_FUCHSIA_GYM: ["Fuchsia City", "Gym - "],
	REGION_GOLDENROD_GYM: ["Goldenrod City", "Gym - "],
	REGION_MAHOGANY_GYM: ["Mahogany Town", "Gym - "],
	REGION_OLIVINE_GYM: ["Olivine City", "Gym - "],
	REGION_PEWTER_GYM: ["Pewter City", "Gym - "],
	REGION_SAFFRON_GYM: ["Saffron City", "Gym - "],
	REGION_SEAFOAM_GYM: ["Seafoam Islands", "Gym - "],
	REGION_VERMILION_GYM: ["Vermilion City", "Gym - "],
	REGION_VIOLET_GYM: ["Violet City", "Gym - "],
	REGION_VIRIDIAN_GYM: ["Viridian City", "Gym - "],
	REGION_ELMS_LAB: ["New Bark Town", "Elm's Lab - "],
	REGION_TEAM_ROCKET_BASE_B1F: ["Mahogany Town", "Rocket HQ "],
	REGION_TEAM_ROCKET_BASE_B2F: ["Mahogany Town", "Rocket HQ "],
	REGION_TEAM_ROCKET_BASE_B3F: ["Mahogany Town", "Rocket HQ "],
	REGION_CIANWOOD_PHARMACY: ["Cianwood City", "Pharmacy - "],
	REGION_ROUTE_39_FARMHOUSE: ["Route 39", "Moomoo Farm - "],
	REGION_CHARCOAL_KILN: ["Azalea Town", ""],
	REGION_GOLDENROD_UNDERGROUND_WAREHOUSE: ["Goldenrod Underground", "Warehouse - "],
	"REGION_GOLDENROD_UNDERGROUND_WAREHOUSE:TAKEOVER": ["Goldenrod Underground", "Warehouse - "],
	REGION_GOLDENROD_DEPT_STORE_B1F: ["Goldenrod City", "Dept. Store "],
	"REGION_GOLDENROD_DEPT_STORE_B1F:WAREHOUSE": ["Goldenrod City", "Dept. Store "],
	REGION_GOLDENROD_FLOWER_SHOP: ["Goldenrod City", ""],
	REGION_DRAGONS_DEN_B1F: ["Blackthorn City", "Dragon's Den "],
	"REGION_DRAGONS_DEN_B1F:WATER": ["Blackthorn City", "Dragon's Den "],
	"REGION_DRAGONS_DEN_B1F:WHIRLPOOL": ["Blackthorn City", "Dragon's Den "],
	"REGION_TOHJO_FALLS:WEST": ["Route 27", "Tohjo Falls - "],
	REGION_SILVER_CAVE_OUTSIDE: ["Silver Cave", "Outside - "],
	REGION_COPYCATS_HOUSE_2F: ["Saffron City", ""],
	REGION_OLIVINE_PORT: ["Olivine City", "Port - "],
	REGION_VERMILION_PORT: ["Vermilion City", "Port - "],
	REGION_SILPH_CO_1F: ["Saffron City", "Silph Co. "],
	REGION_FIGHTING_DOJO: ["Saffron City", "Fighting Dojo - "],
	REGION_UNDERGROUND_PATH: ["Route 5", "Underground Path - "],
	REGION_DANCE_THEATER: ["Ecruteak City", "Dance Theater - "],
	REGION_LAV_RADIO_TOWER_1F: ["Lavender Town", "Radio Tower - "],
	REGION_PLAYERS_HOUSE_1F: ["New Bark Town", "Player's House - "],
	"REGION_RUINS_OF_ALPH_OUTSIDE:TRAINER": ["Ruins of Alph", "Outside - "],
	REGION_RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM: ["Ruins of Alph", ""],
	REGION_RUINS_OF_ALPH_KABUTO_ITEM_ROOM: ["Ruins of Alph", ""],
	REGION_RUINS_OF_ALPH_OMANYTE_ITEM_ROOM: ["Ruins of Alph", ""]
};

const used_locations = [];
Object.entries(regions).forEach(
	(
		[region_const, region_data] //read regions data
	) =>
		region_data.locations.forEach(
			(
				location_const //for each location in the region
			) => used_locations.push({ region: region_const, location: location_const }) //push region and location names
		)
);

var locations_data = used_locations
	.map(pair => {
		var location = locations[pair.location];
		return {
			label: location.label,
			region: pair.region,
			offset: data.event_flags[location.flag],
			tags: location.tags
		};
	})
	.sort((a, b) => a.offset - b.offset);

var location_mapping = "LOCATION_MAPPING = {\n";
locations_data.forEach(location_data => {
	//splits "Dungeon - 1F" into "Dungeon/1F - "
	var labels = location_data.label.replace(/(( B| )\dF( Inside| Outside)?) - /, " -$1 – ").split(" - ");
	labels[0] = labels[0].replace("Goldenrod UG", "Goldenrod Underground");
	labels[1] = labels[1].replace("–", "-").replace("Charcoal", "Charcoal from Charcoal Kiln");
	//this item is in the route 40 region but should be with whirl islands on the tracker
	if (labels[1] === "Hidden Item on Southwest Island") labels[0] = "Whirl Islands";
	if (OVERRIDE_REGIONS_MAP[location_data.region]) {
		labels[0] = OVERRIDE_REGIONS_MAP[location_data.region][0];
		labels[1] = OVERRIDE_REGIONS_MAP[location_data.region][1] + labels[1];
	}
	//add alph room requirements
	if (location_data.region === "REGION_RUINS_OF_ALPH_KABUTO_ITEM_ROOM") {
		labels[1] += " (Escape Rope)";
	} else if (location_data.region === "REGION_RUINS_OF_ALPH_OMANYTE_ITEM_ROOM") {
		labels[1] += " (Water Stone)";
	}
	//format as lua table
	location_mapping += `\t[${location_data.offset}] = "@JohtoKanto/${labels[0]}/${labels[1]}",\n`;
});
location_mapping += "}";

var item_mapping = "ITEM_MAPPING = {\n";
Object.entries(data.items).forEach(([item_name, item_id]) => {
	//get tags from ap item info
	if (items[item_name].tags.includes("Tracker")) {
		//format as lua table
		item_mapping += `\t[${item_id}] = "${item_name}",\n`;
	}
});

item_mapping += "}";

fs.writeFileSync(path.join(TRACKER_DIR, "location_mapping.lua"), location_mapping);
fs.writeFileSync(path.join(TRACKER_DIR, "item_mapping.lua"), item_mapping);
