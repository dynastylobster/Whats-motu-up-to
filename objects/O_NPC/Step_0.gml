if InputPressed(INPUT_VERB.UP) {
    textentry += 1;
    if textentry >= array_length(text) {
        textentry = 0;
    }
finalText = "";
sentence = string(text[textentry]);
}
