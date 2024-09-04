function sc_enemy_deck(argument0) {
/// @param trainer_kind
//————————————————————————————————————————————————————————————————————————————————————————————————————
enemycard_maindeck_total=ob_main.enemy_maindeck_size;
//
for (var i=0; i<=17; i++;) {
	enemy_type_chance[i]=0; //0%
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0<=100 {
	for (var i=0; i<=17; i++;) {
		enemy_type_chance[i]=1; //1% minimum
	}
	//
	if argument0=-1 { //(TEMPLATE)
		enemy_type_chance[00]=00; //normal
		enemy_type_chance[01]=00; //grass
		enemy_type_chance[02]=00; //fire
		enemy_type_chance[03]=00; //water
		enemy_type_chance[04]=00; //electric
		enemy_type_chance[05]=00; //flying
		enemy_type_chance[06]=00; //fighting
		enemy_type_chance[07]=00; //psychic
		enemy_type_chance[08]=00; //fairy
		enemy_type_chance[09]=00; //ground
		enemy_type_chance[10]=00; //rock
		enemy_type_chance[11]=00; //bug
		enemy_type_chance[12]=00; //poison
		enemy_type_chance[13]=00; //ice
		enemy_type_chance[14]=00; //dragon
		enemy_type_chance[15]=00; //steel
		enemy_type_chance[16]=00; //ghost
		enemy_type_chance[17]=00; //dark
	}
	else if argument0=00 { //CAMPER/PICNICKER
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[03]=75; //water
		enemy_type_chance[05]=100; //flying
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=75; //rock
		enemy_type_chance[11]=25; //bug
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=01 or argument0=04 { //FISHER & SWIMMER
		enemy_type_chance[03]=100; //water
	}
	else if argument0=02 { //HIKER
		enemy_type_chance[01]=10; //grass
		enemy_type_chance[06]=25; //fighting
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[11]=10; //bug
	}
	else if argument0=03 { //BUG CATCHER
		enemy_type_chance[01]=10; //grass
		enemy_type_chance[09]=10; //ground
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=100; //poison
	}
	else if argument0=05 { //BIRD KEEPER
		enemy_type_chance[05]=100; //flying
	}
	else if argument0=06 { //SKIER
		enemy_type_chance[03]=50; //water
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[10]=25; //rock
		enemy_type_chance[13]=100; //ice
	}
	else if argument0=07 { //SUPER NERD
		enemy_type_chance[02]=75; //fire
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[12]=100; //poison
	}
	else if argument0=08 { //YOUNGSTER
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=25; //grass
		enemy_type_chance[02]=25; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[06]=10; //fighting
		enemy_type_chance[09]=25; //ground
		enemy_type_chance[10]=25; //rock
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[15]=10; //steel
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=09 { //LAD/LASS
		enemy_type_chance[00]=50; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=25; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[08]=100; //fairy
		enemy_type_chance[12]=10; //poison
	}
	else if argument0=10 { //BIKER
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[04]=25; //electric
		enemy_type_chance[07]=25; //psychic
		enemy_type_chance[08]=10; //fairy
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[16]=50; //ghost
		enemy_type_chance[17]=50; //dark
	}
	else if argument0=11 { //ROUGHNECK
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[12]=50; //poison
		enemy_type_chance[16]=25; //ghost
		enemy_type_chance[17]=100; //dark
	}
	else if argument0=12 { //PUNK GUY/PUNK GIRL
		enemy_type_chance[00]=10; //normal
		enemy_type_chance[06]=25; //fighting
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[16]=50; //ghost
		enemy_type_chance[17]=100; //dark
	}
	else if argument0=13 { //GUITARIST
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[12]=10; //poison
		enemy_type_chance[17]=25; //dark
	}
	else if argument0=14 { //PSYCHIC
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[16]=50; //ghost
	}
	else if argument0=15 { //BLACK BELT
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[10]=50; //rock
		enemy_type_chance[15]=25; //steel
	}
	else if argument0=16 { //SCIENTIST
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[12]=75; //poison
	}
	else if argument0=17 { //RUIN MANIAC
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[15]=75; //steel
	}
	else if argument0=18 { //BURGLAR
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[12]=25; //poison
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=19 { //ENGINEER
		enemy_type_chance[04]=100; //electric
	}
	else if argument0=20 { //CHANNELER
		enemy_type_chance[16]=100; //ghost
		enemy_type_chance[17]=10; //dark
	}
	else if argument0=21 { //DRAGON TAMER
		enemy_type_chance[14]=100; //dragon
	}
	else if argument0=22 { //SPRITE BOY/FAIRY GIRL
		enemy_type_chance[00]=25; //normal
		enemy_type_chance[07]=50; //psychic
		enemy_type_chance[08]=100; //fairy
	}
	else if argument0=23 { //KINDLER
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[03]=10; //water
	}
	else if argument0=24 { //AROMA MAN/AROMA LADY
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[08]=10; //fairy
	}
	else if argument0=25 { //RANGER
		enemy_type_chance[00]=50; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=10; //fire
		enemy_type_chance[03]=25; //water
		enemy_type_chance[04]=10; //electric
		enemy_type_chance[05]=25; //flying
		enemy_type_chance[09]=25; //ground
		enemy_type_chance[10]=10; //rock
		enemy_type_chance[11]=25; //bug
		enemy_type_chance[12]=25; //poison
	}
	else if argument0=100 { //ACE TRAINER (number also referenced in sc_enemy_berry_deck)
		enemy_type_chance[00]=100; //normal
		enemy_type_chance[01]=100; //grass
		enemy_type_chance[02]=100; //fire
		enemy_type_chance[03]=100; //water
		enemy_type_chance[04]=100; //electric
		enemy_type_chance[05]=100; //flying
		enemy_type_chance[06]=100; //fighting
		enemy_type_chance[07]=100; //psychic
		enemy_type_chance[08]=100; //fairy
		enemy_type_chance[09]=100; //ground
		enemy_type_chance[10]=100; //rock
		enemy_type_chance[11]=100; //bug
		enemy_type_chance[12]=100; //poison
		enemy_type_chance[13]=100; //ice
		enemy_type_chance[14]=100; //dragon
		enemy_type_chance[15]=100; //steel
		enemy_type_chance[16]=100; //ghost
		enemy_type_chance[17]=100; //dark
	}
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		sc_enemy_deck_addcard(i,-1,-1,-2,-2,-2,-1,-1);
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=101 { //TUTORIAL (PROF. ASPEN)
	enemycard_maindeck_total=5;
	//
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		if i<1 { sc_enemy_deck_addcard(i,161,1,-1,-1,-1,1,0); } //SENTRET, LV 1 (IN 1)
		else if i<2 { sc_enemy_deck_addcard(i,399,1,-1,-1,-1,1,0); } //BIDOOF, LV 1 (IN 1)
		else if i<3 { sc_enemy_deck_addcard(i,191,1,-1,-1,-1,1,0); } //SUNKERN, LV 1 (IN 1)
		else if i<4 { sc_enemy_deck_addcard(i,129,1,ref_glyph_debilitate,-1,-1,1,0); } //MAGIKARP, LV 1 (IN 1)
		else if i<5 { sc_enemy_deck_addcard(i,019,1,-1,-1,-1,1,0); } //RATTATA, LV 1 (IN 1)
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=150 { //WHISPERER (number also referenced in sc_enemy_berry_deck)
	enemycard_maindeck_total=card_maindeck_total;
	//
	for (var i=0; i<=17; i++;) {
		enemy_type_chance[i]=100;
	}
	//
	for (var i=0; i<enemycard_maindeck_total; i++;) {
		var copy_card=card_maindeck[i];
		sc_enemy_deck_addcard(i,copy_card.card_id,copy_card.card_level,copy_card.card_glyph_a,copy_card.card_glyph_b,copy_card.card_glyph_c,copy_card.card_innate,copy_card.card_form_value);
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
//GYM & LEAGUE TYPE CHANCE
//main type: 100% (if very few pokemon, make all others even lower)
//secondary types: 50% (75% if very few pokemon)
//tertiary types: 25% (50% if very few pokemon)
//————————————————————————————————————————————————————————————————————————————————————————————————————
//GYMS AND LEAGUE LEVEL DISTRIBUTION
//high level: 50% (round up, with 1-4 over-level (+1 every 2 gyms) / 60% (round up, league, with 5 over-level) / 70% (round up, champion, with 7 over-level)
//mid level: 30% (round up) / 30% (round up, league) / 30% (rest, champion)
//low level: 20% (rest) / 10% (rest, league)
//specific cards: 1+10% (round up)
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=200 { //GYM 1: IAN (NORMAL/flying)
	enemy_type_chance[00]=100; //normal
	enemy_type_chance[05]=50; //flying
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,162,3,ref_glyph_lucky,ref_glyph_harvest,-1,1,0); } //FURRET, LV 3 (>MAX) (IN 1)
			else if i<2 { sc_enemy_deck_addcard(i,428,2,-1,-1,-1,2,0); } //LOPUNNY, LV 2 (IN 2)
			else if i<5 { sc_enemy_deck_addcard(i,-1,2,-2,-2,-2,-1,-1); } //(3) LV 2
			else if i<10 { sc_enemy_deck_addcard(i,-1,1,-2,-2,-2,-1,-1); } //(5) LV 1
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,162,10,ref_glyph_lucky,ref_glyph_harvest,-1,innate_max,0); } //FURRET, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,428,10,-1,-1,-1,innate_max,0); } //LOPUNNY, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(8) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=201 { //GYM 2: CAMMIE (GRASS/ground/rock)
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[09]=50; //ground
	enemy_type_chance[10]=50; //rock
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,192,4,ref_glyph_adaptability,ref_glyph_harvest,-1,1,0); } //SUNFLORA, LV 4 (>MAX) (IN 1)
			else if i<2 { sc_enemy_deck_addcard(i,421,3,ref_glyph_sunlight,ref_glyph_recovery,-1,1,0); } //CHERRIM, LV 3 (IN 1)
			else if i<3 { sc_enemy_deck_addcard(i,028,3,-1,-1,-1,2,0); } //SANDSLASH, LV 3 (IN 2)
			else if i<7 { sc_enemy_deck_addcard(i,-1,3,-2,-2,-2,-1,-1); } //(4) LV 3
			else if i<12 { sc_enemy_deck_addcard(i,-1,2,-2,-2,-2,-1,-1); } //(5) LV 2
			else if i<14 { sc_enemy_deck_addcard(i,-1,1,-2,-2,-2,-1,-1); } //(2) LV 1
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,192,10,ref_glyph_adaptability,ref_glyph_harvest,-1,innate_max,0); } //SUNFLORA, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,421,10,ref_glyph_sunlight,ref_glyph_recovery,-1,innate_max,0); } //CHERRIM, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,028,10,-1,-1,-1,innate_max,0); } //SANDSLASH, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(7) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=202 { //GYM 3: WALKER (WATER/ice)
	enemy_type_chance[03]=100; //water
	enemy_type_chance[13]=75; //ice
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,350,5,ref_glyph_ruthless,ref_glyph_memento,-1,1,0); } //MILOTIC, LV 5 (>MAX) (IN 1)
			else if i<2 { sc_enemy_deck_addcard(i,055,5,ref_glyph_shield,-1,-1,1,0); } //GOLDUCK, LV 5 (>MAX) (IN 1)
			else if i<3 { sc_enemy_deck_addcard(i,478,4,-1,-1,-1,3,0); } //FROSLASS, LV 4 (IN 3)
			else if i<9 { sc_enemy_deck_addcard(i,-1,4,-2,-2,-2,-1,-1); } //(6) LV 4
			else if i<15 { sc_enemy_deck_addcard(i,-1,3,-2,-2,-2,-1,-1); } //(6) LV 3
			else if i<18 { sc_enemy_deck_addcard(i,-1,2,-2,-2,-2,-1,-1); } //(3) LV 2
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,350,10,ref_glyph_ruthless,ref_glyph_memento,-1,innate_max,0); } //MILOTIC, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,055,10,ref_glyph_shield,-1,-1,innate_max,0); } //GOLDUCK, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,478,10,-1,-1,-1,innate_max,0); } //FROSLASS, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(7) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=203 { //GYM 4: MADISON (FIRE/steel)
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[15]=75; //steel
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,038,6,ref_glyph_courage,ref_glyph_debilitate,-1,1,0); } //NINETALES, LV 6 (>MAX) (IN 1)
			else if i<2 { sc_enemy_deck_addcard(i,324,6,ref_glyph_bulwark,-1,-1,1,0); } //TORKOAL, LV 6 (>MAX) (IN 1)
			else if i<3 { sc_enemy_deck_addcard(i,078,5,-1,-1,-1,3,0); } //RAPIDASH, LV 5 (IN 3)
			else if i<4 { sc_enemy_deck_addcard(i,208,5,-1,-1,-1,2,0); } //STEELIX, LV 5 (IN 2)
			else if i<11 { sc_enemy_deck_addcard(i,-1,5,-2,-2,-2,-1,-1); } //(7) LV 5
			else if i<18 { sc_enemy_deck_addcard(i,-1,4,-2,-2,-2,-1,-1); } //(7) LV 4
			else if i<22 { sc_enemy_deck_addcard(i,-1,3,-2,-2,-2,-1,-1); } //(4) LV 3
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,038,10,ref_glyph_courage,ref_glyph_debilitate,-1,innate_max,0); } //NINETALES, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,324,10,ref_glyph_bulwark,-1,-1,innate_max,0); } //TORKOAL, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,078,10,-1,-1,-1,innate_max,0); } //RAPIDASH, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,208,10,-1,-1,-1,innate_max,0); } //STEELIX, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(6) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=204 { //GYM 5: ZOE (ELECTRIC)
	enemy_type_chance[04]=100; //electric
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,135,7,ref_glyph_piercing,ref_glyph_counter,-1,2,0); } //JOLTEON, LV 7 (>MAX) (IN 2)
			else if i<2 { sc_enemy_deck_addcard(i,405,7,ref_glyph_intimidate,ref_glyph_inertia,-1,1,0); } //LUXRAY, LV 7 (>MAX) (IN 1)
			else if i<3 { sc_enemy_deck_addcard(i,310,7,-1,-1,-1,1,0); } //MANECTRIC, LV 7 (>MAX) (IN 1)
			else if i<4 { sc_enemy_deck_addcard(i,181,6,-1,-1,-1,3,0); } //AMPHAROS, LV 6 (IN 3)
			else if i<13 { sc_enemy_deck_addcard(i,-1,6,-2,-2,-2,-1,-1); } //(9) LV 6
			else if i<21 { sc_enemy_deck_addcard(i,-1,5,-2,-2,-2,-1,-1); } //(8) LV 5
			else if i<26 { sc_enemy_deck_addcard(i,-1,4,-2,-2,-2,-1,-1); } //(5) LV 4
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,135,10,ref_glyph_piercing,ref_glyph_counter,-1,innate_max,0); } //JOLTEON, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,405,10,ref_glyph_intimidate,ref_glyph_inertia,-1,innate_max,0); } //LUXRAY, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,310,10,-1,-1,-1,innate_max,0); } //MANECTRIC, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,181,10,-1,-1,-1,innate_max,0); } //AMPHAROS, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(6) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=205 { //GYM 6: VINCENT (FIGHTING/dark)
	enemy_type_chance[06]=100; //fighting
	enemy_type_chance[17]=75; //dark
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,308,8,ref_glyph_might,ref_glyph_counter,ref_glyph_courage,2,0); } //MEDICHAM, LV 8 (>MAX) (IN 2)
			else if i<2 { sc_enemy_deck_addcard(i,107,8,-1,-1,-1,1,0); } //HITMONCHAN, LV 8 (>MAX) (IN 1)
			else if i<3 { sc_enemy_deck_addcard(i,106,8,-1,-1,-1,1,0); } //HITMONLEE, LV 8 (>MAX) (IN 1)
			else if i<4 { sc_enemy_deck_addcard(i,262,7,ref_glyph_intimidate,ref_glyph_memento,-1,3,0); } //MIGHTYENA, LV 7 (IN 3)
			else if i<15 { sc_enemy_deck_addcard(i,-1,7,-2,-2,-2,-1,-1); } //(11) LV 7
			else if i<24 { sc_enemy_deck_addcard(i,-1,6,-2,-2,-2,-1,-1); } //(9) LV 6
			else if i<30 { sc_enemy_deck_addcard(i,-1,5,-2,-2,-2,-1,-1); } //(6) LV 5
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,308,10,ref_glyph_might,ref_glyph_counter,ref_glyph_courage,innate_max,0); } //MEDICHAM, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,107,10,-1,-1,-1,innate_max,0); } //HITMONCHAN, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,106,10,-1,-1,-1,innate_max,0); } //HITMONLEE, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,262,10,ref_glyph_intimidate,ref_glyph_memento,-1,innate_max,0); } //MIGHTYENA, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(6) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=206 { //GYM 7: PENNY (PSYCHIC/fairy/ghost)
	enemy_type_chance[07]=100; //psychic
	enemy_type_chance[08]=50; //fairy
	enemy_type_chance[16]=75; //ghost
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,196,9,ref_glyph_lucky,ref_glyph_recovery,-1,2,0); } //ESPEON, LV 9 (>MAX) (IN 2)
			else if i<2 { sc_enemy_deck_addcard(i,282,9,ref_glyph_medic,-1,-1,2,0); } //GARDEVOIR, LV 9 (>MAX) (IN 2)
			else if i<3 { sc_enemy_deck_addcard(i,210,9,ref_glyph_intimidate,-1,-1,1,0); } //GRANBULL, LV 9 (>MAX) (IN 1)
			else if i<4 { sc_enemy_deck_addcard(i,354,9,ref_glyph_memento,ref_glyph_curse,-1,1,0); } //BANETTE, LV 9 (>MAX) (IN 1)
			else if i<5 { sc_enemy_deck_addcard(i,429,8,-1,-1,-1,3,0); } //MISMAGIUS, LV 8 (IN 3)
			else if i<17 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(12) LV 8
			else if i<28 { sc_enemy_deck_addcard(i,-1,7,-2,-2,-2,-1,-1); } //(11) LV 7
			else if i<34 { sc_enemy_deck_addcard(i,-1,6,-2,-2,-2,-1,-1); } //(6) LV 6
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,196,10,ref_glyph_lucky,ref_glyph_recovery,-1,innate_max,0); } //ESPEON, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,282,10,ref_glyph_medic,-1,-1,innate_max,0); } //GARDEVOIR, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,210,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //GRANBULL, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,354,10,ref_glyph_memento,ref_glyph_curse,-1,innate_max,0); } //BANETTE, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,429,10,-1,-1,-1,innate_max,0); } //MISMAGIUS, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(5) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=207 { //GYM 8: LAKE (GRASS/FIRE/WATER)
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[03]=100; //water
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,470,10,ref_glyph_adaptability,ref_glyph_harvest,-1,2,0); } //LEAFEON, LV 10 (>MAX) (IN 2)
			else if i<2 { sc_enemy_deck_addcard(i,136,10,ref_glyph_adaptability,ref_glyph_courage,-1,2,0); } //FLAREON, LV 10 (>MAX) (IN 2)
			else if i<3 { sc_enemy_deck_addcard(i,134,10,ref_glyph_adaptability,ref_glyph_recovery,-1,2,0); } //VAPOREON, LV 10 (>MAX) (IN 2)
			else if i<4 { sc_enemy_deck_addcard(i,357,10,-1,-1,-1,1,0); } //TROPIUS, LV 10 (>MAX) (IN 1)
			else if i<5 { sc_enemy_deck_addcard(i,130,9,ref_glyph_intimidate,-1,-1,innate_max,0); } //GYARADOS, LV 9 (IN MAX)
			else if i<19 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(14) LV 9
			else if i<31 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(12) LV 8
			else if i<38 { sc_enemy_deck_addcard(i,-1,7,-2,-2,-2,-1,-1); } //(7) LV 7
		}
	}
	else {
		enemycard_maindeck_total=40;
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,470,10,ref_glyph_adaptability,ref_glyph_harvest,-1,innate_max,0); } //LEAFEON, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,136,10,ref_glyph_adaptability,ref_glyph_courage,-1,innate_max,0); } //FLAREON, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,134,10,ref_glyph_adaptability,ref_glyph_recovery,-1,innate_max,0); } //VAPOREON, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,357,10,-1,-1,-1,innate_max,0); } //TROPIUS, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,130,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //GYARADOS, LV 10 (IN MAX)
			else if i<10 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(5) LV 10 (IN MAX)
			else if i<30 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(10) LV 9
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=208 { //ELITE 1: EMILY (FIRE/dark, psychic/ghost)
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[07]=25; //psychic
	enemy_type_chance[16]=50; //ghost
	enemy_type_chance[17]=75; //dark
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,006,10,ref_glyph_lucky,ref_glyph_debilitate,ref_glyph_ruthless,innate_max,0); } //CHARIZARD, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,059,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //ARCANINE, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,229,10,-1,-1,-1,innate_max,0); } //HOUNDOOM, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,302,10,ref_glyph_inertia,ref_glyph_curse,-1,innate_max,0); } //SABLEYE, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,475,10,ref_glyph_guru,ref_glyph_motivation,-1,innate_max,0); } //GALLADE, LV 10 (IN MAX)
			else if i<24 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(19) LV 10
			else if i<36 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(12) LV 9
			else if i<40 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(4) LV 8
		}
	}
	else {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,006,10,ref_glyph_lucky,ref_glyph_debilitate,ref_glyph_ruthless,innate_max,0); } //CHARIZARD, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,059,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //ARCANINE, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,229,10,-1,-1,-1,innate_max,0); } //HOUNDOOM, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,302,10,ref_glyph_inertia,ref_glyph_curse,-1,innate_max,0); } //SABLEYE, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,475,10,ref_glyph_guru,ref_glyph_motivation,-1,innate_max,0); } //GALLADE, LV 10 (IN MAX)
			else if i<15 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(10) LV 10 (IN MAX)
			else if i<40 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(25) LV 10
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=209 { //ELITE 2: FINN (POISON/bug, ground/rock)
	enemy_type_chance[09]=25; //ground
	enemy_type_chance[10]=25; //rock
	enemy_type_chance[11]=50; //bug
	enemy_type_chance[12]=100; //poison
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,336,10,ref_glyph_counter,ref_glyph_ruthless,ref_glyph_harvest,innate_max,0); } //SEVIPER, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,454,10,ref_glyph_guru,ref_glyph_vampire,ref_glyph_memento,innate_max,0); } //TOXICROAK, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,031,10,-1,-1,-1,innate_max,0); } //NIDOQUEEN, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,034,10,-1,-1,-1,innate_max,0); } //NIDOKING, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,292,10,ref_glyph_aegis,ref_glyph_shield,-1,innate_max,0); } //SHEDINJA, LV 10 (IN MAX)
			else if i<24 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(19) LV 10
			else if i<36 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(12) LV 9
			else if i<40 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(4) LV 8
		}
	}
	else {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,336,10,ref_glyph_counter,ref_glyph_ruthless,ref_glyph_harvest,innate_max,0); } //SEVIPER, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,454,10,ref_glyph_guru,ref_glyph_vampire,ref_glyph_memento,innate_max,0); } //TOXICROAK, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,031,10,-1,-1,-1,innate_max,0); } //NIDOQUEEN, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,034,10,-1,-1,-1,innate_max,0); } //NIDOKING, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,292,10,ref_glyph_aegis,ref_glyph_shield,-1,innate_max,0); } //SHEDINJA, LV 10 (IN MAX)
			else if i<15 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(10) LV 10 (IN MAX)
			else if i<40 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(25) LV 10
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=210 { //ELITE 3: DION (FLYING/fighting, grass)
	enemy_type_chance[01]=25; //grass
	enemy_type_chance[05]=100; //flying
	enemy_type_chance[06]=50; //fighting
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,227,10,ref_glyph_piercing,ref_glyph_fork,ref_glyph_shield,innate_max,0); } //SKARMORY, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,398,10,ref_glyph_intimidate,ref_glyph_piercing,ref_glyph_counter,innate_max,0); } //STARAPTOR, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,472,10,ref_glyph_guru,ref_glyph_adaptability,-1,innate_max,0); } //GLISCOR, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,430,10,-1,-1,-1,innate_max,0); } //HONCHKROW, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,286,10,-1,-1,-1,innate_max,0); } //BRELOOM, LV 10 (IN MAX)
			else if i<24 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(19) LV 10
			else if i<36 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(12) LV 9
			else if i<40 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(4) LV 8
		}
	}
	else {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,227,10,ref_glyph_piercing,ref_glyph_fork,ref_glyph_shield,innate_max,0); } //SKARMORY, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,398,10,ref_glyph_intimidate,ref_glyph_piercing,ref_glyph_counter,innate_max,0); } //STARAPTOR, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,472,10,ref_glyph_guru,ref_glyph_adaptability,-1,innate_max,0); } //GLISCOR, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,430,10,-1,-1,-1,innate_max,0); } //HONCHKROW, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,286,10,-1,-1,-1,innate_max,0); } //BRELOOM, LV 10 (IN MAX)
			else if i<15 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(10) LV 10 (IN MAX)
			else if i<40 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(25) LV 10
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=211 { //ELITE 4: APRIL (DRAGON/ice, steel, water)
	enemy_type_chance[03]=5; //water
	enemy_type_chance[13]=50; //ice
	enemy_type_chance[14]=100; //dragon
	enemy_type_chance[15]=25; //steel
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,149,10,ref_glyph_berserk,ref_glyph_inertia,ref_glyph_recovery,innate_max,0); } //DRAGONITE, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,445,10,ref_glyph_guru,ref_glyph_motivation,ref_glyph_vampire,innate_max,0); } //GARCHOMP, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,373,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //SALAMENCE, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,334,10,ref_glyph_courage,-1,-1,innate_max,0); } //ALTARIA, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,376,10,-1,-1,-1,innate_max,0); } //METAGROSS, LV 10 (IN MAX)
			else if i<24 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(19) LV 10
			else if i<36 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(12) LV 9
			else if i<40 { sc_enemy_deck_addcard(i,-1,8,-2,-2,-2,-1,-1); } //(4) LV 8
		}
	}
	else {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,149,10,ref_glyph_berserk,ref_glyph_inertia,ref_glyph_recovery,innate_max,0); } //DRAGONITE, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,445,10,ref_glyph_guru,ref_glyph_motivation,ref_glyph_vampire,innate_max,0); } //GARCHOMP, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,373,10,ref_glyph_intimidate,-1,-1,innate_max,0); } //SALAMENCE, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,334,10,ref_glyph_courage,-1,-1,innate_max,0); } //ALTARIA, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,376,10,-1,-1,-1,innate_max,0); } //METAGROSS, LV 10 (IN MAX)
			else if i<15 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(10) LV 10 (IN MAX)
			else if i<40 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(25) LV 10
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=212 { //CHAMPION: DUNCAN (ALL)
	enemy_type_chance[00]=100; //normal
	enemy_type_chance[01]=100; //grass
	enemy_type_chance[02]=100; //fire
	enemy_type_chance[03]=100; //water
	enemy_type_chance[04]=100; //electric
	enemy_type_chance[05]=100; //flying
	enemy_type_chance[06]=100; //fighting
	enemy_type_chance[07]=100; //psychic
	enemy_type_chance[08]=100; //fairy
	enemy_type_chance[09]=100; //ground
	enemy_type_chance[10]=100; //rock
	enemy_type_chance[11]=100; //bug
	enemy_type_chance[12]=100; //poison
	enemy_type_chance[13]=100; //ice
	enemy_type_chance[14]=100; //dragon
	enemy_type_chance[15]=100; //steel
	enemy_type_chance[16]=100; //ghost
	enemy_type_chance[17]=100; //dark
	//
	if ob_main.stats_league_won=0 {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,448,10,ref_glyph_counter,ref_glyph_motivation,ref_glyph_inertia,innate_max,0); } //LUCARIO, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,248,10,ref_glyph_tenacity,ref_glyph_curse,ref_glyph_memento,innate_max,0); } //TYRANITAR, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,242,10,ref_glyph_medic,ref_glyph_shield,ref_glyph_lucky,innate_max,0); } //BLISSEY, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,131,10,ref_glyph_guru,ref_glyph_courage,ref_glyph_lucky,innate_max,0); } //LAPRAS, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,306,10,ref_glyph_guru,ref_glyph_berserk,-1,innate_max,0); } //AGGRON, LV 10 (IN MAX)
			else if i<7 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(2) LV 10 (IN MAX)
			else if i<28 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(21) LV 10
			else if i<40 { sc_enemy_deck_addcard(i,-1,9,-2,-2,-2,-1,-1); } //(12) LV 9
		}
	}
	else {
		for (var i=0; i<enemycard_maindeck_total; i++;) {
			if i<1 { sc_enemy_deck_addcard(i,448,10,ref_glyph_counter,ref_glyph_motivation,ref_glyph_inertia,innate_max,0); } //LUCARIO, LV 10 (IN MAX)
			else if i<2 { sc_enemy_deck_addcard(i,248,10,ref_glyph_tenacity,ref_glyph_curse,ref_glyph_memento,innate_max,0); } //TYRANITAR, LV 10 (IN MAX)
			else if i<3 { sc_enemy_deck_addcard(i,242,10,ref_glyph_medic,ref_glyph_shield,ref_glyph_lucky,innate_max,0); } //BLISSEY, LV 10 (IN MAX)
			else if i<4 { sc_enemy_deck_addcard(i,131,10,ref_glyph_guru,ref_glyph_courage,ref_glyph_lucky,innate_max,0); } //LAPRAS, LV 10 (IN MAX)
			else if i<5 { sc_enemy_deck_addcard(i,306,10,ref_glyph_guru,ref_glyph_berserk,-1,innate_max,0); } //AGGRON, LV 10 (IN MAX)
			else if i<20 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,innate_max,-1); } //(15) LV 10 (IN MAX)
			else if i<40 { sc_enemy_deck_addcard(i,-1,10,-2,-2,-2,-1,-1); } //(20) LV 10
		}
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}