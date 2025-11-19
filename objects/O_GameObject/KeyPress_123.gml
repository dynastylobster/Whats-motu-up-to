/// @description Insert description here
// You can write your code in this editor
global.debugmode = !global.debugmode;
layer_set_visible(layer_get_id("ColTileSemi"),global.debugmode)
layer_set_visible(layer_get_id("ColTileWall"),global.debugmode)
layer_set_visible(layer_get_id("ColTileSlope"),global.debugmode)