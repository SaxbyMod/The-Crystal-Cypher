function AI_draw_available(argument0) {
/// @param cat
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0=0 {
	if enemycard_draw_points>=card_drawcost_main and enemycard_maindeck[0]!=-1 { return true; }
	else { return false; }
}
else {
	if enemycard_draw_points>=card_drawcost_berry and enemycard_berrydeck[0]!=-1 { return true; }
	else { return false; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}