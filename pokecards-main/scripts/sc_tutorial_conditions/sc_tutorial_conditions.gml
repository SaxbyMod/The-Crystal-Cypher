function sc_tutorial_conditions(argument0,argument1) {
/// @param condition_check //0: next turn, 1: draw main, 2: draw berry, 3: play main, 4: play berry, 5: attack
/// @param play_slot
//————————————————————————————————————————————————————————————————————————————————————————————————————
if ob_main.berry_num_used[0][0]>0 {
	var normal_card_id=019; //rattata
	var misc_card_id=016; //pidgey
}
else if ob_main.berry_num_used[1][0]>0 {
	var normal_card_id=161; //sentret
	var misc_card_id=074; //geodude
}
else if ob_main.berry_num_used[2][0]>0 {
	var normal_card_id=263; //zigzagoon
	var misc_card_id=276; //taillow
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0=0 { //next turn
	var card_id_played;
	for (var i=0; i<=4; i++;) {
		if ob_control.card_space_id[i+5].occupy_id!=-1 {
			card_id_played[i]=ob_control.card_space_id[i+5].occupy_id.card_id;
		}
		else { card_id_played[i]=-1; }
	}
	//
	var all_cards_attacked=true;
	for (var i=0; i<=4; i++;) {
		if ob_control.card_space_id[i+5].occupy_id!=-1 {
			if ob_control.card_space_id[i+5].occupy_id.already_attacked=false { all_cards_attacked=false; }
		}
	}
	//
	var empty_spaces=0;
	for (var i=5; i<=9; i++;) {
		if ob_control.card_space_id[i].occupy_id=-1 { empty_spaces++; }
	}
	//
	if ob_control.turn_num=1 and
	(card_id_played[0]=normal_card_id or card_id_played[1]=normal_card_id or card_id_played[2]=normal_card_id or card_id_played[3]=normal_card_id or card_id_played[4]=normal_card_id) { return true; }
	else if ob_control.turn_num=3 and all_cards_attacked=true and empty_spaces=3 { return true; }
	else if ob_control.turn_num=5 and all_cards_attacked=true and empty_spaces=2 { return true; }
	else if ob_control.turn_num=7 and all_cards_attacked=true and ob_control.card_draw_points=0 { return true; }
	else if ob_control.turn_num=9 and all_cards_attacked=true and empty_spaces=2 { return true; }
	else if ob_control.turn_num=11 and all_cards_attacked=true and empty_spaces=1 { return true; }
	else if ob_control.turn_num>=13 and all_cards_attacked=true { return true; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=1 { //draw main
	if ob_control.turn_num=1 and ob_control.card_maindeck_total>3 { return true; }
	else if ob_control.turn_num=3 {} //can't draw main
	else if ob_control.turn_num=5 { return true; }
	else if ob_control.turn_num=7 { return true; }
	else if ob_control.turn_num=9 {} //can't draw main
	else if ob_control.turn_num=11 { return true; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=2 { //draw berry
	if ob_control.turn_num=1 and ob_control.card_berrydeck_total>4 { return true; }
	else if ob_control.turn_num=3 { return true; }
	else if ob_control.turn_num=5 {} //can't draw berry
	else if ob_control.turn_num=7 {} //can't draw berry
	else if ob_control.turn_num=9 { return true; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=3 { //play main
	if ob_control.turn_num=1 and ob_control.card_hold.card_id=normal_card_id { return true; }
	else if ob_control.turn_num=3 and ob_control.card_hold.card_id=misc_card_id { return true; }
	else if ob_control.turn_num=5 { return true; }
	else if ob_control.turn_num=7 {} //can't play
	else if ob_control.turn_num=9 { return true; }
	else if ob_control.turn_num=11 { return true; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=4 { //play berry
	var berries_held=0;
	for (var i=0; i<ob_control.card_hand_total; i++;) {
		if ob_control.card_hand[i].card_cat=1 { berries_held++; }
	}
	//
	var space_slot=-1;
	for (var i=5; i<=9; i++;) {
		if ob_control.card_space_id[i]=argument1 { space_slot=i; }
	}
	//
	if ob_control.turn_num=1 { return true; }
	else if ob_control.turn_num=3 and berries_held=2 and
	ob_control.card_space_id[space_slot-5].occupy_id!=-1 and ob_control.card_space_id[space_slot-5].occupy_id.card_id=161 { return true; } //sentret
	else if ob_control.turn_num=5 { return true; }
	else if ob_control.turn_num=7 {} //can't play
	else if ob_control.turn_num=9 and berries_held=2 and
	ob_control.card_space_id[space_slot-5].occupy_id!=-1 and ob_control.card_space_id[space_slot-5].occupy_id.card_id=191 { return true; } //sunkern
	else if ob_control.turn_num=11 and
	ob_control.card_space_id[space_slot-5].occupy_id!=-1 and ob_control.card_space_id[space_slot-5].occupy_id.card_id=399 { return true; } //bidoof
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=5 { //attack
	var empty_spaces=0;
	for (var i=5; i<=9; i++;) {
		if ob_control.card_space_id[i].occupy_id=-1 { empty_spaces++; }
	}
	//
	if ob_control.turn_num=1 {} //can't attack (first turn)
	else if ob_control.turn_num=3 and empty_spaces=3 { return true; }
	else if ob_control.turn_num=5 and empty_spaces=2 { return true; }
	else if ob_control.turn_num=7 and ob_control.card_draw_points=0 { return true; }
	else if ob_control.turn_num=9 and empty_spaces=2 { return true; }
	else if ob_control.turn_num=11 and empty_spaces=1 { return true; }
	else if ob_control.turn_num>=13 { return true; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}