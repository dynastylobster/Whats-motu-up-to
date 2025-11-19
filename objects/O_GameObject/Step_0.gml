/// @description Insert description here
// You can write your code in this editor
if AspectRatioMode = "Dynamic" {
var windowwidth = window_get_width();
var windowheight = window_get_height();

if windowwidth != CurrentWindowWidth or windowheight != CurrentWindowHeight {
		WindowSizeCall();
	}
}

if global.stoptimer > 0 {
	global.stop = true
	global.stoptimer --
	}
if global.stoptimer <= 0 {
	global.stop = false;
	global.stoptimer = 0;
	}