function sc_enemy_berry_deck(argument0) {
/// @param trainer_kind
//————————————————————————————————————————————————————————————————————————————————————————————————————
enemycard_berrydeck_total=enemy_deck_fullcost[0]*2+enemy_deck_fullcost[1]*2+enemy_deck_fullcost[2]*2+enemy_deck_fullcost[3]*2; //none over berrydeck_total_max
if enemycard_berrydeck_total=0 { enemycard_berrydeck_total=1; }
//
if ob_main.stats_league_won>0 and (ob_main.playing_gym=true or ob_main.playing_elite=true) { enemycard_berrydeck_total=round(enemycard_berrydeck_total*2); } //+100%
else if ob_main.playing_gym=true { enemycard_berrydeck_total=round(enemycard_berrydeck_total*1.5); } //+50%
else if ob_main.playing_elite=true { enemycard_berrydeck_total=round(enemycard_berrydeck_total*1.75); } //+75%
else if ob_main.playing_champion=true { enemycard_berrydeck_total=round(enemycard_berrydeck_total*2); } //+100%
else if ob_main.playing_tutorial=false and argument0=100 { enemycard_berrydeck_total=round(enemycard_berrydeck_total*1.5); } //+50% (ACE TRAINER)
else if ob_main.playing_tutorial=false and argument0=150 { enemycard_berrydeck_total=round(enemycard_berrydeck_total*2); } //+100% (WHISPERER)
else if ob_main.playing_tutorial=false and argument0!=100 and argument0!=150 { enemycard_berrydeck_total=round(enemycard_berrydeck_total*1.25); } //+25% (keep in mind enigma berry spawn chance in ob_card)
//
var i=0;
repeat (enemycard_berrydeck_total) {
	if ob_main.playing_tutorial=true { enemy_berry_id[i]=3003; } //enigma
	//
	else {
		if i<enemy_deck_fullcost[0]*2 { enemy_berry_id[i]=3000; } //oran
		else if i<enemy_deck_fullcost[0]*2+enemy_deck_fullcost[1]*2 { enemy_berry_id[i]=3001; } //leppa
		else if i<enemy_deck_fullcost[0]*2+enemy_deck_fullcost[1]*2+enemy_deck_fullcost[2]*2 { enemy_berry_id[i]=3002; } //lum
		else { enemy_berry_id[i]=3003; } //enigma
	}
	i++;
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}