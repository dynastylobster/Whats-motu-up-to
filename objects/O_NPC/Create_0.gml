//do this every time you wanna draw word text
lang = JsonLoad(working_directory + global.lang + ".json")
text = lang[$ textindex]
sentence = string(text[textentry]);
timer = 0;
finalText = "";