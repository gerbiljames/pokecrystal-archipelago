# Takes all images in the folder, replaces PAL_NPC_RED colors with other palettes, outputs to folders
mkdir blue; 
mkdir brown; 
mkdir green; 
for x in ./*; 
do magick $x -fill "#5048f8" -opaque "#f83808" blue/$x; 
magick $x -fill "#785018" -opaque "#f83808" brown/$x; 
magick $x -fill "#38b818" -opaque "#f83808" green/$x;  
done