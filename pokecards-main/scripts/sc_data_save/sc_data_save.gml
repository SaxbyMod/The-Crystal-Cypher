function sc_data_save() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
if compatibility_save_slot=true { // SAVE COMPATIBILITY (v2.2.0.0)
	if file_exists(data_file_old) { file_delete(data_file_old); }
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
var savemap=ds_map_create();
//
ds_map_add(savemap,"area_zone",area_zone);
ds_map_add(savemap,"latest_zone",latest_zone);
ds_map_add(savemap,"latest_city",latest_city);
ds_map_add(savemap,"zone_first_lap",zone_first_lap);
ds_map_add(savemap,"roadmap_area",roadmap_area);
ds_map_add(savemap,"roadmap_generated",roadmap_generated);
ds_map_add(savemap,"money",money);
ds_map_add(savemap,"autoattack",autoattack_toggle);
//
ds_map_add(savemap,"challenge_mode",option_state[opt_challenge]);
//
var i=0;
repeat (roadmap_full_max) {
	var value_name="location_type_" + string(i);
	ds_map_add(savemap,value_name,location_type[i]);
	var value_name="trainer_kind_" + string(i);
	ds_map_add(savemap,value_name,trainer_kind[i]);
	var value_name="trainer_sprite_" + string(i);
	ds_map_add(savemap,value_name,trainer_sprite[i]);
	var value_name="trainer_skin_" + string(i);
	ds_map_add(savemap,value_name,trainer_skin[i]);
	var value_name="trainer_hair_color_" + string(i);
	ds_map_add(savemap,value_name,trainer_hair_color[i]);
	//
	var ii=0;
	repeat (3) {
		var value_name="event_kind_" + string(ii) + "_" + string(i);
		ds_map_add(savemap,value_name,event_kind[ii][i]);
		var value_name="event_glyph_add_" + string(ii) + "_" + string(i);
		ds_map_add(savemap,value_name,event_glyph_add[ii][i]);
		ii++;
	}
	i++;
}
//
ds_map_add(savemap,"maindeck_total",maindeck_total);
ds_map_add(savemap,"maindeck_used_total",maindeck_used_total);
ds_map_add(savemap,"berrydeck_total",berrydeck_total);
ds_map_add(savemap,"serial_count",serial_count);
//
var i=0;
repeat (maindeck_total) {
	var value_name="main_card_id_" + string(i);
	ds_map_add(savemap,value_name,main_card_id[i]);
	var value_name="main_card_nickname_" + string(i);
	ds_map_add(savemap,value_name,main_card_nickname[i]);
	var value_name="main_card_level_" + string(i);
	ds_map_add(savemap,value_name,main_card_level[i]);
	var value_name="main_card_glyph_a_" + string(i);
	ds_map_add(savemap,value_name,main_card_glyph_a[i]);
	var value_name="main_card_glyph_b_" + string(i);
	ds_map_add(savemap,value_name,main_card_glyph_b[i]);
	var value_name="main_card_glyph_c_" + string(i);
	ds_map_add(savemap,value_name,main_card_glyph_c[i]);
	var value_name="main_card_innate_" + string(i);
	ds_map_add(savemap,value_name,main_card_innate[i]);
	var value_name="main_card_form_value_" + string(i);
	ds_map_add(savemap,value_name,main_card_form_value[i]);
	var value_name="main_card_shiny_" + string(i);
	ds_map_add(savemap,value_name,main_card_shiny[i]);
	var value_name="main_card_serial_" + string(i);
	ds_map_add(savemap,value_name,main_card_serial[i]);
	i++;
}
//
var i=0;
repeat (serial_count) {
	var ii=0;
	repeat (deck_setup_max+1) {
		var value_name="serial_card_indeck_" + string(i) + "_" + string(ii);
		ds_map_add(savemap,value_name,serial_card_indeck[i][ii]);
		ii++;
	}
	i++;
}
//
var i=0;
repeat (berrydeck_total) {
	var value_name="berry_card_id_" + string(i);
	ds_map_add(savemap,value_name,berry_card_id[i]);
	i++;
}
//
var i=0;
repeat (4) {
	var ii=0;
	repeat (deck_setup_max+1) {
		var value_name="berry_num_used_" + string(i) + "_" + string(ii);
		ds_map_add(savemap,value_name,berry_num_used[i][ii]);
		ii++;
	}
	i++;
}
//
ds_map_add(savemap,"stats_timeplayed",stats_timeplayed);
ds_map_add(savemap,"stats_battles_total",stats_battles_total);
ds_map_add(savemap,"stats_battles_won",stats_battles_won);
ds_map_add(savemap,"stats_battles_lost",stats_battles_lost);
ds_map_add(savemap,"stats_battles_trainers",stats_battles_trainers);
ds_map_add(savemap,"stats_battles_gyms",stats_battles_gyms);
ds_map_add(savemap,"stats_battles_league",stats_battles_league);
ds_map_add(savemap,"stats_league_won",stats_league_won);
ds_map_add(savemap,"stats_league_won_firsttime",stats_league_won_firsttime);
ds_map_add(savemap,"stats_cards_defeated",stats_cards_defeated);
ds_map_add(savemap,"stats_cards_lost",stats_cards_lost);
ds_map_add(savemap,"stats_money_total",stats_money_total);
ds_map_add(savemap,"stats_cards_sold",stats_cards_sold);
ds_map_add(savemap,"stats_payouts",stats_payouts);
ds_map_add(savemap,"stats_cardpacks",stats_cardpacks);
ds_map_add(savemap,"stats_berrypacks",stats_berrypacks);
ds_map_add(savemap,"stats_freecards",stats_freecards);
ds_map_add(savemap,"stats_glyphs_added",stats_glyphs_added);
ds_map_add(savemap,"stats_levelups",stats_levelups);
ds_map_add(savemap,"stats_evolutions",stats_evolutions);
ds_map_add(savemap,"stats_tributes",stats_tributes);
ds_map_add(savemap,"stats_notready",stats_notready);
//
ds_map_secure_save(savemap,data_file_prefix + string(savefile_slot) + file_format);
ds_map_destroy(savemap);
//————————————————————————————————————————————————————————————————————————————————————————————————————
}