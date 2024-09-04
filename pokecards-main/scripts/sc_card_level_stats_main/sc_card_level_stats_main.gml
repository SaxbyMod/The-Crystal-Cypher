function sc_card_level_stats_main(argument0,argument1) {
/// @param stat //0: hp, 1: atk, 2:def
/// @param level_multiplier
//————————————————————————————————————————————————————————————————————————————————————————————————————
var return_value=0;
//
if argument0=0 { //HP
	min_value = 1;
	if argument1 = 2 {
		return_value=((card_base_hp*argument1)/(1.5))/10;
	} else if argument1 > 2 {
		return_value=((card_base_hp*argument1)/(2))/10;
	} else {
		return_value=(card_base_hp)/10;
	}
}
else if argument0=1 { //ATK
	min_value = 0;
	if argument1 = 2 {
		return_value=((card_base_atk*argument1)/(1.5))/10;
	} else if argument1 > 2 {
		return_value=((card_base_atk*argument1)/(2))/10;
	} else {
		return_value=(card_base_atk)/10;
	}
}
else if argument0=2 { //DEF
	min_value = 0;
	if argument1 = 2 {
		return_value=((card_base_def*argument1)/(1.5))/10;
	} else if argument1 > 2 {
		return_value=((card_base_def*argument1)/(2))/10;
	} else {
		return_value=(card_base_def)/10;
	}
}
//
if card_secret=false { return_value+=(return_value*((card_innate-1)/(innate_max-1))*0.42); } //max x1.42
else { return_value+=(return_value*((card_innate-1)/(innate_max-1))*1.5); } //secret: max x2.5
//
return_value=round(return_value);
if return_value<min_value { return_value=min_value; }
//
return return_value;
//————————————————————————————————————————————————————————————————————————————————————————————————————
}