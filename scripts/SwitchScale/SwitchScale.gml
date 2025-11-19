// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SwitchScale(){
change = argument0
if FilterMode = "Nearest" {
	MaxWindowScale = floor(MonitorResolution/DefaultViewHeight);	
}

if change {
if WindowScale < MaxWindowScale {
		WindowScale++
	} else WindowScale = 1;
}	

WindowSizeCall();
}