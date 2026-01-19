//do this every time you wanna draw word text
brightoffset = (O_LevelObject.BrightSprites*4)
lang = JsonLoad(working_directory + global.lang + ".json")
text = lang[$ textindex]
sentence = string(text[textentry]);
timer = 0;
finalText = "";