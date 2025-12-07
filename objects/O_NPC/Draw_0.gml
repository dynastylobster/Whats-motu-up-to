//text[textentry] is the actual thing that shows up!!


//var finalText = ""


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
