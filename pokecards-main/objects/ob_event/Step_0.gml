if show_deck=true {
	var i=0;
	repeat (card_event_total) {
		if card_event[i].card_played=false {
			card_event[i].potential_x=screen_main_x+deck_x+(60*i);
			card_event[i].potential_y=screen_main_y+deck_y;
		}
		i++;
	}
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	// SCROLL BAR (ob_event & ob_deckbuild)
	if mouse_y>=screen_main_y+deck_y-8 and mouse_y<screen_main_y+deck_y+80 and ob_main.cursor_hide=false {
		if mouse_wheel_up() {
			deck_x+=32;
			if deck_x>4 { deck_x=4; }
		}
		else if mouse_wheel_down() and cam_w<(card_event_total*60) {
			deck_x-=32;
			if deck_x<cam_w-(card_event_total*60)-1 { deck_x=cam_w-(card_event_total*60)-1; }
		}
	}
	//
	if mouse_check_button(mb_left) and ob_main.cursor_hide=false and cam_w<(card_event_total*60) and
	((mouse_y>=screen_main_y+deck_y-8 and mouse_y<screen_main_y+deck_y-4) or hold_deck_bar=true) {
		var mouse_pos=mouse_x-screen_main_x-8-4, mouse_pos_max=cam_w-16-10, deck_pos_max=cam_w-(card_event_total*60)-5;
		var deck_x_percent=mouse_pos*100/mouse_pos_max;
		deck_x=round(deck_x_percent*deck_pos_max/100)+4;
		if deck_x>4 { deck_x=4; }
		else if deck_x<cam_w-(card_event_total*60)-1 { deck_x=cam_w-(card_event_total*60)-1; }
		hold_deck_bar=true;
	}
	else if !mouse_check_button(mb_left) or ob_main.cursor_hide=true {
		hold_deck_bar=false;
	}
	//
	if cam_w<(card_event_total*60) { //when moving last cards in list
		if deck_x<cam_w-(card_event_total*60)-1 { deck_x=cam_w-(card_event_total*60)-1; }
	}
	else { deck_x=4; }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else {
	if card_prize=0 {
		ob_main.event_transition=event_kind;
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if apply_event=true {
	var i=0, card_id_in_space;
	repeat (event_space_total) {
		card_id_in_space[i]=-1;
		if event_space_id[i].occupy_id!=-1 {
			var ii=0;
			repeat (card_event_total) {
				if card_event[ii]=event_space_id[i].occupy_id {
					card_id_in_space[i]=event_space_id[i].occupy_id;
				}
				ii++;
			}
		}
		i++;
	}
	//
	if event_kind=ref_event_levelup and card_id_in_space[0]!=-1 {
		//conditions also used for showing cost/stats in ob_card_space
		if card_id_in_space[0].card_level<ob_main.card_level_player_limit and card_id_in_space[0].card_innate>0 and
		ob_main.money-ob_main.event_cost_standby>=ob_main.event_cost_standby_levelup {
			card_id_in_space[0].card_level++;
			sc_card_effect(event_space_id[0].x,event_space_id[0].y,0,false,true);
			with (card_id_in_space[0]) {
				sc_card_level_stats_all(true,true);
			}
			//
			event_applied=true;
			ob_main.stats_levelups++;
			ob_main.event_cost_standby+=ob_main.event_cost_standby_levelup;
			sc_playsound(sn_upgrade,50,false,false);
			ob_main.main_card_level[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_level;
		}
	}
	else if event_kind=ref_event_evolution and card_id_in_space[0]!=-1 {
		if evo_list[0]!=-1 and evo_list[0]<=normal_poke_id_max and card_id_in_space[0].card_innate>0 {
			do {
				card_id_in_space[0].card_id=evo_list[evolution_position];
				//
				evolution_position++;
				if evolution_position>7 { evolution_position=0; }
			} until (card_id_in_space[0].card_id!=-1 and card_id_in_space[0].card_id<=normal_poke_id_max);
			sc_card_effect(event_space_id[0].x,event_space_id[0].y,0,false,true);
			with (card_id_in_space[0]) {
				sc_pokelist();
				sc_card_level_stats_all(true,true);
			}
			//
			event_applied=true;
			if evolution_retry=false { ob_main.stats_evolutions++; }
			evolution_retry=true;
			sc_playsound(sn_upgrade,50,false,false);
			ob_main.main_card_id[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_id;
		}
		else if (card_id_in_space[0].card_id=351 or card_id_in_space[0].card_id=386 or card_id_in_space[0].card_id=479 or card_id_in_space[0].card_id=487 or card_id_in_space[0].card_id=492) and
		card_id_in_space[0].card_innate>0 {
			if card_id_in_space[0].card_id=351 or card_id_in_space[0].card_id=386 { card_id_in_space[0].card_form_value+=250; } //castform, deoxys (0-250-500-750)
			else if card_id_in_space[0].card_id=487 or card_id_in_space[0].card_id=492 { card_id_in_space[0].card_form_value+=500; } //giratina, shaymin (0-500)
			else if card_id_in_space[0].card_id=479 { //rotom (0-175-340-505-670-835)
				if card_id_in_space[0].card_form_value<10 { card_id_in_space[0].card_form_value=10; }
				card_id_in_space[0].card_form_value+=165;
			}
			if card_id_in_space[0].card_form_value>=1000 { card_id_in_space[0].card_form_value=0; }
			sc_card_effect(event_space_id[0].x,event_space_id[0].y,0,false,true);
			with (card_id_in_space[0]) {
				sc_pokelist();
				sc_card_level_stats_all(true,true);
			}
			//
			event_applied=true;
			if evolution_retry=false { ob_main.stats_evolutions++; }
			evolution_retry=true;
			sc_playsound(sn_upgrade,50,false,false);
			ob_main.main_card_form_value[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_form_value;
		}
	}
	else if event_kind=ref_event_glyph and card_id_in_space[0]!=-1 {
		if card_id_in_space[0].card_glyph_c=-1 and card_id_in_space[0].card_innate>0 and
		card_id_in_space[0].card_glyph_a!=glyph_add_id and card_id_in_space[0].card_glyph_b!=glyph_add_id and card_id_in_space[0].card_glyph_c!=glyph_add_id {
			if card_id_in_space[0].card_environment=false or (card_id_in_space[0].card_environment=true and
			(glyph_add_id=ref_glyph_lucky or glyph_add_id=ref_glyph_debilitate or glyph_add_id=ref_glyph_ruthless or glyph_add_id=ref_glyph_courage or
			glyph_add_id=ref_glyph_counter or glyph_add_id=ref_glyph_shield or glyph_add_id=ref_glyph_medic or glyph_add_id=ref_glyph_tenacity or
			glyph_add_id=ref_glyph_bulwark or glyph_add_id=ref_glyph_curse or glyph_add_id=ref_glyph_memento or glyph_add_id=ref_glyph_recovery)) {
				if card_id_in_space[0].card_glyph_a=-1 {
					card_id_in_space[0].card_glyph_a=glyph_add_id;
				}
				else if card_id_in_space[0].card_glyph_b=-1 {
					card_id_in_space[0].card_glyph_b=glyph_add_id;
				}
				else if card_id_in_space[0].card_glyph_c=-1 {
					card_id_in_space[0].card_glyph_c=glyph_add_id;
				}
				sc_card_effect(event_space_id[0].x,event_space_id[0].y,0,false,true);
				with (card_id_in_space[0]) {
					sc_card_level_stats_all(true,true);
				}
				//
				event_applied=true;
				ob_main.stats_glyphs_added++;
				sc_playsound(sn_upgrade,50,false,false);
				ob_main.main_card_glyph_a[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_glyph_a;
				ob_main.main_card_glyph_b[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_glyph_b;
				ob_main.main_card_glyph_c[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_glyph_c;
			}
		}
	}
	else if event_kind=ref_event_tribute and card_id_in_space[0]!=-1 and card_id_in_space[1]!=-1 {
		if card_id_in_space[0].card_innate>0 and card_id_in_space[1].card_innate<innate_max and
		card_id_in_space[0].card_environment=false and card_id_in_space[1].card_environment=false {
			card_id_in_space[0].card_innate--;
			card_id_in_space[0].effect_damaged=1;
			//
			card_id_in_space[1].card_innate++;
			sc_card_effect(event_space_id[1].x,event_space_id[1].y,0,false,true);
			sc_playsound(sn_upgrade,50,false,false);
			//
			with (card_id_in_space[0]) {
				sc_card_level_stats_all(true,true);
			}
			with (card_id_in_space[1]) {
				sc_card_level_stats_all(true,true);
			}
			//
			event_applied=true;
			ob_main.stats_tributes++;
			ob_main.main_card_innate[card_id_in_space[0].num_in_all]=card_id_in_space[0].card_innate;
			ob_main.main_card_innate[card_id_in_space[1].num_in_all]=card_id_in_space[1].card_innate;
		}
	}
	//
	apply_event=false;
}