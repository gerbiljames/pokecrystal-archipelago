var fs = require("fs");
const path = require("path");
require("dotenv").config();

const mergeImages = require("merge-images");
const { Canvas, Image } = require("canvas");
const ImageDataURI = require("image-data-uri");

const TRACKER_DIR = path.join(process.env.TRACKER_DIR, "locations");
var ap_dir = "../Archipelago/worlds/pokemon_crystal/data/";

var locs = JSON.parse(fs.readFileSync(ap_dir + "locations.json", "utf-8"));
var tracker_locs = JSON.parse(fs.readFileSync(path.join(TRACKER_DIR, "locations.json"), "utf-8"));
var regions = JSON.parse(fs.readFileSync(ap_dir + "regions.json", "utf-8"));
var data = JSON.parse(fs.readFileSync(ap_dir + "data.json", "utf-8"));
var tracker_maps = JSON.parse(fs.readFileSync("script_data/tracker_maps.json", "utf-8"));
var sprite_data = JSON.parse(fs.readFileSync("script_data/sprite_data.json", "utf-8"));
var script_to_const = JSON.parse(fs.readFileSync("script_data/script_to_const.json", "utf-8"));
var maps = fs.readdirSync("maps").filter(m => m.slice(-4) === ".asm");
var location_mapping = fs.readFileSync("location_mapping.lua", "utf-8").split("\n");
var maps_data = {};
maps.forEach(map => (maps_data[map.slice(0, -4)] = fs.readFileSync("maps/" + map, "utf-8").split("\n")));
var usedlocs = [];

//find all locations inside a region
Object.keys(regions).forEach(k => regions[k].locations.forEach(l => usedlocs.push({ region: k, location: l })));

var locs_out = [];

usedlocs.forEach(u => {
	var loc = locs[u.location];
	var offset = data.event_flags[loc.flag];
	if (loc.type === "trainer") {
		//trainersanity checks
		var event_flag = loc.flag.replace("ITEM_FROM", "BEAT"); //get trainersanity event flag
		var loc_map = Object.entries(maps_data).find(
			([_map_name, map]) => map.some(line => !!line.match(new RegExp(`trainer .+?, .+?, ${event_flag},`))) //find map
		);

		if (loc_map) {
			//find trainer definition
			var trainer_line = loc_map[1].findIndex(line => line.match(new RegExp(`trainer .+?, .+?, ${event_flag},`)));
			if (trainer_line !== -1) {
				var trainer_label = loc_map[1][trainer_line - 1].replace(":", ""); //find object event for trainer
				var obj_line = loc_map[1].find(line => line.match(new RegExp("object_event.+" + trainer_label + ",")));
				if (obj_line) {
					var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
					var x = parseInt(split[1]);
					var y = parseInt(split[2]);
					locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
				} else {
					console.log("no object trainer", loc.label);
				}
			} else {
				console.log("no trainer", loc.label);
			}
		} else {
			console.log("no loc map trainer", loc.label);
		}
	} else if (loc.type === "itemball") {
		var loc_map = Object.entries(maps_data).find(
			([map_name, map]) => map.some(line => !!line.includes(loc.script)) //find map
		);

		if (loc_map) {
			//find object event
			var obj_line = loc_map[1].find(line => line.match(new RegExp("object_event.+" + loc.script)));
			if (obj_line) {
				var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
				var x = parseInt(split[1]);
				var y = parseInt(split[2]);
				locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
			} else {
				console.log("no object itemball", loc.label);
			}
		} else {
			console.log("no loc map itemball", loc.label);
		}
	} else if (loc.type === "hiddenitem") {
		var loc_map = Object.entries(maps_data).find(
			([map_name, map]) => map.some(line => !!line.includes(loc.script)) //find map
		);

		if (loc_map) {
			//find bg event
			var obj_line = loc_map[1].find(line => line.match(new RegExp("bg_event.+" + loc.script)));
			if (obj_line) {
				var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
				var x = parseInt(split[1]);
				var y = parseInt(split[2]);
				locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
			} else {
				console.log("no bg hiddenitem", loc.label);
			}
		} else {
			console.log("no loc map hiddenitem", loc.label);
		}
	} else if (loc.type === "berrytree") {
		var loc_map = Object.entries(maps_data).find(
			([map_name, map]) => map.some(line => !!line.includes("fruittree " + loc.flag)) //find map
		);

		if (loc_map) {
			//find bg event
			var script_line = loc_map[1].findIndex(line => line === "\tfruittree " + loc.flag);
			if (script_line > -1) {
				const label = loc_map[1][script_line - 1].replace(":", "");
				var obj_line = loc_map[1].find(line => line.match(new RegExp("object_event.+" + label)));
				if (obj_line) {
					var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
					var x = parseInt(split[1]);
					var y = parseInt(split[2]);
					locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
				} else {
					console.log("no obj berrytree", loc.label);
				}
			} else {
				console.log("no fruittree berrytree", loc.label);
			}
		} else {
			console.log("no loc map hiddenitem", loc.label);
		}
	} else if (loc.type === "giveitem") {
		var loc_map = Object.entries(maps_data).find(
			([map_name, map]) => map.some(line => !!line.includes(loc.script)) //find map
		);

		if (loc_map) {
			//find script pointer
			var script_line = loc_map[1].findIndex(line => line.includes(loc.script));
			if (script_line !== -1) {
				//find containing label
				var label_line = loc_map[1]
					.slice(0, script_line)
					.reverse()
					.find(line => line.match(/^[^.;].+:/));
				if (label_line) {
					//find object event pointing to that label
					var obj_line = loc_map[1].find(line =>
						line.match(new RegExp("(object_event|coord_event).+" + label_line.replace(":", "")))
					);
					if (obj_line) {
						var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
						var x = parseInt(split[1]);
						var y = parseInt(split[2]);
						locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
					} else {
						//if no object event points to it
						//find where it is called in another script
						var call_line = loc_map[1].findIndex(line =>
							line.match(new RegExp("\t.+ " + label_line.replace(":", "")))
						);
						if (call_line !== -1) {
							//find containing label for that call
							var call_label_line = loc_map[1]
								.slice(0, call_line)
								.reverse()
								.find(line => line.match(/^[^.;].+:/));
							if (call_label_line) {
								//find object event pointing to that label
								var obj_line = loc_map[1].find(line =>
									line.match(
										new RegExp("(object_event|coord_event).+" + call_label_line.replace(":", ""))
									)
								);
								if (obj_line) {
									var split = obj_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
									var x = parseInt(split[1]);
									var y = parseInt(split[2]);
									locs_out.push({ loc, map_name: loc_map[0], coords: [x, y], offset });
								} else {
									//if there is no object event again
									//manually overriding this one
									if (loc.label === "S.S. Aqua - Metal Coat from Grandpa") {
										locs_out.push({ loc, map_name: loc_map[0], coords: [2, 17], offset });
									}
									//at this point we just give up since this stuff isnt going to be
									//on the detail maps anyway
									locs_out.push({ loc, map_name: loc_map[0], coords: [0, 0], offset });
								}
							}
						} else {
							console.log("no call line giveitem", loc.label);
						}
					}
				} else {
					console.log("no label giveitem", loc.label);
				}
			}
		} else {
			console.log("no loc map giveitem", loc.label);
		}
	} else {
		console.log("unknown type", loc.type, loc.label);
	}
});

locs_out.push({
	loc: {
		label: "Kenya Collected",
		ref: "JohtoKanto/Route 35/Kenya Collected"
	},
	map_name: "Route35GoldenrodGate",
	coords: [0, 4]
});

locs_out.push({
	loc: {
		label: "Kenya Delivered",
		ref: "JohtoKanto/Route 31/Kenya Delivered"
	},
	map_name: "Route31",
	coords: [17, 7]
});

locs_out.push({
	loc: {
		label: "Heal Amphy",
		ref: "JohtoKanto/Olivine Lighthouse/Heal Amphy"
	},
	map_name: "OlivineLighthouse6F",
	coords: [8, 8]
});

locs_out.push({
	loc: {
		label: "Help Lance",
		ref: "JohtoKanto/Lake of Rage/Help Lance"
	},
	map_name: "LakeOfRage",
	coords: [21, 28]
});

locs_out.push({
	loc: {
		label: "Clear Rocket HQ",
		ref: "JohtoKanto/Mahogany Town/Clear Rocket HQ"
	},
	map_name: "TeamRocketBaseB2F",
	coords: [7, 7]
});

locs_out.push({
	loc: {
		label: "Clear Radio Tower",
		ref: "JohtoKanto/Radio Tower/Clear Radio Tower"
	},
	map_name: "RadioTower5F",
	coords: [13, 5]
});

locs_out.push({
	loc: {
		label: "Restore Power to Kanto",
		ref: "JohtoKanto/Power Plant/Restore Power to Kanto"
	},
	map_name: "PowerPlant",
	coords: [14, 10]
});

locs_out.push({
	loc: {
		label: "Blue Returns to Gym",
		ref: "JohtoKanto/Cinnabar Island/Blue Returns to Gym"
	},
	map_name: "CinnabarIsland",
	coords: [9, 6]
});

locs_out.push({
	loc: {
		label: "Defeat Red",
		ref: "JohtoKanto/Silver Cave/Defeat Red"
	},
	map_name: "SilverCaveRoom3",
	coords: [9, 10]
});

var map_locs = {};

var multi_maps_map = {
	Route12: { maps: ["Route12North", "Route12South"], ycoords: [0, 28] },
	Route26: { maps: ["Route26North", "Route26South"], ycoords: [0, 52] },
	Route32: { maps: ["Route32North", "Route32South"], ycoords: [0, 40] },
	Route45: { maps: ["Route45North", "Route45South"], ycoords: [0, 42] },
	VictoryRoad: { maps: ["VictoryRoad3F", "VictoryRoad2F", "VictoryRoad1F"], ycoords: [0, 24, 46] }
};

locs_out.forEach(map_loc => {
	//find map data
	var loc_maps = tracker_maps.filter(map => map.map === map_loc.map_name || map.submaps?.includes(map_loc.map_name));
	loc_maps.forEach(tracker_map => {
		var loc = JSON.parse(JSON.stringify(map_loc));
		if (tracker_map.map !== loc.map_name) {
			//if this is a submap
			//ugly fix for maps that arent directly warped to by their parent
			var adjusted_name = loc.map_name.replace("ItemRoom", "Chamber").replace("MansionRoofHouse", "Mansion1F");
			var const_name = script_to_const[adjusted_name];
			//find warp
			//comma bodge so cerulean gym doesnt land on gym badge house
			//port bodge so ports actually connect to vermilion and olivine
			var warp_line = maps_data[tracker_map.map].find(
				map =>
					(map.includes("warp_event") &&
						(map.includes(const_name + ",") ||
							map.match(
								new RegExp(
									const_name.replace(/(B)*\dF(_((IN|OUT|BLACKTHORN_|MAHOGANY_)SIDE))*$/, "") +
										".+F(_(IN|OUT|BLACKTHORN_|MAHOGANY_)SIDE)*,"
								)
							) ||
							(map.includes(const_name) &&
								(const_name.includes("PORT") || const_name.includes("UNDERGROUND"))))) ||
					(const_name.includes("WAREHOUSE") && map.includes(const_name.slice(0, -9))) ||
					(const_name.includes("ROCKET_BASE") && map.includes("MAHOGANY_MART_1F"))
			);
			if (warp_line) {
				var split = warp_line.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
				var x = parseInt(split[1]);
				var y = parseInt(split[2]);
				loc.coords = [x, y];
				loc.map_name = tracker_map.map;
				loc.submap = true;
			} else {
				console.log("could not find warp", loc.map_name);
			}
		}
		if (multi_maps_map[loc.map_name]) {
			const multi = multi_maps_map[loc.map_name];
			multi.maps.forEach((map_m, i) => {
				let bound1 = multi.ycoords[i];
				let bound2 = multi.ycoords?.[i + 1] ?? 100000;
				if (loc.coords[1] >= bound1 && loc.coords[1] < bound2) {
					loc.map_name = map_m;
					loc.coords[1] -= bound1;
				}
			});
		}

		if (map_locs[loc.map_name]) {
			map_locs[loc.map_name].push(loc);
		} else {
			map_locs[loc.map_name] = [loc];
		}
	});
});

var dungeons = {
	name: "Dungeons",
	chest_unopened_img: "/images/items/pokeball.png",
	chest_opened_img: "/images/items/pokeball_open.png",
	children: []
};

const label_sort = (a, b) => {
	real_a = a.split("/").at(-1);
	real_b = b.split("/").at(-1);
	let a_floor = real_a.match(/[^ ](\d*)F/);
	let b_floor = real_b.match(/[^ ](\d*)F/);
	let a_basefloor = real_a.match(/[^ ]B(\d*)F/);
	let b_basefloor = real_b.match(/[^ ]B(\d*)F/);
	if (a_floor && b_floor) {
		return parseInt(a_floor[0].replace(/\D/, "")) - parseInt(b_floor[0].replace(/\D/, ""));
	} else if (a_floor && b_basefloor) {
		return -1;
	} else if (a_basefloor && b_floor) {
		return 1;
	} else if (a_basefloor && b_basefloor) {
		return parseInt(a_basefloor[0].replace(/\D/, "")) - parseInt(b_basefloor[0].replace(/\D/, ""));
	}
	return real_a.localeCompare(real_b);
};

//get all unrandomized locations (they start with an invisible character)
var unrandomized = tracker_locs[0].children
	.flatMap(l => l.sections)
	.map(section => section.name)
	.filter(name => name.startsWith("​"))
	.map(name => name.slice(1));

Object.entries(map_locs).forEach(([map, locs]) => {
	//get co-ords of locations on map
	var coords = locs
		.map(loc => loc.coords)
		.filter((a, i, arr) => arr.findIndex(j => j[0] === a[0] && j[1] === a[1]) === i); //dedupe
	coords.forEach(c => {
		//get at locations at current coords
		c_locs = locs.filter(loc => loc.coords[0] === c[0] && loc.coords[1] === c[1]);
		var point = {
			name: "",
			sections: [],
			map_locations: [
				{
					map: map,
					x: c[0] * 16 + 8,
					y: c[1] * 16 + 8
				}
			]
		};
		c_locs.forEach(c_loc => {
			if (c_loc.loc.ref) {
				var section = { ref: c_loc.loc.ref };
				point.sections.push(section);
			} else {
				//find location mapping line
				cl_line = location_mapping
					.find(l => l.includes(`[${c_loc.offset}]`))
					.split('"')[1]
					.replace("@", "");
				var section = { ref: cl_line };
				if (c_loc.submap) {
					section.name = c_loc.loc.label;
				}
				point.sections.push(section);
				var check_name = cl_line.split("/").at(-1);
				if (unrandomized.includes(check_name)) {
					var u_section = JSON.parse(JSON.stringify(section));
					var new_ref = cl_line.slice(0, -check_name.length) + "​" + check_name;
					u_section.ref = new_ref;
					point.sections.push(u_section);
				}
			}
		});
		point.sections.sort((a, b) => label_sort(a.name ?? a.ref, b.name ?? b.ref));
		dungeons.children.push(point);
	});
});

var directions = {
	SPRITEMOVEDATA_STANDING_DOWN: 2,
	SPRITEMOVEDATA_STANDING_UP: 0,
	SPRITEMOVEDATA_STANDING_LEFT: 3,
	SPRITEMOVEDATA_STANDING_RIGHT: 1
};

tracker_maps.forEach(map => {
	var out_maps = multi_maps_map[map.map] ?? { maps: [map.map] }; //the word map has lost all meaning
	out_maps.maps.map((map_m, i) => {
		if (fs.existsSync("maps/" + map_m + ".png")) {
			var objects = maps_data[map.map].filter(m => m.match(/\tobject_event .+/));
			var daypalette = map.palette === "DAY";
			var sprites = objects.map(r => {
				var sprite;
				var split = r.replace(/[\t,]/g, "").replace(/\s+/g, " ").split(" ");
				if (split.at(-1) === ";notracker") return null;
				var sprite_name = split[3].trim();
				var got_sprite = sprite_data[sprite_name];
				if (!got_sprite) return null;
				var sprite_move = split[4].trim();
				var sprite_pal = split[9].trim();
				var sprite_list = got_sprite[sprite_pal] ?? Object.values(got_sprite)[0];
				var x = parseInt(split[1]);
				var y = parseInt(split[2]);
				//console.log(sprite_name, got_sprite, sprite_pal);
				if (sprite_list.length === 4) {
					var sprite_dir = directions[sprite_move] ?? (x + y) % 4;
					sprite = sprite_list[sprite_dir];
				} else if (sprite_list.length === 2) {
					sprite = sprite_list[!daypalette + 0];
				} else sprite = sprite_list[0];
				if (!fs.existsSync("tracker_img/" + sprite)) {
					console.log("Sprite does not exist:", sprite_name, sprite);
				}

				if (out_maps.ycoords) {
					var bounds = [0, 0];
					bounds[0] = out_maps.ycoords[i];
					bounds[1] = out_maps.ycoords?.[i + 1] ?? 10000000;
					if (y >= bounds[0] && y < bounds[1]) {
						//console.log(y, bounds, map_m);
						return { src: "tracker_img/" + sprite, x: x * 16, y: (y - bounds[0]) * 16 };
					} else return null;
				} else {
					return { src: "tracker_img/" + sprite, x: x * 16, y: y * 16 };
				}
			});
			//console.log(sprites, map_m);
			mergeImages([{ src: "maps/" + map_m + ".png", x: 0, y: 0 }, ...sprites.filter(s => !!s)], {
				Canvas: Canvas,
				Image: Image
			}).then(b64 => ImageDataURI.outputFile(b64, "tracker_out/" + map_m + ".png"));
		}
	});
});

fs.writeFileSync("dungeons.json", JSON.stringify([dungeons]));
