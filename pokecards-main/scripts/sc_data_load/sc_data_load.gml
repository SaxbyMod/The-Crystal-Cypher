function sc_data_load() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
var data_file=data_file_prefix + string(savefile_slot) + file_format;
//
compatibility_save_slot=false; // SAVE COMPATIBILITY (v2.2.0.0)
if file_exists(data_file_old) and !file_exists(data_file) {
	data_file=data_file_old;
	compatibility_save_slot=true;
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
area_zone=0;
latest_zone=0;
latest_city=-1;
zone_first_lap=true;
roadmap_area=0;
roadmap_generated=false;
money=0;
autoattack_toggle=false;
//
option_state[opt_challenge]=0;
//
var i=0;
repeat (roadmap_full_max) {
	location_type[i]=-1;
	trainer_kind[i]=-1;
	trainer_sprite[i]=-1;
	trainer_skin[i]=-1;
	trainer_hair_color[i]=c_white;
	//
	var ii=0;
	repeat (3) {
		event_kind[ii][i]=-1;
		event_glyph_add[ii][i]=-1;
		ii++;
	}
	i++;
}
//
maindeck_total=0;
maindeck_used_total=0;
berrydeck_total=0;
serial_count=0;
//————————————————————————————————————————————————————————————————————————————————————————————————————
if file_exists(data_file) {
	var savemap=ds_map_secure_load(data_file);
	//
	if !is_undefined(ds_map_find_value(savemap,"area_zone")) { area_zone=ds_map_find_value(savemap,"area_zone"); }
	if !is_undefined(ds_map_find_value(savemap,"latest_zone")) { latest_zone=ds_map_find_value(savemap,"latest_zone"); }
	if !is_undefined(ds_map_find_value(savemap,"latest_city")) { latest_city=ds_map_find_value(savemap,"latest_city"); }
	if !is_undefined(ds_map_find_value(savemap,"zone_first_lap")) { zone_first_lap=ds_map_find_value(savemap,"zone_first_lap"); }
	if !is_undefined(ds_map_find_value(savemap,"roadmap_area")) { roadmap_area=ds_map_find_value(savemap,"roadmap_area"); }
	if !is_undefined(ds_map_find_value(savemap,"roadmap_generated")) { roadmap_generated=ds_map_find_value(savemap,"roadmap_generated"); }
	if !is_undefined(ds_map_find_value(savemap,"money")) { money=ds_map_find_value(savemap,"money"); }
	if !is_undefined(ds_map_find_value(savemap,"autoattack")) { autoattack_toggle=ds_map_find_value(savemap,"autoattack"); }
	//
	if !is_undefined(ds_map_find_value(savemap,"challenge_mode")) { option_state[opt_challenge]=ds_map_find_value(savemap,"challenge_mode"); }
	//
	var i=0;
	repeat (roadmap_full_max) {
		var value_name="location_type_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { location_type[i]=ds_map_find_value(savemap,value_name); }
		var value_name="trainer_kind_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { trainer_kind[i]=ds_map_find_value(savemap,value_name); }
		var value_name="trainer_sprite_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { trainer_sprite[i]=ds_map_find_value(savemap,value_name); }
		var value_name="trainer_skin_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { trainer_skin[i]=ds_map_find_value(savemap,value_name); }
		var value_name="trainer_hair_color_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { trainer_hair_color[i]=ds_map_find_value(savemap,value_name); }
		//
		var ii=0;
		repeat (3) {
			var value_name="event_kind_" + string(ii) + "_" + string(i);
			if !is_undefined(ds_map_find_value(savemap,value_name)) { event_kind[ii][i]=ds_map_find_value(savemap,value_name); }
			var value_name="event_glyph_add_" + string(ii) + "_" + string(i);
			if !is_undefined(ds_map_find_value(savemap,value_name)) { event_glyph_add[ii][i]=ds_map_find_value(savemap,value_name); }
			ii++;
		}
		i++;
	}
	//
	if !is_undefined(ds_map_find_value(savemap,"maindeck_total")) { maindeck_total=ds_map_find_value(savemap,"maindeck_total"); }
	if !is_undefined(ds_map_find_value(savemap,"maindeck_used_total")) { maindeck_used_total=ds_map_find_value(savemap,"maindeck_used_total"); }
	if !is_undefined(ds_map_find_value(savemap,"berrydeck_total")) { berrydeck_total=ds_map_find_value(savemap,"berrydeck_total"); }
	if !is_undefined(ds_map_find_value(savemap,"serial_count")) { serial_count=ds_map_find_value(savemap,"serial_count"); }
	//
	ds_map_destroy(savemap);
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
var i=0;
repeat (maindeck_total) {
	main_card_id[i]=-1;
	main_card_nickname[i]="";
	main_card_level[i]=-1;
	main_card_glyph_a[i]=-1;
	main_card_glyph_b[i]=-1;
	main_card_glyph_c[i]=-1;
	main_card_innate[i]=-1;
	main_card_form_value[i]=-1;
	main_card_shiny[i]=-1;
	main_card_serial[i]=-1;
	i++;
}
//
var i=0;
repeat (serial_count) {
	var ii=0;
	repeat (deck_setup_max+1) {
		serial_card_indeck[i][ii]=false;
		ii++;
	}
	i++;
}
//
var i=0;
repeat (berrydeck_total) {
	berry_card_id[i]=-1;
	i++;
}
//
var i=0;
repeat (4) {
	var ii=0;
	repeat (deck_setup_max+1) {
		berry_num_used[i][ii]=0;
		ii++;
	}
	i++;
}
//
stats_timeplayed=0;
stats_battles_total=0;
stats_battles_won=0;
stats_battles_lost=0;
stats_battles_trainers=0;
stats_battles_gyms=0;
stats_battles_league=0;
stats_league_won=0;
stats_league_won_firsttime=0;
stats_cards_defeated=0;
stats_cards_lost=0;
stats_money_total=0;
stats_cards_sold=0;
stats_payouts=0;
stats_cardpacks=0;
stats_berrypacks=0;
stats_freecards=0;
stats_glyphs_added=0;
stats_levelups=0;
stats_evolutions=0;
stats_tributes=0;
stats_notready=0;
//————————————————————————————————————————————————————————————————————————————————————————————————————
if file_exists(data_file) {
	var savemap=ds_map_secure_load(data_file);
	//
	var i=0;
	repeat (maindeck_total) {
		var value_name="main_card_id_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_id[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_nickname_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_nickname[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_level_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_level[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_glyph_a_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_glyph_a[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_glyph_b_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_glyph_b[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_glyph_c_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_glyph_c[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_innate_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_innate[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_form_value_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_form_value[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_shiny_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_shiny[i]=ds_map_find_value(savemap,value_name); }
		var value_name="main_card_serial_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { main_card_serial[i]=ds_map_find_value(savemap,value_name); }
		i++;
	}
	//
	var i=0;
	repeat (serial_count) {
		var ii=0;
		repeat (deck_setup_max+1) {
			var value_name="serial_card_indeck_" + string(i) + "_" + string(ii);
			if !is_undefined(ds_map_find_value(savemap,value_name)) { serial_card_indeck[i][ii]=ds_map_find_value(savemap,value_name); }
			ii++;
		}
		i++;
	}
	//
	var i=0;
	repeat (berrydeck_total) {
		var value_name="berry_card_id_" + string(i);
		if !is_undefined(ds_map_find_value(savemap,value_name)) { berry_card_id[i]=ds_map_find_value(savemap,value_name); }
		i++;
	}
	//
	var i=0;
	repeat (4) {
		var ii=0;
		repeat (deck_setup_max+1) {
			var value_name="berry_num_used_" + string(i) + "_" + string(ii);
			if !is_undefined(ds_map_find_value(savemap,value_name)) { berry_num_used[i][ii]=ds_map_find_value(savemap,value_name); }
			ii++;
		}
		i++;
	}
	//
	if !is_undefined(ds_map_find_value(savemap,"stats_timeplayed")) { stats_timeplayed=ds_map_find_value(savemap,"stats_timeplayed"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_total")) { stats_battles_total=ds_map_find_value(savemap,"stats_battles_total"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_won")) { stats_battles_won=ds_map_find_value(savemap,"stats_battles_won"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_lost")) { stats_battles_lost=ds_map_find_value(savemap,"stats_battles_lost"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_trainers")) { stats_battles_trainers=ds_map_find_value(savemap,"stats_battles_trainers"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_gyms")) { stats_battles_gyms=ds_map_find_value(savemap,"stats_battles_gyms"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_battles_league")) { stats_battles_league=ds_map_find_value(savemap,"stats_battles_league"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_league_won")) { stats_league_won=ds_map_find_value(savemap,"stats_league_won"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_league_won_firsttime")) { stats_league_won_firsttime=ds_map_find_value(savemap,"stats_league_won_firsttime"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_cards_defeated")) { stats_cards_defeated=ds_map_find_value(savemap,"stats_cards_defeated"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_cards_lost")) { stats_cards_lost=ds_map_find_value(savemap,"stats_cards_lost"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_money_total")) { stats_money_total=ds_map_find_value(savemap,"stats_money_total"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_cards_sold")) { stats_cards_sold=ds_map_find_value(savemap,"stats_cards_sold"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_payouts")) { stats_payouts=ds_map_find_value(savemap,"stats_payouts"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_cardpacks")) { stats_cardpacks=ds_map_find_value(savemap,"stats_cardpacks"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_berrypacks")) { stats_berrypacks=ds_map_find_value(savemap,"stats_berrypacks"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_freecards")) { stats_freecards=ds_map_find_value(savemap,"stats_freecards"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_glyphs_added")) { stats_glyphs_added=ds_map_find_value(savemap,"stats_glyphs_added"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_levelups")) { stats_levelups=ds_map_find_value(savemap,"stats_levelups"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_evolutions")) { stats_evolutions=ds_map_find_value(savemap,"stats_evolutions"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_tributes")) { stats_tributes=ds_map_find_value(savemap,"stats_tributes"); }
	if !is_undefined(ds_map_find_value(savemap,"stats_notready")) { stats_notready=ds_map_find_value(savemap,"stats_notready"); }
	//
	ds_map_destroy(savemap);
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if stats_timeplayed=0 and !(area_zone=0 and roadmap_area=0 and zone_first_lap=true) { statistics_disabled=true; }
//————————————————————————————————————————————————————————————————————————————————————————————————————
}