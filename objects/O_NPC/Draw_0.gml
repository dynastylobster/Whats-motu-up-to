//text[textentry] is the actual thing that shows up!!

pal_swap_set(global.enemypal,textcolor,false)
//var finalText = ""
draw_set_font(global.scorefont)

if crawling and !global.stop {
timer++;
if (timer > crawltimer) {
if (string_length(finalText) < string_length(sentence)) {
finalText = finalText + string_char_at(sentence,string_length(finalText)+1);
timer = 0;
}
}

} else {
	finalText = sentence	
}

draw_text(x,y,finalText)
pal_swap_reset();