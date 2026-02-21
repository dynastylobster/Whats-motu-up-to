global.scorefont = font_add_sprite_ext(S_ScoreFont, ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,!:?abcdefghijklmnopqrstuvwxyz"), false, 0);
global.scorefont2 = font_add_sprite(S_ScoreFont2, ord("0123456789"), false, 0);
global.weapon = "sword"
global.slicepal = 0
global.character = "Motu"
room_goto(R_Test)