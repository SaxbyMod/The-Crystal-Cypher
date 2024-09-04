function sc_text_get_input() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
var text_input=""
//
if keyboard_check_pressed(ord("A")) { text_input="A"; }
else if keyboard_check_pressed(ord("B")) { text_input="B"; }
else if keyboard_check_pressed(ord("C")) { text_input="C"; }
else if keyboard_check_pressed(ord("D")) { text_input="D"; }
else if keyboard_check_pressed(ord("E")) { text_input="E"; }
else if keyboard_check_pressed(ord("F")) { text_input="F"; }
else if keyboard_check_pressed(ord("G")) { text_input="G"; }
else if keyboard_check_pressed(ord("H")) { text_input="H"; }
else if keyboard_check_pressed(ord("I")) { text_input="I"; }
else if keyboard_check_pressed(ord("J")) { text_input="J"; }
else if keyboard_check_pressed(ord("K")) { text_input="K"; }
else if keyboard_check_pressed(ord("L")) { text_input="L"; }
else if keyboard_check_pressed(ord("M")) { text_input="M"; }
else if keyboard_check_pressed(ord("N")) { text_input="N"; }
else if keyboard_check_pressed(ord("O")) { text_input="O"; }
else if keyboard_check_pressed(ord("P")) { text_input="P"; }
else if keyboard_check_pressed(ord("Q")) { text_input="Q"; }
else if keyboard_check_pressed(ord("R")) { text_input="R"; }
else if keyboard_check_pressed(ord("S")) { text_input="S"; }
else if keyboard_check_pressed(ord("T")) { text_input="T"; }
else if keyboard_check_pressed(ord("U")) { text_input="U"; }
else if keyboard_check_pressed(ord("V")) { text_input="V"; }
else if keyboard_check_pressed(ord("W")) { text_input="W"; }
else if keyboard_check_pressed(ord("X")) { text_input="X"; }
else if keyboard_check_pressed(ord("Y")) { text_input="Y"; }
else if keyboard_check_pressed(ord("Z")) { text_input="Z"; }
//
else if keyboard_check_pressed(ord("0")) or keyboard_check_pressed(vk_numpad0) { text_input="0"; }
else if keyboard_check_pressed(ord("1")) or keyboard_check_pressed(vk_numpad1) { text_input="1"; }
else if keyboard_check_pressed(ord("2")) or keyboard_check_pressed(vk_numpad2) { text_input="2"; }
else if keyboard_check_pressed(ord("3")) or keyboard_check_pressed(vk_numpad3) { text_input="3"; }
else if keyboard_check_pressed(ord("4")) or keyboard_check_pressed(vk_numpad4) { text_input="4"; }
else if keyboard_check_pressed(ord("5")) or keyboard_check_pressed(vk_numpad5) { text_input="5"; }
else if keyboard_check_pressed(ord("6")) or keyboard_check_pressed(vk_numpad6) { text_input="6"; }
else if keyboard_check_pressed(ord("7")) or keyboard_check_pressed(vk_numpad7) { text_input="7"; }
else if keyboard_check_pressed(ord("8")) or keyboard_check_pressed(vk_numpad8) { text_input="8"; }
else if keyboard_check_pressed(ord("9")) or keyboard_check_pressed(vk_numpad9) { text_input="9"; }
//
else if keyboard_check_pressed(vk_space) { text_input=" "; }
//
else if keyboard_check_pressed(vk_enter) { text_input="+"; }
else if keyboard_check_pressed(vk_escape) { text_input="-"; }
else if keyboard_check_pressed(vk_backspace) { text_input="<"; }
else if keyboard_check_pressed(vk_delete) { text_input="#"; }
//
if !keyboard_check(vk_shift) { text_input=string_lower(text_input); }
return text_input;
//————————————————————————————————————————————————————————————————————————————————————————————————————
}