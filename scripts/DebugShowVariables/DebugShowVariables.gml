function DebugShowVariables(variables, nameofvariables){
	if (!global.debugmode) { return; }
	var oldfont = draw_get_font();
	draw_set_font(TinyFont);
	for (var i = 0; i < array_length(variables); i++) {
		draw_text(x, y - (30 + (i * 16)), nameofvariables[i] + ": " + string(variables[i]));
	}
	draw_set_font(oldfont);
}