function sc_pokelist() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
//00 normal, 01 grass, 02 fire, 03 water, 04 electric, 05 flying, 06 fighting, 07 psychic, 08 fairy
//09 ground, 10 rock, 11 bug, 12 poison, 13 ice, 14 dragon, 15 steel, 16 ghost, 17 dark
//————————————————————————————————————————————————————————————————————————————————————————————————————
if card_id<=386 and card_shiny=false { card_sheet=sp_poke_a; }
else if card_id<=386 and card_shiny=true { card_sheet=sp_poke_a_shiny; }
else if card_id<=2000 and card_shiny=false { card_sheet=sp_poke_b; }
else if card_id<=2000 and card_shiny=true { card_sheet=sp_poke_b_shiny; }
else { card_sheet=sp_poke_c; }
var i=0;
repeat (8) {
	card_evo[i]=-1;
	i++;
}
//
card_enigma=false;
card_pseudo=false;
card_fossil=false;
card_starter=false;
//
card_secret=false;
card_environment=false;
//————————————————————————————————————————————————————————————————————————————————————————————————————
switch (card_id) {
	case 001:
		card_name="Bulbasaur";
		card_stage=1; card_evo[0]=002; card_starter=true;
		card_type_a=01; card_type_b=12;
		card_base_hp=45; card_base_atk=49; card_base_def=49;
		card_grid_x=1; card_grid_y=1; break;
	case 002:
		card_name="Ivysaur";
		card_stage=2; card_evo[0]=003; card_starter=true;
		card_type_a=01; card_type_b=12;
		card_base_hp=60; card_base_atk=62; card_base_def=63;
		card_grid_x=2; card_grid_y=1; break;
	case 003:
		card_name="Venusaur";
		card_stage=3; card_starter=true;
		card_type_a=01; card_type_b=12;
		card_base_hp=80; card_base_atk=82; card_base_def=83;
		card_grid_x=3; card_grid_y=1; break;
	case 004:
		card_name="Charmander";
		card_stage=1; card_evo[0]=005; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=39; card_base_atk=52; card_base_def=43;
		card_grid_x=5; card_grid_y=1; break;
	case 005:
		card_name="Charmeleon";
		card_stage=2; card_evo[0]=006; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=58; card_base_atk=64; card_base_def=58;
		card_grid_x=6; card_grid_y=1; break;
	case 006:
		card_name="Charizard";
		card_stage=3; card_starter=true;
		card_type_a=02; card_type_b=05;
		card_base_hp=78; card_base_atk=84; card_base_def=78;
		card_grid_x=7; card_grid_y=1; break;
	case 007:
		card_name="Squirtle";
		card_stage=1; card_evo[0]=008; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=44; card_base_atk=48; card_base_def=65;
		card_grid_x=10; card_grid_y=1; break;
	case 008:
		card_name="Wartortle";
		card_stage=2; card_evo[0]=009; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=59; card_base_atk=63; card_base_def=80;
		card_grid_x=11; card_grid_y=1; break;
	case 009:
		card_name="Blastoise";
		card_stage=3; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=79; card_base_atk=83; card_base_def=100;
		card_grid_x=12; card_grid_y=1; break;
	case 010:
		card_name="Caterpie";
		card_stage=1; card_evo[0]=011;
		card_type_a=11; card_type_b=-1;
		card_base_hp=45; card_base_atk=30; card_base_def=35;
		card_grid_x=14; card_grid_y=1; break;
	case 011:
		card_name="Metapod";
		card_stage=2; card_evo[0]=012;
		card_type_a=11; card_type_b=-1;
		card_base_hp=50; card_base_atk=20; card_base_def=55;
		card_grid_x=15; card_grid_y=1; break;
	case 012:
		card_name="Butterfree";
		card_stage=3;
		card_type_a=11; card_type_b=05;
		card_base_hp=60; card_base_atk=45; card_base_def=50;
		card_grid_x=1; card_grid_y=2; break;
	case 013:
		card_name="Weedle";
		card_stage=1; card_evo[0]=014;
		card_type_a=11; card_type_b=12;
		card_base_hp=40; card_base_atk=35; card_base_def=30;
		card_grid_x=2; card_grid_y=2; break;
	case 014:
		card_name="Kakuna";
		card_stage=2; card_evo[0]=015;
		card_type_a=11; card_type_b=12;
		card_base_hp=45; card_base_atk=25; card_base_def=50;
		card_grid_x=3; card_grid_y=2; break;
	case 015:
		card_name="Beedrill";
		card_stage=3;
		card_type_a=11; card_type_b=12;
		card_base_hp=65; card_base_atk=90; card_base_def=40;
		card_grid_x=4; card_grid_y=2; break;
	case 016:
		card_name="Pidgey";
		card_stage=1; card_evo[0]=017;
		card_type_a=00; card_type_b=05;
		card_base_hp=40; card_base_atk=45; card_base_def=40;
		card_grid_x=6; card_grid_y=2; break;
	case 017:
		card_name="Pidgeotto";
		card_stage=2; card_evo[0]=018;
		card_type_a=00; card_type_b=05;
		card_base_hp=63; card_base_atk=60; card_base_def=55;
		card_grid_x=7; card_grid_y=2; break;
	case 018:
		card_name="Pidgeot";
		card_stage=3;
		card_type_a=00; card_type_b=05;
		card_base_hp=83; card_base_atk=80; card_base_def=75;
		card_grid_x=8; card_grid_y=2; break;
	case 019:
		card_name="Rattata";
		card_stage=1; card_evo[0]=020;
		card_type_a=00; card_type_b=-1;
		card_base_hp=30; card_base_atk=56; card_base_def=35;
		card_grid_x=10; card_grid_y=2; break;
	case 020:
		card_name="Raticate";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=55; card_base_atk=81; card_base_def=60;
		card_grid_x=12; card_grid_y=2; break;
	case 021:
		card_name="Spearow";
		card_stage=1; card_evo[0]=022;
		card_type_a=00; card_type_b=05;
		card_base_hp=40; card_base_atk=60; card_base_def=30;
		card_grid_x=14; card_grid_y=2; break;
	case 022:
		card_name="Fearow";
		card_stage=2;
		card_type_a=00; card_type_b=05;
		card_base_hp=65; card_base_atk=90; card_base_def=65;
		card_grid_x=15; card_grid_y=2; break;
	case 023:
		card_name="Ekans";
		card_stage=1; card_evo[0]=024;
		card_type_a=12; card_type_b=-1;
		card_base_hp=35; card_base_atk=60; card_base_def=44;
		card_grid_x=1; card_grid_y=3; break;
	case 024:
		card_name="Arbok";
		card_stage=2;
		card_type_a=12; card_type_b=-1;
		card_base_hp=60; card_base_atk=95; card_base_def=69;
		card_grid_x=2; card_grid_y=3; break;
	case 025:
		card_name="Pikachu";
		card_stage=1; card_evo[0]=026;
		card_type_a=04; card_type_b=-1;
		card_base_hp=35; card_base_atk=55; card_base_def=40;
		card_grid_x=3; card_grid_y=3; break;
	case 026:
		card_name="Raichu";
		card_stage=2;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=90; card_base_def=55;
		card_grid_x=13; card_grid_y=3; break;
	case 027:
		card_name="Sandshrew";
		card_stage=1; card_evo[0]=028;
		card_type_a=09; card_type_b=-1;
		card_base_hp=50; card_base_atk=75; card_base_def=85;
		card_grid_x=15; card_grid_y=3; break;
	case 028:
		card_name="Sandslash";
		card_stage=2;
		card_type_a=09; card_type_b=-1;
		card_base_hp=75; card_base_atk=100; card_base_def=110;
		card_grid_x=2; card_grid_y=4; break;
	case 029:
		card_name="Nidoran F";
		card_stage=1; card_evo[0]=030;
		card_type_a=12; card_type_b=-1;
		card_base_hp=55; card_base_atk=47; card_base_def=52;
		card_grid_x=4; card_grid_y=4; break;
	case 030:
		card_name="Nidorina";
		card_stage=2; card_evo[0]=031;
		card_type_a=12; card_type_b=-1;
		card_base_hp=70; card_base_atk=62; card_base_def=67;
		card_grid_x=5; card_grid_y=4; break;
	case 031:
		card_name="Nidoqueen";
		card_stage=3;
		card_type_a=12; card_type_b=09;
		card_base_hp=90; card_base_atk=92; card_base_def=87;
		card_grid_x=6; card_grid_y=4; break;
	case 032:
		card_name="Nidoran M";
		card_stage=1; card_evo[0]=033;
		card_type_a=12; card_type_b=-1;
		card_base_hp=46; card_base_atk=57; card_base_def=40;
		card_grid_x=7; card_grid_y=4; break;
	case 033:
		card_name="Nidorino";
		card_stage=2; card_evo[0]=034;
		card_type_a=12; card_type_b=-1;
		card_base_hp=61; card_base_atk=72; card_base_def=57;
		card_grid_x=8; card_grid_y=4; break;
	case 034:
		card_name="Nidoking";
		card_stage=3;
		card_type_a=12; card_type_b=09;
		card_base_hp=81; card_base_atk=102; card_base_def=77;
		card_grid_x=9; card_grid_y=4; break;
	case 035:
		card_name="Clefairy";
		card_stage=1; card_evo[0]=036;
		card_type_a=08; card_type_b=-1;
		card_base_hp=70; card_base_atk=45; card_base_def=48;
		card_grid_x=10; card_grid_y=4; break;
	case 036:
		card_name="Clefable";
		card_stage=2;
		card_type_a=08; card_type_b=-1;
		card_base_hp=95; card_base_atk=70; card_base_def=73;
		card_grid_x=12; card_grid_y=4; break;
	case 037:
		card_name="Vulpix";
		card_stage=1; card_evo[0]=038;
		card_type_a=02; card_type_b=-1;
		card_base_hp=38; card_base_atk=41; card_base_def=40;
		card_grid_x=14; card_grid_y=4; break;
	case 038:
		card_name="Ninetales";
		card_stage=2;
		card_type_a=02; card_type_b=-1;
		card_base_hp=73; card_base_atk=76; card_base_def=75;
		card_grid_x=1; card_grid_y=5; break;
	case 039:
		card_name="Jigglypuff";
		card_stage=1; card_evo[0]=040;
		card_type_a=00; card_type_b=08;
		card_base_hp=115; card_base_atk=45; card_base_def=20;
		card_grid_x=3; card_grid_y=5; break;
	case 040:
		card_name="Wigglytuff";
		card_stage=2;
		card_type_a=00; card_type_b=08;
		card_base_hp=140; card_base_atk=70; card_base_def=45;
		card_grid_x=5; card_grid_y=5; break;
	case 041:
		card_name="Zubat";
		card_stage=1; card_evo[0]=042;
		card_type_a=12; card_type_b=05;
		card_base_hp=40; card_base_atk=45; card_base_def=35;
		card_grid_x=7; card_grid_y=5; break;
	case 042:
		card_name="Golbat";
		card_stage=2; card_evo[0]=169;
		card_type_a=12; card_type_b=05;
		card_base_hp=75; card_base_atk=80; card_base_def=70;
		card_grid_x=8; card_grid_y=5; break;
	case 043:
		card_name="Oddish";
		card_stage=1; card_evo[0]=044;
		card_type_a=01; card_type_b=12;
		card_base_hp=45; card_base_atk=50; card_base_def=55;
		card_grid_x=9; card_grid_y=5; break;
	case 044:
		card_name="Gloom";
		card_stage=2; card_evo[0]=045; card_evo[1]=182;
		card_type_a=01; card_type_b=12;
		card_base_hp=60; card_base_atk=65; card_base_def=70;
		card_grid_x=10; card_grid_y=5; break;
	case 045:
		card_name="Vileplume";
		card_stage=3;
		card_type_a=01; card_type_b=12;
		card_base_hp=75; card_base_atk=80; card_base_def=85;
		card_grid_x=11; card_grid_y=5; break;
	case 046:
		card_name="Paras";
		card_stage=1; card_evo[0]=047;
		card_type_a=11; card_type_b=01;
		card_base_hp=35; card_base_atk=70; card_base_def=55;
		card_grid_x=12; card_grid_y=5; break;
	case 047:
		card_name="Parasect";
		card_stage=2;
		card_type_a=11; card_type_b=01;
		card_base_hp=60; card_base_atk=95; card_base_def=80;
		card_grid_x=13; card_grid_y=5; break;
	case 048:
		card_name="Venonat";
		card_stage=1; card_evo[0]=049;
		card_type_a=11; card_type_b=12;
		card_base_hp=60; card_base_atk=55; card_base_def=50;
		card_grid_x=14; card_grid_y=5; break;
	case 049:
		card_name="Venomoth";
		card_stage=2;
		card_type_a=11; card_type_b=12;
		card_base_hp=70; card_base_atk=65; card_base_def=60;
		card_grid_x=15; card_grid_y=5; break;
	case 050:
		card_name="Diglett";
		card_stage=1; card_evo[0]=051;
		card_type_a=09; card_type_b=-1;
		card_base_hp=10; card_base_atk=55; card_base_def=25;
		card_grid_x=1; card_grid_y=6; break;
	case 051:
		card_name="Dugtrio";
		card_stage=2;
		card_type_a=09; card_type_b=-1;
		card_base_hp=35; card_base_atk=100; card_base_def=50;
		card_grid_x=3; card_grid_y=6; break;
	case 052:
		card_name="Meowth";
		card_stage=1; card_evo[0]=053;
		card_type_a=00; card_type_b=-1;
		card_base_hp=40; card_base_atk=45; card_base_def=35;
		card_grid_x=6; card_grid_y=6; break;
	case 053:
		card_name="Persian";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=65; card_base_atk=70; card_base_def=60;
		card_grid_x=8; card_grid_y=6; break;
	case 054:
		card_name="Psyduck";
		card_stage=1; card_evo[0]=055;
		card_type_a=03; card_type_b=-1;
		card_base_hp=50; card_base_atk=52; card_base_def=48;
		card_grid_x=10; card_grid_y=6; break;
	case 055:
		card_name="Golduck";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=80; card_base_atk=82; card_base_def=78;
		card_grid_x=11; card_grid_y=6; break;
	case 056:
		card_name="Mankey";
		card_stage=1; card_evo[0]=057;
		card_type_a=06; card_type_b=-1;
		card_base_hp=40; card_base_atk=80; card_base_def=35;
		card_grid_x=12; card_grid_y=6; break;
	case 057:
		card_name="Primeape";
		card_stage=2;
		card_type_a=06; card_type_b=-1;
		card_base_hp=65; card_base_atk=105; card_base_def=60;
		card_grid_x=13; card_grid_y=6; break;
	case 058:
		card_name="Growlithe";
		card_stage=1; card_evo[0]=059;
		card_type_a=02; card_type_b=-1;
		card_base_hp=55; card_base_atk=70; card_base_def=45;
		card_grid_x=14; card_grid_y=6; break;
	case 059:
		card_name="Arcanine";
		card_stage=2;
		card_type_a=02; card_type_b=-1;
		card_base_hp=90; card_base_atk=110; card_base_def=80;
		card_grid_x=15; card_grid_y=6; break;
	case 060:
		card_name="Poliwag";
		card_stage=1; card_evo[0]=061;
		card_type_a=03; card_type_b=-1;
		card_base_hp=40; card_base_atk=50; card_base_def=40;
		card_grid_x=1; card_grid_y=7; break;
	case 061:
		card_name="Poliwhirl";
		card_stage=2; card_evo[0]=062; card_evo[1]=186;
		card_type_a=03; card_type_b=-1;
		card_base_hp=65; card_base_atk=65; card_base_def=65;
		card_grid_x=2; card_grid_y=7; break;
	case 062:
		card_name="Poliwrath";
		card_stage=3;
		card_type_a=03; card_type_b=06;
		card_base_hp=90; card_base_atk=95; card_base_def=95;
		card_grid_x=4; card_grid_y=7; break;
	case 063:
		card_name="Abra";
		card_stage=1; card_evo[0]=064;
		card_type_a=07; card_type_b=-1;
		card_base_hp=25; card_base_atk=20; card_base_def=15;
		card_grid_x=6; card_grid_y=7; break;
	case 064:
		card_name="Kadabra";
		card_stage=2; card_evo[0]=065;
		card_type_a=07; card_type_b=-1;
		card_base_hp=40; card_base_atk=35; card_base_def=30;
		card_grid_x=7; card_grid_y=7; break;
	case 065:
		card_name="Alakazam";
		card_stage=3;
		card_type_a=07; card_type_b=-1;
		card_base_hp=55; card_base_atk=50; card_base_def=45;
		card_grid_x=8; card_grid_y=7; break;
	case 066:
		card_name="Machop";
		card_stage=1; card_evo[0]=067;
		card_type_a=06; card_type_b=-1;
		card_base_hp=70; card_base_atk=80; card_base_def=50;
		card_grid_x=10; card_grid_y=7; break;
	case 067:
		card_name="Machoke";
		card_stage=2; card_evo[0]=068;
		card_type_a=06; card_type_b=-1;
		card_base_hp=80; card_base_atk=100; card_base_def=70;
		card_grid_x=11; card_grid_y=7; break;
	case 068:
		card_name="Machamp";
		card_stage=3;
		card_type_a=06; card_type_b=-1;
		card_base_hp=90; card_base_atk=130; card_base_def=80;
		card_grid_x=12; card_grid_y=7; break;
	case 069:
		card_name="Bellsprout";
		card_stage=1; card_evo[0]=070;
		card_type_a=01; card_type_b=12;
		card_base_hp=50; card_base_atk=75; card_base_def=35;
		card_grid_x=13; card_grid_y=7; break;
	case 070:
		card_name="Weepinbell";
		card_stage=2; card_evo[0]=071;
		card_type_a=01; card_type_b=12;
		card_base_hp=65; card_base_atk=90; card_base_def=50;
		card_grid_x=14; card_grid_y=7; break;
	case 071:
		card_name="Victreebel";
		card_stage=3;
		card_type_a=01; card_type_b=12;
		card_base_hp=80; card_base_atk=105; card_base_def=65;
		card_grid_x=15; card_grid_y=7; break;
	case 072:
		card_name="Tentacool";
		card_stage=1; card_evo[0]=073;
		card_type_a=03; card_type_b=12;
		card_base_hp=40; card_base_atk=40; card_base_def=35;
		card_grid_x=1; card_grid_y=8; break;
	case 073:
		card_name="Tentacruel";
		card_stage=2;
		card_type_a=03; card_type_b=12;
		card_base_hp=80; card_base_atk=70; card_base_def=65;
		card_grid_x=2; card_grid_y=8; break;
	case 074:
		card_name="Geodude";
		card_stage=1; card_evo[0]=075;
		card_type_a=10; card_type_b=09;
		card_base_hp=40; card_base_atk=80; card_base_def=100;
		card_grid_x=3; card_grid_y=8; break;
	case 075:
		card_name="Graveler";
		card_stage=2; card_evo[0]=076;
		card_type_a=10; card_type_b=09;
		card_base_hp=55; card_base_atk=95; card_base_def=115;
		card_grid_x=5; card_grid_y=8; break;
	case 076:
		card_name="Golem";
		card_stage=3;
		card_type_a=10; card_type_b=09;
		card_base_hp=80; card_base_atk=120; card_base_def=130;
		card_grid_x=7; card_grid_y=8; break;
	case 077:
		card_name="Ponyta";
		card_stage=1; card_evo[0]=078;
		card_type_a=02; card_type_b=-1;
		card_base_hp=50; card_base_atk=85; card_base_def=55;
		card_grid_x=9; card_grid_y=8; break;
	case 078:
		card_name="Rapidash";
		card_stage=2;
		card_type_a=02; card_type_b=-1;
		card_base_hp=65; card_base_atk=100; card_base_def=70;
		card_grid_x=10; card_grid_y=8; break;
	case 079:
		card_name="Slowpoke";
		card_stage=1; card_evo[0]=080; card_evo[1]=199;
		card_type_a=03; card_type_b=07;
		card_base_hp=90; card_base_atk=65; card_base_def=65;
		card_grid_x=11; card_grid_y=8; break;
	case 080:
		card_name="Slowbro";
		card_stage=2;
		card_type_a=03; card_type_b=07;
		card_base_hp=95; card_base_atk=75; card_base_def=110;
		card_grid_x=12; card_grid_y=8; break;
	case 081:
		card_name="Magnemite";
		card_stage=1; card_evo[0]=082;
		card_type_a=04; card_type_b=15;
		card_base_hp=23; card_base_atk=35; card_base_def=70;
		card_grid_x=14; card_grid_y=8; break;
	case 082:
		card_name="Magneton";
		card_stage=2; card_evo[0]=462;
		card_type_a=04; card_type_b=15;
		card_base_hp=50; card_base_atk=60; card_base_def=95;
		card_grid_x=15; card_grid_y=8; break;
	case 083:
		card_name="Farfetch'd";
		card_stage=1; card_evo[0]=865;
		card_type_a=00; card_type_b=05;
		card_base_hp=52; card_base_atk=90; card_base_def=55;
		card_grid_x=1; card_grid_y=9; break;
	case 084:
		card_name="Doduo";
		card_stage=1; card_evo[0]=085;
		card_type_a=00; card_type_b=05;
		card_base_hp=35; card_base_atk=85; card_base_def=45;
		card_grid_x=2; card_grid_y=9; break;
	case 085:
		card_name="Dodrio";
		card_stage=2;
		card_type_a=00; card_type_b=05;
		card_base_hp=60; card_base_atk=110; card_base_def=70;
		card_grid_x=3; card_grid_y=9; break;
	case 086:
		card_name="Seel";
		card_stage=1; card_evo[0]=087;
		card_type_a=03; card_type_b=-1;
		card_base_hp=65; card_base_atk=45; card_base_def=55;
		card_grid_x=4; card_grid_y=9; break;
	case 087:
		card_name="Dewgong";
		card_stage=2;
		card_type_a=03; card_type_b=13;
		card_base_hp=90; card_base_atk=70; card_base_def=80;
		card_grid_x=5; card_grid_y=9; break;
	case 088:
		card_name="Grimer";
		card_stage=1; card_evo[0]=089;
		card_type_a=12; card_type_b=-1;
		card_base_hp=80; card_base_atk=80; card_base_def=50;
		card_grid_x=6; card_grid_y=9; break;
	case 089:
		card_name="Muk";
		card_stage=2;
		card_type_a=12; card_type_b=-1;
		card_base_hp=105; card_base_atk=105; card_base_def=75;
		card_grid_x=8; card_grid_y=9; break;
	case 090:
		card_name="Shellder";
		card_stage=1; card_evo[0]=091;
		card_type_a=03; card_type_b=-1;
		card_base_hp=30; card_base_atk=65; card_base_def=100;
		card_grid_x=11; card_grid_y=9; break;
	case 091:
		card_name="Cloyster";
		card_stage=2;
		card_type_a=03; card_type_b=13;
		card_base_hp=50; card_base_atk=95; card_base_def=180;
		card_grid_x=12; card_grid_y=9; break;
	case 092:
		card_name="Gastly";
		card_stage=1; card_evo[0]=093;
		card_type_a=16; card_type_b=12;
		card_base_hp=30; card_base_atk=35; card_base_def=30;
		card_grid_x=13; card_grid_y=9; break;
	case 093:
		card_name="Haunter";
		card_stage=2; card_evo[0]=094;
		card_type_a=16; card_type_b=12;
		card_base_hp=45; card_base_atk=50; card_base_def=45;
		card_grid_x=14; card_grid_y=9; break;
	case 094:
		card_name="Gengar";
		card_stage=3;
		card_type_a=16; card_type_b=12;
		card_base_hp=60; card_base_atk=65; card_base_def=60;
		card_grid_x=15; card_grid_y=9; break;
	case 095:
		card_name="Onix";
		card_stage=1; card_evo[0]=208;
		card_type_a=10; card_type_b=09;
		card_base_hp=35; card_base_atk=45; card_base_def=160;
		card_grid_x=2; card_grid_y=10; break;
	case 096:
		card_name="Drowzee";
		card_stage=1; card_evo[0]=097;
		card_type_a=07; card_type_b=-1;
		card_base_hp=60; card_base_atk=48; card_base_def=45;
		card_grid_x=3; card_grid_y=10; break;
	case 097:
		card_name="Hypno";
		card_stage=2;
		card_type_a=07; card_type_b=-1;
		card_base_hp=85; card_base_atk=73; card_base_def=70;
		card_grid_x=4; card_grid_y=10; break;
	case 098:
		card_name="Krabby";
		card_stage=1; card_evo[0]=099;
		card_type_a=03; card_type_b=-1;
		card_base_hp=30; card_base_atk=105; card_base_def=90;
		card_grid_x=5; card_grid_y=10; break;
	case 099:
		card_name="Kingler";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=55; card_base_atk=130; card_base_def=115;
		card_grid_x=6; card_grid_y=10; break;
	case 100:
		card_name="Voltorb";
		card_stage=1; card_evo[0]=101;
		card_type_a=04; card_type_b=-1;
		card_base_hp=40; card_base_atk=30; card_base_def=50;
		card_grid_x=8; card_grid_y=10; break;
	case 101:
		card_name="Electrode";
		card_stage=2;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=50; card_base_def=70;
		card_grid_x=9; card_grid_y=10; break;
	case 102:
		card_name="Exeggcute";
		card_stage=1; card_evo[0]=103;
		card_type_a=01; card_type_b=07;
		card_base_hp=60; card_base_atk=40; card_base_def=80;
		card_grid_x=10; card_grid_y=10; break;
	case 103:
		card_name="Exeggutor";
		card_stage=2;
		card_type_a=01; card_type_b=07;
		card_base_hp=95; card_base_atk=95; card_base_def=85;
		card_grid_x=11; card_grid_y=10; break;
	case 104:
		card_name="Cubone";
		card_stage=1; card_evo[0]=105;
		card_type_a=09; card_type_b=-1;
		card_base_hp=50; card_base_atk=50; card_base_def=95;
		card_grid_x=13; card_grid_y=10; break;
	case 105:
		card_name="Marowak";
		card_stage=2;
		card_type_a=09; card_type_b=-1;
		card_base_hp=60; card_base_atk=80; card_base_def=110;
		card_grid_x=14; card_grid_y=10; break;
	case 106:
		card_name="Hitmonlee";
		card_stage=1;
		card_type_a=06; card_type_b=-1;
		card_base_hp=50; card_base_atk=120; card_base_def=53;
		card_grid_x=1; card_grid_y=11; break;
	case 107:
		card_name="Hitmonchan";
		card_stage=1;
		card_type_a=06; card_type_b=-1;
		card_base_hp=50; card_base_atk=105; card_base_def=79;
		card_grid_x=2; card_grid_y=11; break;
	case 108:
		card_name="Lickitung";
		card_stage=1; card_evo[0]=463;
		card_type_a=00; card_type_b=-1;
		card_base_hp=90; card_base_atk=55; card_base_def=75;
		card_grid_x=3; card_grid_y=11; break;
	case 109:
		card_name="Koffing";
		card_stage=1; card_evo[0]=110;
		card_type_a=12; card_type_b=-1;
		card_base_hp=40; card_base_atk=65; card_base_def=95;
		card_grid_x=4; card_grid_y=11; break;
	case 110:
		card_name="Weezing";
		card_stage=2;
		card_type_a=12; card_type_b=-1;
		card_base_hp=65; card_base_atk=90; card_base_def=120;
		card_grid_x=5; card_grid_y=11; break;
	case 111:
		card_name="Rhyhorn";
		card_stage=1; card_evo[0]=112;
		card_type_a=09; card_type_b=10;
		card_base_hp=80; card_base_atk=85; card_base_def=95;
		card_grid_x=6; card_grid_y=11; break;
	case 112:
		card_name="Rhydon";
		card_stage=2; card_evo[0]=464;
		card_type_a=09; card_type_b=10;
		card_base_hp=105; card_base_atk=130; card_base_def=120;
		card_grid_x=7; card_grid_y=11; break;
	case 113:
		card_name="Chansey";
		card_stage=1; card_evo[0]=242;
		card_type_a=00; card_type_b=-1;
		card_base_hp=250; card_base_atk=5; card_base_def=5;
		card_grid_x=8; card_grid_y=11; break;
	case 114:
		card_name="Tangela";
		card_stage=1; card_evo[0]=465;
		card_type_a=01; card_type_b=-1;
		card_base_hp=65; card_base_atk=55; card_base_def=115;
		card_grid_x=9; card_grid_y=11; break;
	case 115:
		card_name="Kangaskhan";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=105; card_base_atk=95; card_base_def=80;
		card_grid_x=10; card_grid_y=11; break;
	case 116:
		card_name="Horsea";
		card_stage=1; card_evo[0]=117;
		card_type_a=03; card_type_b=-1;
		card_base_hp=30; card_base_atk=40; card_base_def=70;
		card_grid_x=12; card_grid_y=11; break;
	case 117:
		card_name="Seadra";
		card_stage=2; card_evo[0]=230;
		card_type_a=03; card_type_b=-1;
		card_base_hp=55; card_base_atk=65; card_base_def=95;
		card_grid_x=13; card_grid_y=11; break;
	case 118:
		card_name="Goldeen";
		card_stage=1; card_evo[0]=119;
		card_type_a=03; card_type_b=-1;
		card_base_hp=45; card_base_atk=67; card_base_def=60;
		card_grid_x=14; card_grid_y=11; break;
	case 119:
		card_name="Seaking";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=80; card_base_atk=92; card_base_def=65;
		card_grid_x=15; card_grid_y=11; break;
	case 120:
		card_name="Staryu";
		card_stage=1; card_evo[0]=121;
		card_type_a=03; card_type_b=-1;
		card_base_hp=30; card_base_atk=45; card_base_def=55;
		card_grid_x=1; card_grid_y=12; break;
	case 121:
		card_name="Starmie";
		card_stage=2;
		card_type_a=03; card_type_b=07;
		card_base_hp=60; card_base_atk=75; card_base_def=85;
		card_grid_x=2; card_grid_y=12; break;
	case 122:
		card_name="Mr. Mime";
		card_stage=1;
		card_type_a=07; card_type_b=08;
		card_base_hp=40; card_base_atk=45; card_base_def=65;
		card_grid_x=3; card_grid_y=12; break;
	case 123:
		card_name="Scyther";
		card_stage=1; card_evo[0]=212; card_evo[1]=900;
		card_type_a=11; card_type_b=05;
		card_base_hp=70; card_base_atk=110; card_base_def=80;
		card_grid_x=4; card_grid_y=12; break;
	case 124:
		card_name="Jynx";
		card_stage=1;
		card_type_a=13; card_type_b=07;
		card_base_hp=65; card_base_atk=50; card_base_def=35;
		card_grid_x=5; card_grid_y=12; break;
	case 125:
		card_name="Electabuzz";
		card_stage=1; card_evo[0]=466;
		card_type_a=04; card_type_b=-1;
		card_base_hp=65; card_base_atk=83; card_base_def=57;
		card_grid_x=6; card_grid_y=12; break;
	case 126:
		card_name="Magmar";
		card_stage=1; card_evo[0]=467;
		card_type_a=02; card_type_b=-1;
		card_base_hp=65; card_base_atk=95; card_base_def=57;
		card_grid_x=7; card_grid_y=12; break;
	case 127:
		card_name="Pinsir";
		card_stage=1;
		card_type_a=11; card_type_b=-1;
		card_base_hp=65; card_base_atk=100; card_base_def=100;
		card_grid_x=8; card_grid_y=12; break;
	case 128:
		card_name="Tauros";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=75; card_base_atk=100; card_base_def=95;
		card_grid_x=10; card_grid_y=12; break;
	case 129:
		card_name="Magikarp";
		card_stage=1; card_evo[0]=130;
		card_type_a=03; card_type_b=-1;
		card_base_hp=20; card_base_atk=10; card_base_def=55;
		card_grid_x=11; card_grid_y=12; break;
	case 130:
		card_name="Gyarados";
		card_stage=2;
		card_type_a=03; card_type_b=05;
		card_base_hp=95; card_base_atk=100; card_base_def=79;
		card_grid_x=12; card_grid_y=12; break;
	case 131:
		card_name="Lapras";
		card_stage=1;
		card_type_a=03; card_type_b=13;
		card_base_hp=130; card_base_atk=85; card_base_def=80;
		card_grid_x=14; card_grid_y=12; break;
	case 132:
		card_name="Ditto";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=48; card_base_atk=48; card_base_def=48;
		card_grid_x=15; card_grid_y=12; break;
	case 133:
		card_name="Eevee";
		card_stage=1; card_evo[0]=134; card_evo[1]=135; card_evo[2]=136; card_evo[3]=196; card_evo[4]=197; card_evo[5]=470; card_evo[6]=471; card_evo[7]=700;
		card_type_a=00; card_type_b=-1;
		card_base_hp=55; card_base_atk=55; card_base_def=50;
		card_grid_x=1; card_grid_y=13; break;
	case 134:
		card_name="Vaporeon";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=130; card_base_atk=65; card_base_def=60;
		card_grid_x=2; card_grid_y=13; break;
	case 135:
		card_name="Jolteon";
		card_stage=2;
		card_type_a=04; card_type_b=-1;
		card_base_hp=65; card_base_atk=65; card_base_def=60;
		card_grid_x=3; card_grid_y=13; break;
	case 136:
		card_name="Flareon";
		card_stage=2;
		card_type_a=02; card_type_b=-1;
		card_base_hp=65; card_base_atk=130; card_base_def=60;
		card_grid_x=4; card_grid_y=13; break;
	case 137:
		card_name="Porygon";
		card_stage=1; card_evo[0]=233;
		card_type_a=00; card_type_b=-1;
		card_base_hp=65; card_base_atk=60; card_base_def=70;
		card_grid_x=5; card_grid_y=13; break;
	case 138:
		card_name="Omanyte";
		card_stage=1; card_evo[0]=139; card_fossil=true;
		card_type_a=10; card_type_b=03;
		card_base_hp=35; card_base_atk=40; card_base_def=100;
		card_grid_x=6; card_grid_y=13; break;
	case 139:
		card_name="Omastar";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=03;
		card_base_hp=70; card_base_atk=60; card_base_def=100;
		card_grid_x=7; card_grid_y=13; break;
	case 140:
		card_name="Kabuto";
		card_stage=1; card_evo[0]=141; card_fossil=true;
		card_type_a=10; card_type_b=03;
		card_base_hp=30; card_base_atk=80; card_base_def=90;
		card_grid_x=8; card_grid_y=13; break;
	case 141:
		card_name="Kabutops";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=03;
		card_base_hp=60; card_base_atk=115; card_base_def=105;
		card_grid_x=9; card_grid_y=13; break;
	case 142:
		card_name="Aerodactyl";
		card_stage=1; card_fossil=true;
		card_type_a=10; card_type_b=05;
		card_base_hp=80; card_base_atk=105; card_base_def=65;
		card_grid_x=10; card_grid_y=13; break;
	case 143:
		card_name="Snorlax";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=160; card_base_atk=110; card_base_def=65;
		card_grid_x=12; card_grid_y=13; break;
	case 144:
		card_name="Articuno";
		card_stage=1; card_enigma=true;
		card_type_a=13; card_type_b=05;
		card_base_hp=90; card_base_atk=85; card_base_def=100;
		card_grid_x=13; card_grid_y=13; break;
	case 145:
		card_name="Zapdos";
		card_stage=1; card_enigma=true;
		card_type_a=04; card_type_b=05;
		card_base_hp=90; card_base_atk=90; card_base_def=85;
		card_grid_x=14; card_grid_y=13; break;
	case 146:
		card_name="Moltres";
		card_stage=1; card_enigma=true;
		card_type_a=02; card_type_b=05;
		card_base_hp=90; card_base_atk=100; card_base_def=90;
		card_grid_x=15; card_grid_y=13; break;
	case 147:
		card_name="Dratini";
		card_stage=1; card_evo[0]=148; card_pseudo=true;
		card_type_a=14; card_type_b=-1;
		card_base_hp=41; card_base_atk=64; card_base_def=45;
		card_grid_x=1; card_grid_y=14; break;
	case 148:
		card_name="Dragonair";
		card_stage=2; card_evo[0]=149; card_pseudo=true;
		card_type_a=14; card_type_b=-1;
		card_base_hp=61; card_base_atk=84; card_base_def=65;
		card_grid_x=2; card_grid_y=14; break;
	case 149:
		card_name="Dragonite";
		card_stage=3; card_pseudo=true;
		card_type_a=14; card_type_b=05;
		card_base_hp=91; card_base_atk=134; card_base_def=95;
		card_grid_x=3; card_grid_y=14; break;
	case 150:
		card_name="Mewtwo";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=106; card_base_atk=110; card_base_def=90;
		card_grid_x=4; card_grid_y=14; break;
	case 151:
		card_name="Mew";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=100; card_base_atk=100; card_base_def=100;
		card_grid_x=7; card_grid_y=14; break;
	//
	case 152:
		card_name="Chikorita";
		card_stage=1; card_evo[0]=153; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=45; card_base_atk=49; card_base_def=65;
		card_grid_x=1; card_grid_y=15; break;
	case 153:
		card_name="Bayleef";
		card_stage=2; card_evo[0]=154; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=60; card_base_atk=62; card_base_def=80;
		card_grid_x=2; card_grid_y=15; break;
	case 154:
		card_name="Meganium";
		card_stage=3; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=80; card_base_atk=82; card_base_def=100;
		card_grid_x=3; card_grid_y=15; break;
	case 155:
		card_name="Cyndaquil";
		card_stage=1; card_evo[0]=156; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=39; card_base_atk=52; card_base_def=43;
		card_grid_x=4; card_grid_y=15; break;
	case 156:
		card_name="Quilava";
		card_stage=2; card_evo[0]=157; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=58; card_base_atk=64; card_base_def=58;
		card_grid_x=5; card_grid_y=15; break;
	case 157:
		card_name="Typhlosion";
		card_stage=3; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=78; card_base_atk=84; card_base_def=78;
		card_grid_x=6; card_grid_y=15; break;
	case 158:
		card_name="Totodile";
		card_stage=1; card_evo[0]=159; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=50; card_base_atk=65; card_base_def=64;
		card_grid_x=7; card_grid_y=15; break;
	case 159:
		card_name="Croconaw";
		card_stage=2; card_evo[0]=160; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=65; card_base_atk=80; card_base_def=80;
		card_grid_x=8; card_grid_y=15; break;
	case 160:
		card_name="Feraligatr";
		card_stage=3; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=85; card_base_atk=105; card_base_def=100;
		card_grid_x=10; card_grid_y=15; break;
	case 161:
		card_name="Sentret";
		card_stage=1; card_evo[0]=162;
		card_type_a=00; card_type_b=-1;
		card_base_hp=35; card_base_atk=46; card_base_def=34;
		card_grid_x=11; card_grid_y=15; break;
	case 162:
		card_name="Furret";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=85; card_base_atk=76; card_base_def=64;
		card_grid_x=12; card_grid_y=15; break;
	case 163:
		card_name="Hoothoot";
		card_stage=1; card_evo[0]=164;
		card_type_a=00; card_type_b=05;
		card_base_hp=60; card_base_atk=30; card_base_def=30;
		card_grid_x=13; card_grid_y=15; break;
	case 164:
		card_name="Noctowl";
		card_stage=2;
		card_type_a=00; card_type_b=05;
		card_base_hp=100; card_base_atk=50; card_base_def=50;
		card_grid_x=14; card_grid_y=15; break;
	case 165:
		card_name="Ledyba";
		card_stage=1; card_evo[0]=166;
		card_type_a=11; card_type_b=05;
		card_base_hp=40; card_base_atk=20; card_base_def=30;
		card_grid_x=15; card_grid_y=15; break;
	case 166:
		card_name="Ledian";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=55; card_base_atk=35; card_base_def=50;
		card_grid_x=1; card_grid_y=16; break;
	case 167:
		card_name="Spinarak";
		card_stage=1; card_evo[0]=168;
		card_type_a=11; card_type_b=12;
		card_base_hp=40; card_base_atk=60; card_base_def=40;
		card_grid_x=2; card_grid_y=16; break;
	case 168:
		card_name="Ariados";
		card_stage=2;
		card_type_a=11; card_type_b=12;
		card_base_hp=70; card_base_atk=90; card_base_def=70;
		card_grid_x=3; card_grid_y=16; break;
	case 169:
		card_name="Crobat";
		card_stage=3;
		card_type_a=12; card_type_b=05;
		card_base_hp=85; card_base_atk=90; card_base_def=80;
		card_grid_x=4; card_grid_y=16; break;
	case 170:
		card_name="Chinchou";
		card_stage=1; card_evo[0]=171;
		card_type_a=03; card_type_b=04;
		card_base_hp=75; card_base_atk=38; card_base_def=38;
		card_grid_x=5; card_grid_y=16; break;
	case 171:
		card_name="Lanturn";
		card_stage=2;
		card_type_a=03; card_type_b=04;
		card_base_hp=100; card_base_atk=58; card_base_def=58;
		card_grid_x=6; card_grid_y=16; break;
	case 172:
		card_name="Pichu";
		card_stage=0; card_evo[0]=025;
		card_type_a=04; card_type_b=-1;
		card_base_hp=20; card_base_atk=40; card_base_def=15;
		card_grid_x=7; card_grid_y=16; break;
	case 173:
		card_name="Cleffa";
		card_stage=0; card_evo[0]=035;
		card_type_a=08; card_type_b=-1;
		card_base_hp=50; card_base_atk=25; card_base_def=28;
		card_grid_x=8; card_grid_y=16; break;
	case 174:
		card_name="Igglybuff";
		card_stage=0; card_evo[0]=039;
		card_type_a=00; card_type_b=08;
		card_base_hp=90; card_base_atk=30; card_base_def=15;
		card_grid_x=10; card_grid_y=16; break;
	case 175:
		card_name="Togepi";
		card_stage=0; card_evo[0]=176;
		card_type_a=08; card_type_b=-1;
		card_base_hp=35; card_base_atk=20; card_base_def=65;
		card_grid_x=12; card_grid_y=16; break;
	case 176:
		card_name="Togetic";
		card_stage=1; card_evo[0]=468;
		card_type_a=08; card_type_b=05;
		card_base_hp=55; card_base_atk=40; card_base_def=85;
		card_grid_x=13; card_grid_y=16; break;
	case 177:
		card_name="Natu";
		card_stage=1; card_evo[0]=178;
		card_type_a=07; card_type_b=05;
		card_base_hp=40; card_base_atk=50; card_base_def=45;
		card_grid_x=14; card_grid_y=16; break;
	case 178:
		card_name="Xatu";
		card_stage=2;
		card_type_a=07; card_type_b=05;
		card_base_hp=65; card_base_atk=75; card_base_def=70;
		card_grid_x=15; card_grid_y=16; break;
	case 179:
		card_name="Mareep";
		card_stage=1; card_evo[0]=180;
		card_type_a=04; card_type_b=-1;
		card_base_hp=55; card_base_atk=40; card_base_def=40;
		card_grid_x=1; card_grid_y=17; break;
	case 180:
		card_name="Flaaffy";
		card_stage=2; card_evo[0]=181;
		card_type_a=04; card_type_b=-1;
		card_base_hp=70; card_base_atk=55; card_base_def=55;
		card_grid_x=2; card_grid_y=17; break;
	case 181:
		card_name="Ampharos";
		card_stage=3;
		card_type_a=04; card_type_b=-1;
		card_base_hp=90; card_base_atk=75; card_base_def=85;
		card_grid_x=3; card_grid_y=17; break;
	case 182:
		card_name="Bellossom";
		card_stage=3;
		card_type_a=01; card_type_b=-1;
		card_base_hp=75; card_base_atk=80; card_base_def=95;
		card_grid_x=5; card_grid_y=17; break;
	case 183:
		card_name="Marill";
		card_stage=1; card_evo[0]=184;
		card_type_a=03; card_type_b=08;
		card_base_hp=70; card_base_atk=20; card_base_def=50;
		card_grid_x=6; card_grid_y=17; break;
	case 184:
		card_name="Azumarill";
		card_stage=2;
		card_type_a=03; card_type_b=08;
		card_base_hp=100; card_base_atk=50; card_base_def=80;
		card_grid_x=7; card_grid_y=17; break;
	case 185:
		card_name="Sudowoodo";
		card_stage=1;
		card_type_a=10; card_type_b=-1;
		card_base_hp=70; card_base_atk=100; card_base_def=115;
		card_grid_x=8; card_grid_y=17; break;
	case 186:
		card_name="Politoed";
		card_stage=3;
		card_type_a=03; card_type_b=-1;
		card_base_hp=90; card_base_atk=75; card_base_def=75;
		card_grid_x=9; card_grid_y=17; break;
	case 187:
		card_name="Hoppip";
		card_stage=1; card_evo[0]=188;
		card_type_a=01; card_type_b=05;
		card_base_hp=35; card_base_atk=35; card_base_def=40;
		card_grid_x=11; card_grid_y=17; break;
	case 188:
		card_name="Skiploom";
		card_stage=2; card_evo[0]=189;
		card_type_a=01; card_type_b=05;
		card_base_hp=55; card_base_atk=45; card_base_def=50;
		card_grid_x=12; card_grid_y=17; break;
	case 189:
		card_name="Jumpluff";
		card_stage=3;
		card_type_a=01; card_type_b=05;
		card_base_hp=75; card_base_atk=55; card_base_def=70;
		card_grid_x=13; card_grid_y=17; break;
	case 190:
		card_name="Aipom";
		card_stage=1; card_evo[0]=424;
		card_type_a=00; card_type_b=-1;
		card_base_hp=55; card_base_atk=70; card_base_def=55;
		card_grid_x=14; card_grid_y=17; break;
	case 191:
		card_name="Sunkern";
		card_stage=1; card_evo[0]=192;
		card_type_a=01; card_type_b=-1;
		card_base_hp=30; card_base_atk=30; card_base_def=30;
		card_grid_x=15; card_grid_y=17; break;
	case 192:
		card_name="Sunflora";
		card_stage=2;
		card_type_a=01; card_type_b=-1;
		card_base_hp=75; card_base_atk=75; card_base_def=55;
		card_grid_x=1; card_grid_y=18; break;
	case 193:
		card_name="Yanma";
		card_stage=1; card_evo[0]=469;
		card_type_a=11; card_type_b=05;
		card_base_hp=65; card_base_atk=65; card_base_def=45;
		card_grid_x=2; card_grid_y=18; break;
	case 194:
		card_name="Wooper";
		card_stage=1; card_evo[0]=195;
		card_type_a=03; card_type_b=09;
		card_base_hp=55; card_base_atk=45; card_base_def=45;
		card_grid_x=3; card_grid_y=18; break;
	case 195:
		card_name="Quagsire";
		card_stage=2;
		card_type_a=03; card_type_b=09;
		card_base_hp=95; card_base_atk=85; card_base_def=85;
		card_grid_x=4; card_grid_y=18; break;
	case 196:
		card_name="Espeon";
		card_stage=2;
		card_type_a=07; card_type_b=-1;
		card_base_hp=65; card_base_atk=65; card_base_def=60;
		card_grid_x=5; card_grid_y=18; break;
	case 197:
		card_name="Umbreon";
		card_stage=2;
		card_type_a=17; card_type_b=-1;
		card_base_hp=95; card_base_atk=65; card_base_def=110;
		card_grid_x=6; card_grid_y=18; break;
	case 198:
		card_name="Murkrow";
		card_stage=1; card_evo[0]=430;
		card_type_a=17; card_type_b=05;
		card_base_hp=60; card_base_atk=85; card_base_def=42;
		card_grid_x=7; card_grid_y=18; break;
	case 199:
		card_name="Slowking";
		card_stage=2;
		card_type_a=03; card_type_b=07;
		card_base_hp=95; card_base_atk=75; card_base_def=80;
		card_grid_x=8; card_grid_y=18; break;
	case 200:
		card_name="Misdreavus";
		card_stage=1; card_evo[0]=429;
		card_type_a=16; card_type_b=-1;
		card_base_hp=60; card_base_atk=60; card_base_def=60;
		card_grid_x=9; card_grid_y=18; break;
	case 201:
		card_name="Unown";
		card_stage=1;
		card_type_a=07; card_type_b=-1;
		card_base_hp=48; card_base_atk=72; card_base_def=48;
		if card_form_value<38 { card_grid_x=10; card_grid_y=18; }
		else if card_form_value<76 { card_grid_x=11; card_grid_y=18; }
		else if card_form_value<114 { card_grid_x=13; card_grid_y=18; }
		else if card_form_value<152 { card_grid_x=15; card_grid_y=18; }
		else if card_form_value<190 { card_grid_x=2; card_grid_y=19; }
		else if card_form_value<228 { card_grid_x=4; card_grid_y=19; }
		else if card_form_value<266 { card_grid_x=6; card_grid_y=19; }
		else if card_form_value<304 { card_grid_x=8; card_grid_y=19; }
		else if card_form_value<342 { card_grid_x=10; card_grid_y=19; }
		else if card_form_value<380 { card_grid_x=11; card_grid_y=19; }
		else if card_form_value<418 { card_grid_x=13; card_grid_y=19; }
		else if card_form_value<456 { card_grid_x=15; card_grid_y=19; }
		else if card_form_value<494 { card_grid_x=2; card_grid_y=20; }
		else if card_form_value<532 { card_grid_x=3; card_grid_y=20; }
		else if card_form_value<570 { card_grid_x=5; card_grid_y=20; }
		else if card_form_value<608 { card_grid_x=6; card_grid_y=20; }
		else if card_form_value<646 { card_grid_x=8; card_grid_y=20; }
		else if card_form_value<684 { card_grid_x=10; card_grid_y=20; }
		else if card_form_value<722 { card_grid_x=12; card_grid_y=20; }
		else if card_form_value<760 { card_grid_x=14; card_grid_y=20; }
		else if card_form_value<798 { card_grid_x=15; card_grid_y=20; }
		else if card_form_value<836 { card_grid_x=1; card_grid_y=21; }
		else if card_form_value<874 { card_grid_x=3; card_grid_y=21; }
		else if card_form_value<912 { card_grid_x=4; card_grid_y=21; }
		else if card_form_value<950 { card_grid_x=5; card_grid_y=21; }
		else if card_form_value<988 { card_grid_x=6; card_grid_y=21; }
		else if card_form_value<994 { card_grid_x=8; card_grid_y=21; }
		else if card_form_value<1000 { card_grid_x=9; card_grid_y=21; }
		break;
	case 202:
		card_name="Wobbuffet";
		card_stage=1;
		card_type_a=07; card_type_b=-1;
		card_base_hp=190; card_base_atk=33; card_base_def=58;
		card_grid_x=11; card_grid_y=21; break;
	case 203:
		card_name="Girafarig";
		card_stage=1;
		card_type_a=00; card_type_b=07;
		card_base_hp=70; card_base_atk=80; card_base_def=65;
		card_grid_x=12; card_grid_y=21; break;
	case 204:
		card_name="Pineco";
		card_stage=1; card_evo[0]=205;
		card_type_a=11; card_type_b=-1;
		card_base_hp=50; card_base_atk=65; card_base_def=90;
		card_grid_x=13; card_grid_y=21; break;
	case 205:
		card_name="Forretress";
		card_stage=2;
		card_type_a=11; card_type_b=15;
		card_base_hp=75; card_base_atk=90; card_base_def=140;
		card_grid_x=14; card_grid_y=21; break;
	case 206:
		card_name="Dunsparce";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=100; card_base_atk=70; card_base_def=70;
		card_grid_x=15; card_grid_y=21; break;
	case 207:
		card_name="Gligar";
		card_stage=1; card_evo[0]=472;
		card_type_a=09; card_type_b=05;
		card_base_hp=65; card_base_atk=75; card_base_def=105;
		card_grid_x=1; card_grid_y=22; break;
	case 208:
		card_name="Steelix";
		card_stage=2;
		card_type_a=15; card_type_b=09;
		card_base_hp=75; card_base_atk=85; card_base_def=20;
		card_grid_x=2; card_grid_y=22; break;
	case 209:
		card_name="Snubbull";
		card_stage=1; card_evo[0]=210;
		card_type_a=08; card_type_b=-1;
		card_base_hp=60; card_base_atk=80; card_base_def=50;
		card_grid_x=4; card_grid_y=22; break;
	case 210:
		card_name="Granbull";
		card_stage=2;
		card_type_a=08; card_type_b=-1;
		card_base_hp=90; card_base_atk=120; card_base_def=75;
		card_grid_x=5; card_grid_y=22; break;
	case 211:
		card_name="Qwilfish";
		card_stage=1;
		card_type_a=03; card_type_b=12;
		card_base_hp=65; card_base_atk=95; card_base_def=85;
		card_grid_x=6; card_grid_y=22; break;
	case 212:
		card_name="Scizor";
		card_stage=2;
		card_type_a=11; card_type_b=15;
		card_base_hp=70; card_base_atk=130; card_base_def=100;
		card_grid_x=7; card_grid_y=22; break;
	case 213:
		card_name="Shuckle";
		card_stage=1;
		card_type_a=11; card_type_b=10;
		card_base_hp=20; card_base_atk=10; card_base_def=230;
		card_grid_x=9; card_grid_y=22; break;
	case 214:
		card_name="Heracross";
		card_stage=1;
		card_type_a=11; card_type_b=06;
		card_base_hp=80; card_base_atk=100; card_base_def=75;
		card_grid_x=10; card_grid_y=22; break;
	case 215:
		card_name="Sneasel";
		card_stage=1; card_evo[0]=461;
		card_type_a=17; card_type_b=13;
		card_base_hp=55; card_base_atk=95; card_base_def=55;
		card_grid_x=12; card_grid_y=22; break;
	case 216:
		card_name="Teddiursa";
		card_stage=1; card_evo[0]=217;
		card_type_a=00; card_type_b=-1;
		card_base_hp=60; card_base_atk=80; card_base_def=50;
		card_grid_x=14; card_grid_y=22; break;
	case 217:
		card_name="Ursaring";
		card_stage=2; card_evo[0]=901;
		card_type_a=00; card_type_b=-1;
		card_base_hp=90; card_base_atk=130; card_base_def=75;
		card_grid_x=1; card_grid_y=23; break;
	case 218:
		card_name="Slugma";
		card_stage=1; card_evo[0]=219;
		card_type_a=02; card_type_b=-1;
		card_base_hp=40; card_base_atk=40; card_base_def=40;
		card_grid_x=2; card_grid_y=23; break;
	case 219:
		card_name="Magcargo";
		card_stage=2;
		card_type_a=02; card_type_b=10;
		card_base_hp=60; card_base_atk=50; card_base_def=120;
		card_grid_x=3; card_grid_y=23; break;
	case 220:
		card_name="Swinub";
		card_stage=1; card_evo[0]=221;
		card_type_a=13; card_type_b=09;
		card_base_hp=50; card_base_atk=50; card_base_def=40;
		card_grid_x=4; card_grid_y=23; break;
	case 221:
		card_name="Piloswine";
		card_stage=2; card_evo[0]=473;
		card_type_a=13; card_type_b=09;
		card_base_hp=100; card_base_atk=100; card_base_def=80;
		card_grid_x=5; card_grid_y=23; break;
	case 222:
		card_name="Corsola";
		card_stage=1;
		card_type_a=03; card_type_b=10;
		card_base_hp=65; card_base_atk=55; card_base_def=95;
		card_grid_x=6; card_grid_y=23; break;
	case 223:
		card_name="Remoraid";
		card_stage=1; card_evo[0]=224;
		card_type_a=03; card_type_b=-1;
		card_base_hp=35; card_base_atk=65; card_base_def=35;
		card_grid_x=7; card_grid_y=23; break;
	case 224:
		card_name="Octillery";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=75; card_base_atk=105; card_base_def=75;
		card_grid_x=8; card_grid_y=23; break;
	case 225:
		card_name="Delibird";
		card_stage=1;
		card_type_a=13; card_type_b=05;
		card_base_hp=45; card_base_atk=55; card_base_def=45;
		card_grid_x=9; card_grid_y=23; break;
	case 226:
		card_name="Mantine";
		card_stage=1;
		card_type_a=03; card_type_b=05;
		card_base_hp=85; card_base_atk=40; card_base_def=70;
		card_grid_x=10; card_grid_y=23; break;
	case 227:
		card_name="Skarmory";
		card_stage=1;
		card_type_a=15; card_type_b=05;
		card_base_hp=65; card_base_atk=80; card_base_def=140;
		card_grid_x=11; card_grid_y=23; break;
	case 228:
		card_name="Houndour";
		card_stage=1; card_evo[0]=229;
		card_type_a=17; card_type_b=02;
		card_base_hp=45; card_base_atk=60; card_base_def=30;
		card_grid_x=12; card_grid_y=23; break;
	case 229:
		card_name="Houndoom";
		card_stage=2;
		card_type_a=17; card_type_b=02;
		card_base_hp=75; card_base_atk=90; card_base_def=50;
		card_grid_x=13; card_grid_y=23; break;
	case 230:
		card_name="Kingdra";
		card_stage=3;
		card_type_a=03; card_type_b=14;
		card_base_hp=75; card_base_atk=95; card_base_def=95;
		card_grid_x=15; card_grid_y=23; break;
	case 231:
		card_name="Phanpy";
		card_stage=1; card_evo[0]=232;
		card_type_a=09; card_type_b=-1;
		card_base_hp=90; card_base_atk=60; card_base_def=60;
		card_grid_x=1; card_grid_y=24; break;
	case 232:
		card_name="Donphan";
		card_stage=2;
		card_type_a=09; card_type_b=-1;
		card_base_hp=90; card_base_atk=120; card_base_def=120;
		card_grid_x=2; card_grid_y=24; break;
	case 233:
		card_name="Porygon2";
		card_stage=2; card_evo[0]=474;
		card_type_a=00; card_type_b=-1;
		card_base_hp=85; card_base_atk=80; card_base_def=90;
		card_grid_x=3; card_grid_y=24; break;
	case 234:
		card_name="Stantler";
		card_stage=1; card_evo[0]=899;
		card_type_a=00; card_type_b=-1;
		card_base_hp=73; card_base_atk=95; card_base_def=62;
		card_grid_x=4; card_grid_y=24; break;
	case 235:
		card_name="Smeargle";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=55; card_base_atk=20; card_base_def=35;
		card_grid_x=5; card_grid_y=24; break;
	case 236:
		card_name="Tyrogue";
		card_stage=0; card_evo[0]=106; card_evo[1]=107; card_evo[2]=237;
		card_type_a=06; card_type_b=-1;
		card_base_hp=35; card_base_atk=35; card_base_def=35;
		card_grid_x=6; card_grid_y=24; break;
	case 237:
		card_name="Hitmontop";
		card_stage=1;
		card_type_a=06; card_type_b=-1;
		card_base_hp=50; card_base_atk=95; card_base_def=95;
		card_grid_x=7; card_grid_y=24; break;
	case 238:
		card_name="Smoochum";
		card_stage=0; card_evo[0]=124;
		card_type_a=13; card_type_b=07;
		card_base_hp=45; card_base_atk=30; card_base_def=15;
		card_grid_x=8; card_grid_y=24; break;
	case 239:
		card_name="Elekid";
		card_stage=0; card_evo[0]=100;
		card_type_a=04; card_type_b=-1;
		card_base_hp=45; card_base_atk=63; card_base_def=37;
		card_grid_x=9; card_grid_y=24; break;
	case 240:
		card_name="Magby";
		card_stage=0; card_evo[0]=126;
		card_type_a=02; card_type_b=-1;
		card_base_hp=45; card_base_atk=75; card_base_def=37;
		card_grid_x=10; card_grid_y=24; break;
	case 241:
		card_name="Miltank";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=95; card_base_atk=80; card_base_def=105;
		card_grid_x=11; card_grid_y=24; break;
	case 242:
		card_name="Blissey";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=255; card_base_atk=10; card_base_def=10;
		card_grid_x=12; card_grid_y=24; break;
	case 243:
		card_name="Raikou";
		card_stage=1; card_enigma=true;
		card_type_a=04; card_type_b=-1;
		card_base_hp=90; card_base_atk=85; card_base_def=75;
		card_grid_x=13; card_grid_y=24; break;
	case 244:
		card_name="Entei";
		card_stage=1; card_enigma=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=115; card_base_atk=115; card_base_def=85;
		card_grid_x=14; card_grid_y=24; break;
	case 245:
		card_name="Suicune";
		card_stage=1; card_enigma=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=100; card_base_atk=75; card_base_def=115;
		card_grid_x=15; card_grid_y=24; break;
	case 246:
		card_name="Larvitar";
		card_stage=1; card_evo[0]=247; card_pseudo=true;
		card_type_a=10; card_type_b=09;
		card_base_hp=50; card_base_atk=64; card_base_def=50;
		card_grid_x=1; card_grid_y=25; break;
	case 247:
		card_name="Pupitar";
		card_stage=2; card_evo[0]=248; card_pseudo=true;
		card_type_a=10; card_type_b=09;
		card_base_hp=70; card_base_atk=84; card_base_def=70;
		card_grid_x=2; card_grid_y=25; break;
	case 248:
		card_name="Tyranitar";
		card_stage=3; card_pseudo=true;
		card_type_a=10; card_type_b=17;
		card_base_hp=100; card_base_atk=134; card_base_def=110;
		card_grid_x=3; card_grid_y=25; break;
	case 249:
		card_name="Lugia";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=05;
		card_base_hp=106; card_base_atk=90; card_base_def=130;
		card_grid_x=5; card_grid_y=25; break;
	case 250:
		card_name="Ho-oh";
		card_stage=1; card_enigma=true;
		card_type_a=02; card_type_b=05;
		card_base_hp=106; card_base_atk=130; card_base_def=90;
		card_grid_x=6; card_grid_y=25; break;
	case 251:
		card_name="Celebi";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=01;
		card_base_hp=100; card_base_atk=100; card_base_def=100;
		card_grid_x=7; card_grid_y=25; break;
	//
	case 252:
		card_name="Treecko";
		card_stage=1; card_evo[0]=253; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=40; card_base_atk=45; card_base_def=35;
		card_grid_x=1; card_grid_y=26; break;
	case 253:
		card_name="Grovyle";
		card_stage=2; card_evo[0]=254; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=50; card_base_atk=65; card_base_def=45;
		card_grid_x=2; card_grid_y=26; break;
	case 254:
		card_name="Sceptile";
		card_stage=3; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=70; card_base_atk=85; card_base_def=65;
		card_grid_x=3; card_grid_y=26; break;
	case 255:
		card_name="Torchic";
		card_stage=1; card_evo[0]=256; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=45; card_base_atk=60; card_base_def=40;
		card_grid_x=5; card_grid_y=26; break;
	case 256:
		card_name="Combusken";
		card_stage=2; card_evo[0]=257; card_starter=true;
		card_type_a=02; card_type_b=06;
		card_base_hp=60; card_base_atk=85; card_base_def=60;
		card_grid_x=6; card_grid_y=26; break;
	case 257:
		card_name="Blaziken";
		card_stage=3; card_starter=true;
		card_type_a=02; card_type_b=06;
		card_base_hp=80; card_base_atk=120; card_base_def=70;
		card_grid_x=7; card_grid_y=26; break;
	case 258:
		card_name="Mudkip";
		card_stage=1; card_evo[0]=259; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=50; card_base_atk=70; card_base_def=50;
		card_grid_x=9; card_grid_y=26; break;
	case 259:
		card_name="Marshtomp";
		card_stage=2; card_evo[0]=260; card_starter=true;
		card_type_a=03; card_type_b=09;
		card_base_hp=70; card_base_atk=85; card_base_def=70;
		card_grid_x=10; card_grid_y=26; break;
	case 260:
		card_name="Swampert";
		card_stage=3; card_starter=true;
		card_type_a=03; card_type_b=09;
		card_base_hp=100; card_base_atk=110; card_base_def=90;
		card_grid_x=11; card_grid_y=26; break;
	case 261:
		card_name="Poochyena";
		card_stage=1; card_evo[0]=262;
		card_type_a=17; card_type_b=-1;
		card_base_hp=35; card_base_atk=55; card_base_def=35;
		card_grid_x=13; card_grid_y=26; break;
	case 262:
		card_name="Mightyena";
		card_stage=2;
		card_type_a=17; card_type_b=-1;
		card_base_hp=70; card_base_atk=90; card_base_def=70;
		card_grid_x=14; card_grid_y=26; break;
	case 263:
		card_name="Zigzagoon";
		card_stage=1; card_evo[0]=264;
		card_type_a=00; card_type_b=-1;
		card_base_hp=38; card_base_atk=30; card_base_def=41;
		card_grid_x=15; card_grid_y=26; break;
	case 264:
		card_name="Linoone";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=78; card_base_atk=70; card_base_def=61;
		card_grid_x=1; card_grid_y=27; break;
	case 265:
		card_name="Wurmple";
		card_stage=1; card_evo[0]=266; card_evo[1]=268;
		card_type_a=11; card_type_b=-1;
		card_base_hp=45; card_base_atk=45; card_base_def=35;
		card_grid_x=2; card_grid_y=27; break;
	case 266:
		card_name="Silcoon";
		card_stage=2; card_evo[0]=267;
		card_type_a=11; card_type_b=-1;
		card_base_hp=50; card_base_atk=35; card_base_def=55;
		card_grid_x=3; card_grid_y=27; break;
	case 267:
		card_name="Beautifly";
		card_stage=3;
		card_type_a=11; card_type_b=05;
		card_base_hp=60; card_base_atk=70; card_base_def=50;
		card_grid_x=4; card_grid_y=27; break;
	case 268:
		card_name="Cascoon";
		card_stage=2; card_evo[0]=269;
		card_type_a=11; card_type_b=-1;
		card_base_hp=50; card_base_atk=35; card_base_def=55;
		card_grid_x=5; card_grid_y=27; break;
	case 269:
		card_name="Dustox";
		card_stage=3;
		card_type_a=11; card_type_b=12;
		card_base_hp=60; card_base_atk=50; card_base_def=70;
		card_grid_x=6; card_grid_y=27; break;
	case 270:
		card_name="Lotad";
		card_stage=1; card_evo[0]=271;
		card_type_a=03; card_type_b=01;
		card_base_hp=40; card_base_atk=30; card_base_def=30;
		card_grid_x=7; card_grid_y=27; break;
	case 271:
		card_name="Lombre";
		card_stage=2; card_evo[0]=272;
		card_type_a=03; card_type_b=01;
		card_base_hp=60; card_base_atk=50; card_base_def=50;
		card_grid_x=8; card_grid_y=27; break;
	case 272:
		card_name="Ludicolo";
		card_stage=3;
		card_type_a=03; card_type_b=01;
		card_base_hp=80; card_base_atk=70; card_base_def=70;
		card_grid_x=9; card_grid_y=27; break;
	case 273:
		card_name="Seedot";
		card_stage=1; card_evo[0]=274;
		card_type_a=01; card_type_b=-1;
		card_base_hp=40; card_base_atk=40; card_base_def=50;
		card_grid_x=10; card_grid_y=27; break;
	case 274:
		card_name="Nuzleaf";
		card_stage=2; card_evo[0]=275;
		card_type_a=01; card_type_b=17;
		card_base_hp=70; card_base_atk=70; card_base_def=40;
		card_grid_x=11; card_grid_y=27; break;
	case 275:
		card_name="Shiftry";
		card_stage=3;
		card_type_a=01; card_type_b=17;
		card_base_hp=90; card_base_atk=100; card_base_def=60;
		card_grid_x=12; card_grid_y=27; break;
	case 276:
		card_name="Taillow";
		card_stage=1; card_evo[0]=277;
		card_type_a=00; card_type_b=05;
		card_base_hp=40; card_base_atk=55; card_base_def=30;
		card_grid_x=13; card_grid_y=27; break;
	case 277:
		card_name="Swellow";
		card_stage=2;
		card_type_a=00; card_type_b=05;
		card_base_hp=60; card_base_atk=85; card_base_def=60;
		card_grid_x=14; card_grid_y=27; break;
	case 278:
		card_name="Wingull";
		card_stage=1; card_evo[0]=279;
		card_type_a=03; card_type_b=05;
		card_base_hp=40; card_base_atk=30; card_base_def=30;
		card_grid_x=15; card_grid_y=27; break;
	case 279:
		card_name="Pelipper";
		card_stage=2;
		card_type_a=03; card_type_b=05;
		card_base_hp=60; card_base_atk=50; card_base_def=100;
		card_grid_x=1; card_grid_y=28; break;
	case 280:
		card_name="Ralts";
		card_stage=1; card_evo[0]=281;
		card_type_a=07; card_type_b=08;
		card_base_hp=28; card_base_atk=25; card_base_def=25;
		card_grid_x=2; card_grid_y=28; break;
	case 281:
		card_name="Kirlia";
		card_stage=2; card_evo[0]=282; card_evo[1]=475;
		card_type_a=07; card_type_b=08;
		card_base_hp=38; card_base_atk=35; card_base_def=35;
		card_grid_x=3; card_grid_y=28; break;
	case 282:
		card_name="Gardevoir";
		card_stage=3;
		card_type_a=07; card_type_b=08;
		card_base_hp=68; card_base_atk=65; card_base_def=65;
		card_grid_x=4; card_grid_y=28; break;
	case 283:
		card_name="Surskit";
		card_stage=1; card_evo[0]=284;
		card_type_a=11; card_type_b=03;
		card_base_hp=40; card_base_atk=30; card_base_def=32;
		card_grid_x=6; card_grid_y=28; break;
	case 284:
		card_name="Masquerain";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=70; card_base_atk=60; card_base_def=62;
		card_grid_x=7; card_grid_y=28; break;
	case 285:
		card_name="Shroomish";
		card_stage=1; card_evo[0]=286;
		card_type_a=01; card_type_b=-1;
		card_base_hp=60; card_base_atk=40; card_base_def=60;
		card_grid_x=8; card_grid_y=28; break;
	case 286:
		card_name="Breloom";
		card_stage=2;
		card_type_a=01; card_type_b=06;
		card_base_hp=60; card_base_atk=130; card_base_def=80;
		card_grid_x=9; card_grid_y=28; break;
	case 287:
		card_name="Slakoth";
		card_stage=1; card_evo[0]=288;
		card_type_a=00; card_type_b=-1;
		card_base_hp=60; card_base_atk=60; card_base_def=60;
		card_grid_x=10; card_grid_y=28; break;
	case 288:
		card_name="Vigoroth";
		card_stage=2; card_evo[0]=289;
		card_type_a=00; card_type_b=-1;
		card_base_hp=80; card_base_atk=80; card_base_def=80;
		card_grid_x=11; card_grid_y=28; break;
	case 289:
		card_name="Slaking";
		card_stage=3;
		card_type_a=00; card_type_b=-1;
		card_base_hp=75; card_base_atk=80; card_base_def=100;
		card_grid_x=12; card_grid_y=28; break;
	case 290:
		card_name="Nincada";
		card_stage=1; card_evo[0]=291; card_evo[1]=292;
		card_type_a=11; card_type_b=09;
		card_base_hp=31; card_base_atk=45; card_base_def=90;
		card_grid_x=13; card_grid_y=28; break;
	case 291:
		card_name="Ninjask";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=61; card_base_atk=90; card_base_def=45;
		card_grid_x=14; card_grid_y=28; break;
	case 292:
		card_name="Shedinja";
		card_stage=2;
		card_type_a=11; card_type_b=16;
		card_base_hp=1; card_base_atk=90; card_base_def=45;
		card_grid_x=15; card_grid_y=28; break;
	case 293:
		card_name="Whismur";
		card_stage=1; card_evo[0]=294;
		card_type_a=00; card_type_b=-1;
		card_base_hp=64; card_base_atk=51; card_base_def=23;
		card_grid_x=1; card_grid_y=29; break;
	case 294:
		card_name="Loudred";
		card_stage=2; card_evo[0]=295;
		card_type_a=00; card_type_b=-1;
		card_base_hp=84; card_base_atk=71; card_base_def=43;
		card_grid_x=2; card_grid_y=29; break;
	case 295:
		card_name="Exploud";
		card_stage=3;
		card_type_a=00; card_type_b=-1;
		card_base_hp=104; card_base_atk=91; card_base_def=63;
		card_grid_x=3; card_grid_y=29; break;
	case 296:
		card_name="Makuhita";
		card_stage=1; card_evo[0]=297;
		card_type_a=06; card_type_b=-1;
		card_base_hp=72; card_base_atk=60; card_base_def=30;
		card_grid_x=4; card_grid_y=29; break;
	case 297:
		card_name="Hariyama";
		card_stage=2;
		card_type_a=06; card_type_b=-1;
		card_base_hp=144; card_base_atk=120; card_base_def=60;
		card_grid_x=5; card_grid_y=29; break;
	case 298:
		card_name="Azurill";
		card_stage=0; card_evo[0]=183;
		card_type_a=00; card_type_b=08;
		card_base_hp=50; card_base_atk=20; card_base_def=40;
		card_grid_x=6; card_grid_y=29; break;
	case 299:
		card_name="Nosepass";
		card_stage=1; card_evo[0]=476;
		card_type_a=10; card_type_b=-1;
		card_base_hp=30; card_base_atk=45; card_base_def=135;
		card_grid_x=7; card_grid_y=29; break;
	case 300:
		card_name="Skitty";
		card_stage=1; card_evo[0]=301;
		card_type_a=00; card_type_b=-1;
		card_base_hp=50; card_base_atk=45; card_base_def=45;
		card_grid_x=8; card_grid_y=29; break;
	case 301:
		card_name="Delcatty";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=70; card_base_atk=65; card_base_def=65;
		card_grid_x=9; card_grid_y=29; break;
	case 302:
		card_name="Sableye";
		card_stage=1;
		card_type_a=17; card_type_b=16;
		card_base_hp=50; card_base_atk=75; card_base_def=75;
		card_grid_x=10; card_grid_y=29; break;
	case 303:
		card_name="Mawile";
		card_stage=1;
		card_type_a=15; card_type_b=08;
		card_base_hp=50; card_base_atk=85; card_base_def=85;
		card_grid_x=12; card_grid_y=29; break;
	case 304:
		card_name="Aron";
		card_stage=1; card_evo[0]=305;
		card_type_a=15; card_type_b=10;
		card_base_hp=50; card_base_atk=70; card_base_def=100;
		card_grid_x=14; card_grid_y=29; break;
	case 305:
		card_name="Lairon";
		card_stage=2; card_evo[0]=306;
		card_type_a=15; card_type_b=10;
		card_base_hp=60; card_base_atk=90; card_base_def=140;
		card_grid_x=15; card_grid_y=29; break;
	case 306:
		card_name="Aggron";
		card_stage=3;
		card_type_a=15; card_type_b=10;
		card_base_hp=70; card_base_atk=110; card_base_def=180;
		card_grid_x=1; card_grid_y=30; break;
	case 307:
		card_name="Meditite";
		card_stage=1; card_evo[0]=308;
		card_type_a=06; card_type_b=07;
		card_base_hp=30; card_base_atk=40; card_base_def=55;
		card_grid_x=3; card_grid_y=30; break;
	case 308:
		card_name="Medicham";
		card_stage=2;
		card_type_a=06; card_type_b=07;
		card_base_hp=60; card_base_atk=60; card_base_def=75;
		card_grid_x=4; card_grid_y=30; break;
	case 309:
		card_name="Electrike";
		card_stage=1; card_evo[0]=310;
		card_type_a=04; card_type_b=-1;
		card_base_hp=40; card_base_atk=45; card_base_def=40;
		card_grid_x=6; card_grid_y=30; break;
	case 310:
		card_name="Manectric";
		card_stage=2;
		card_type_a=04; card_type_b=-1;
		card_base_hp=70; card_base_atk=75; card_base_def=60;
		card_grid_x=7; card_grid_y=30; break;
	case 311:
		card_name="Plusle";
		card_stage=1;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=50; card_base_def=40;
		card_grid_x=9; card_grid_y=30; break;
	case 312:
		card_name="Minun";
		card_stage=1;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=40; card_base_def=50;
		card_grid_x=10; card_grid_y=30; break;
	case 313:
		card_name="Volbeat";
		card_stage=1;
		card_type_a=11; card_type_b=-1;
		card_base_hp=65; card_base_atk=73; card_base_def=75;
		card_grid_x=11; card_grid_y=30; break;
	case 314:
		card_name="Illumise";
		card_stage=1;
		card_type_a=11; card_type_b=-1;
		card_base_hp=65; card_base_atk=47; card_base_def=75;
		card_grid_x=12; card_grid_y=30; break;
	case 315:
		card_name="Roselia";
		card_stage=1; card_evo[0]=407;
		card_type_a=01; card_type_b=12;
		card_base_hp=50; card_base_atk=60; card_base_def=45;
		card_grid_x=13; card_grid_y=30; break;
	case 316:
		card_name="Gulpin";
		card_stage=1; card_evo[0]=317;
		card_type_a=12; card_type_b=-1;
		card_base_hp=70; card_base_atk=43; card_base_def=53;
		card_grid_x=15; card_grid_y=30; break;
	case 317:
		card_name="Swalot";
		card_stage=2;
		card_type_a=12; card_type_b=-1;
		card_base_hp=100; card_base_atk=73; card_base_def=83;
		card_grid_x=1; card_grid_y=31; break;
	case 318:
		card_name="Carvanha";
		card_stage=1; card_evo[0]=319;
		card_type_a=03; card_type_b=17;
		card_base_hp=45; card_base_atk=90; card_base_def=20;
		card_grid_x=2; card_grid_y=31; break;
	case 319:
		card_name="Sharpedo";
		card_stage=2;
		card_type_a=03; card_type_b=17;
		card_base_hp=70; card_base_atk=120; card_base_def=40;
		card_grid_x=3; card_grid_y=31; break;
	case 320:
		card_name="Wailmer";
		card_stage=1; card_evo[0]=321;
		card_type_a=03; card_type_b=-1;
		card_base_hp=130; card_base_atk=70; card_base_def=35;
		card_grid_x=5; card_grid_y=31; break;
	case 321:
		card_name="Wailord";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=85; card_base_atk=90; card_base_def=45;
		card_grid_x=6; card_grid_y=31; break;
	case 322:
		card_name="Numel";
		card_stage=1; card_evo[0]=323;
		card_type_a=02; card_type_b=09;
		card_base_hp=60; card_base_atk=60; card_base_def=40;
		card_grid_x=7; card_grid_y=31; break;
	case 323:
		card_name="Camerupt";
		card_stage=2;
		card_type_a=02; card_type_b=09;
		card_base_hp=70; card_base_atk=100; card_base_def=70;
		card_grid_x=8; card_grid_y=31; break;
	case 324:
		card_name="Torkoal";
		card_stage=1;
		card_type_a=02; card_type_b=-1;
		card_base_hp=70; card_base_atk=85; card_base_def=140;
		card_grid_x=10; card_grid_y=31; break;
	case 325:
		card_name="Spoink";
		card_stage=1; card_evo[0]=326;
		card_type_a=07; card_type_b=-1;
		card_base_hp=60; card_base_atk=25; card_base_def=35;
		card_grid_x=11; card_grid_y=31; break;
	case 326:
		card_name="Grumpig";
		card_stage=2;
		card_type_a=07; card_type_b=-1;
		card_base_hp=80; card_base_atk=45; card_base_def=65;
		card_grid_x=12; card_grid_y=31; break;
	case 327:
		card_name="Spinda";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=60; card_base_atk=60; card_base_def=60;
		card_grid_x=13; card_grid_y=31; break;
	case 328:
		card_name="Trapinch";
		card_stage=1; card_evo[0]=329;
		card_type_a=09; card_type_b=-1;
		card_base_hp=45; card_base_atk=100; card_base_def=45;
		card_grid_x=14; card_grid_y=31; break;
	case 329:
		card_name="Vibrava";
		card_stage=2; card_evo[0]=330;
		card_type_a=09; card_type_b=14;
		card_base_hp=50; card_base_atk=70; card_base_def=50;
		card_grid_x=15; card_grid_y=31; break;
	case 330:
		card_name="Flygon";
		card_stage=3;
		card_type_a=09; card_type_b=14;
		card_base_hp=80; card_base_atk=100; card_base_def=80;
		card_grid_x=1; card_grid_y=32; break;
	case 331:
		card_name="Cacnea";
		card_stage=1; card_evo[0]=332;
		card_type_a=01; card_type_b=-1;
		card_base_hp=50; card_base_atk=85; card_base_def=40;
		card_grid_x=2; card_grid_y=32; break;
	case 332:
		card_name="Cacturne";
		card_stage=2;
		card_type_a=01; card_type_b=17;
		card_base_hp=70; card_base_atk=115; card_base_def=60;
		card_grid_x=3; card_grid_y=32; break;
	case 333:
		card_name="Swablu";
		card_stage=1; card_evo[0]=334;
		card_type_a=00; card_type_b=05;
		card_base_hp=45; card_base_atk=40; card_base_def=60;
		card_grid_x=4; card_grid_y=32; break;
	case 334:
		card_name="Altaria";
		card_stage=2;
		card_type_a=14; card_type_b=05;
		card_base_hp=75; card_base_atk=70; card_base_def=90;
		card_grid_x=5; card_grid_y=32; break;
	case 335:
		card_name="Zangoose";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=73; card_base_atk=100; card_base_def=60;
		card_grid_x=7; card_grid_y=32; break;
	case 336:
		card_name="Seviper";
		card_stage=1;
		card_type_a=12; card_type_b=-1;
		card_base_hp=73; card_base_atk=100; card_base_def=60;
		card_grid_x=9; card_grid_y=32; break;
	case 337:
		card_name="Lunatone";
		card_stage=1;
		card_type_a=10; card_type_b=07;
		card_base_hp=90; card_base_atk=55; card_base_def=65;
		card_grid_x=11; card_grid_y=32; break;
	case 338:
		card_name="Solrock";
		card_stage=1;
		card_type_a=10; card_type_b=07;
		card_base_hp=90; card_base_atk=95; card_base_def=85;
		card_grid_x=12; card_grid_y=32; break;
	case 339:
		card_name="Barboach";
		card_stage=1; card_evo[0]=340;
		card_type_a=03; card_type_b=09;
		card_base_hp=50; card_base_atk=48; card_base_def=43;
		card_grid_x=13; card_grid_y=32; break;
	case 340:
		card_name="Whiscash";
		card_stage=2;
		card_type_a=03; card_type_b=09;
		card_base_hp=110; card_base_atk=78; card_base_def=73;
		card_grid_x=14; card_grid_y=32; break;
	case 341:
		card_name="Corphish";
		card_stage=1; card_evo[0]=342;
		card_type_a=03; card_type_b=-1;
		card_base_hp=43; card_base_atk=80; card_base_def=65;
		card_grid_x=15; card_grid_y=32; break;
	case 342:
		card_name="Crawdaunt";
		card_stage=2;
		card_type_a=03; card_type_b=17;
		card_base_hp=63; card_base_atk=120; card_base_def=85;
		card_grid_x=1; card_grid_y=33; break;
	case 343:
		card_name="Baltoy";
		card_stage=1; card_evo[0]=344;
		card_type_a=09; card_type_b=07;
		card_base_hp=40; card_base_atk=40; card_base_def=55;
		card_grid_x=2; card_grid_y=33; break;
	case 344:
		card_name="Claydol";
		card_stage=2;
		card_type_a=09; card_type_b=07;
		card_base_hp=60; card_base_atk=70; card_base_def=105;
		card_grid_x=3; card_grid_y=33; break;
	case 345:
		card_name="Lileep";
		card_stage=1; card_evo[0]=346; card_fossil=true;
		card_type_a=10; card_type_b=01;
		card_base_hp=66; card_base_atk=41; card_base_def=77;
		card_grid_x=4; card_grid_y=33; break;
	case 346:
		card_name="Cradily";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=01;
		card_base_hp=86; card_base_atk=81; card_base_def=97;
		card_grid_x=5; card_grid_y=33; break;
	case 347:
		card_name="Anorith";
		card_stage=1; card_evo[0]=348; card_fossil=true;
		card_type_a=10; card_type_b=11;
		card_base_hp=45; card_base_atk=95; card_base_def=50;
		card_grid_x=6; card_grid_y=33; break;
	case 348:
		card_name="Armaldo";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=11;
		card_base_hp=75; card_base_atk=100; card_base_def=100;
		card_grid_x=7; card_grid_y=33; break;
	case 349:
		card_name="Feebas";
		card_stage=1; card_evo[0]=350;
		card_type_a=03; card_type_b=-1;
		card_base_hp=20; card_base_atk=15; card_base_def=20;
		card_grid_x=8; card_grid_y=33; break;
	case 350:
		card_name="Milotic";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=95; card_base_atk=60; card_base_def=79;
		card_grid_x=9; card_grid_y=33; break;
	case 351:
		card_name="Castform";
		card_stage=1; //card_form_value values referenced manually in ob_event when changing form
		card_type_b=-1;
		card_base_hp=70; card_base_atk=70; card_base_def=70;
		if card_form_value<250 { card_type_a=00; card_grid_x=10; card_grid_y=33; } //castform
		else if card_form_value<500 { card_type_a=02; card_grid_x=14; card_grid_y=33; } //sunny form
		else if card_form_value<750 { card_type_a=03; card_grid_x=11; card_grid_y=33; } //rainy form
		else if card_form_value<1000 { card_type_a=13; card_grid_x=12; card_grid_y=33; } //snowy form
		break;
	case 352:
		card_name="Kecleon";
		card_stage=1;
		card_type_a=00; card_type_b=-1;
		card_base_hp=60; card_base_atk=90; card_base_def=70;
		card_grid_x=15; card_grid_y=33; break;
	case 353:
		card_name="Shuppet";
		card_stage=1; card_evo[0]=354;
		card_type_a=16; card_type_b=-1;
		card_base_hp=44; card_base_atk=75; card_base_def=35;
		card_grid_x=1; card_grid_y=34; break;
	case 354:
		card_name="Banette";
		card_stage=2;
		card_type_a=16; card_type_b=-1;
		card_base_hp=64; card_base_atk=115; card_base_def=65;
		card_grid_x=2; card_grid_y=34; break;
	case 355:
		card_name="Duskull";
		card_stage=1; card_evo[0]=356;
		card_type_a=16; card_type_b=-1;
		card_base_hp=20; card_base_atk=40; card_base_def=90;
		card_grid_x=4; card_grid_y=34; break;
	case 356:
		card_name="Dusclops";
		card_stage=2; card_evo[0]=477;
		card_type_a=16; card_type_b=-1;
		card_base_hp=40; card_base_atk=70; card_base_def=130;
		card_grid_x=5; card_grid_y=34; break;
	case 357:
		card_name="Tropius";
		card_stage=1;
		card_type_a=01; card_type_b=05;
		card_base_hp=99; card_base_atk=68; card_base_def=83;
		card_grid_x=6; card_grid_y=34; break;
	case 358:
		card_name="Chimecho";
		card_stage=1;
		card_type_a=07; card_type_b=-1;
		card_base_hp=75; card_base_atk=50; card_base_def=80;
		card_grid_x=7; card_grid_y=34; break;
	case 359:
		card_name="Absol";
		card_stage=1;
		card_type_a=17; card_type_b=-1;
		card_base_hp=65; card_base_atk=130; card_base_def=60;
		card_grid_x=8; card_grid_y=34; break;
	case 360:
		card_name="Wynaut";
		card_stage=0; card_evo[0]=202;
		card_type_a=07; card_type_b=-1;
		card_base_hp=95; card_base_atk=23; card_base_def=48;
		card_grid_x=12; card_grid_y=34; break;
	case 361:
		card_name="Snorunt";
		card_stage=1; card_evo[0]=362; card_evo[1]=478;
		card_type_a=13; card_type_b=-1;
		card_base_hp=50; card_base_atk=50; card_base_def=50;
		card_grid_x=13; card_grid_y=34; break;
	case 362:
		card_name="Glalie";
		card_stage=2;
		card_type_a=13; card_type_b=-1;
		card_base_hp=80; card_base_atk=80; card_base_def=80;
		card_grid_x=14; card_grid_y=34; break;
	case 363:
		card_name="Spheal";
		card_stage=1; card_evo[0]=364;
		card_type_a=13; card_type_b=03;
		card_base_hp=70; card_base_atk=40; card_base_def=50;
		card_grid_x=1; card_grid_y=35; break;
	case 364:
		card_name="Sealeo";
		card_stage=2; card_evo[0]=365;
		card_type_a=13; card_type_b=03;
		card_base_hp=90; card_base_atk=60; card_base_def=70;
		card_grid_x=2; card_grid_y=35; break;
	case 365:
		card_name="Walrein";
		card_stage=3;
		card_type_a=13; card_type_b=03;
		card_base_hp=110; card_base_atk=80; card_base_def=90;
		card_grid_x=3; card_grid_y=35; break;
	case 366:
		card_name="Clamperl";
		card_stage=1; card_evo[0]=367; card_evo[1]=368;
		card_type_a=03; card_type_b=-1;
		card_base_hp=35; card_base_atk=64; card_base_def=85;
		card_grid_x=4; card_grid_y=35; break;
	case 367:
		card_name="Huntail";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=55; card_base_atk=104; card_base_def=105;
		card_grid_x=5; card_grid_y=35; break;
	case 368:
		card_name="Gorebyss";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=55; card_base_atk=84; card_base_def=105;
		card_grid_x=6; card_grid_y=35; break;
	case 369:
		card_name="Relicanth";
		card_stage=1;
		card_type_a=03; card_type_b=10;
		card_base_hp=100; card_base_atk=90; card_base_def=130;
		card_grid_x=7; card_grid_y=35; break;
	case 370:
		card_name="Luvdisc";
		card_stage=1;
		card_type_a=03; card_type_b=-1;
		card_base_hp=43; card_base_atk=30; card_base_def=55;
		card_grid_x=8; card_grid_y=35; break;
	case 371:
		card_name="Bagon";
		card_stage=1; card_evo[0]=372; card_pseudo=true;
		card_type_a=14; card_type_b=-1;
		card_base_hp=45; card_base_atk=75; card_base_def=60;
		card_grid_x=9; card_grid_y=35; break;
	case 372:
		card_name="Shelgon";
		card_stage=2; card_evo[0]=373; card_pseudo=true;
		card_type_a=14; card_type_b=-1;
		card_base_hp=65; card_base_atk=95; card_base_def=100;
		card_grid_x=10; card_grid_y=35; break;
	case 373:
		card_name="Salamence";
		card_stage=3; card_pseudo=true;
		card_type_a=14; card_type_b=05;
		card_base_hp=95; card_base_atk=135; card_base_def=80;
		card_grid_x=11; card_grid_y=35; break;
	case 374:
		card_name="Beldum";
		card_stage=1; card_evo[0]=375; card_pseudo=true;
		card_type_a=15; card_type_b=07;
		card_base_hp=40; card_base_atk=55; card_base_def=80;
		card_grid_x=13; card_grid_y=35; break;
	case 375:
		card_name="Metang";
		card_stage=2; card_evo[0]=376; card_pseudo=true;
		card_type_a=15; card_type_b=07;
		card_base_hp=60; card_base_atk=75; card_base_def=100;
		card_grid_x=14; card_grid_y=35; break;
	case 376:
		card_name="Metagross";
		card_stage=3; card_pseudo=true;
		card_type_a=15; card_type_b=07;
		card_base_hp=80; card_base_atk=135; card_base_def=130;
		card_grid_x=15; card_grid_y=35; break;
	case 377:
		card_name="Regirock";
		card_stage=1; card_enigma=true;
		card_type_a=10; card_type_b=-1;
		card_base_hp=80; card_base_atk=100; card_base_def=100;
		card_grid_x=2; card_grid_y=36; break;
	case 378:
		card_name="Regice";
		card_stage=1; card_enigma=true;
		card_type_a=13; card_type_b=-1;
		card_base_hp=80; card_base_atk=50; card_base_def=50;
		card_grid_x=4; card_grid_y=36; break;
	case 379:
		card_name="Registeel";
		card_stage=1; card_enigma=true;
		card_type_a=15; card_type_b=-1;
		card_base_hp=80; card_base_atk=75; card_base_def=75;
		card_grid_x=5; card_grid_y=36; break;
	case 380:
		card_name="Latias";
		card_stage=1; card_enigma=true;
		card_type_a=14; card_type_b=07;
		card_base_hp=80; card_base_atk=80; card_base_def=90;
		card_grid_x=6; card_grid_y=36; break;
	case 381:
		card_name="Latios";
		card_stage=1; card_enigma=true;
		card_type_a=14; card_type_b=07;
		card_base_hp=80; card_base_atk=90; card_base_def=80;
		card_grid_x=8; card_grid_y=36; break;
	case 382:
		card_name="Kyogre";
		card_stage=1; card_enigma=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=100; card_base_atk=100; card_base_def=90;
		card_grid_x=11; card_grid_y=36; break;
	case 383:
		card_name="Groudon";
		card_stage=1; card_enigma=true;
		card_type_a=09; card_type_b=-1;
		card_base_hp=100; card_base_atk=75; card_base_def=70;
		card_grid_x=12; card_grid_y=36; break;
	case 384:
		card_name="Rayquaza";
		card_stage=1; card_enigma=true;
		card_type_a=14; card_type_b=05;
		card_base_hp=105; card_base_atk=75; card_base_def=90;
		card_grid_x=15; card_grid_y=36; break;
	case 385:
		card_name="Jirachi";
		card_stage=1; card_enigma=true;
		card_type_a=15; card_type_b=07;
		card_base_hp=100; card_base_atk=100; card_base_def=100;
		card_grid_x=1; card_grid_y=37; break;
	case 386:
		card_name="Deoxys";
		card_stage=1; card_enigma=true; //card_form_value values referenced manually in ob_event when changing form
		card_type_a=07; card_type_b=-1;
		if card_form_value<250 { //normal form
			card_base_hp=50; card_base_atk=75; card_base_def=50;
			card_grid_x=4; card_grid_y=37; }
		else if card_form_value<500 { //attack form
			card_base_hp=50; card_base_atk=180; card_base_def=20;
			card_grid_x=2; card_grid_y=37; }
		else if card_form_value<750 { //defense form
			card_base_hp=50; card_base_atk=70; card_base_def=160;
			card_grid_x=3; card_grid_y=37; }
		else if card_form_value<1000 { //speed form
			card_base_hp=50; card_base_atk=95; card_base_def=90;
			card_grid_x=5; card_grid_y=37; }
		break;
	//
	case 387:
		card_name="Turtwig";
		card_stage=1; card_evo[0]=388; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=55; card_base_atk=68; card_base_def=64;
		card_grid_x=1; card_grid_y=1; break;
	case 388:
		card_name="Grotle";
		card_stage=2; card_evo[0]=389; card_starter=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=75; card_base_atk=89; card_base_def=85;
		card_grid_x=2; card_grid_y=1; break;
	case 389:
		card_name="Torterra";
		card_stage=3; card_starter=true;
		card_type_a=01; card_type_b=09;
		card_base_hp=95; card_base_atk=109; card_base_def=105;
		card_grid_x=3; card_grid_y=1; break;
	case 390:
		card_name="Chimchar";
		card_stage=1; card_evo[0]=391; card_starter=true;
		card_type_a=02; card_type_b=-1;
		card_base_hp=44; card_base_atk=58; card_base_def=44;
		card_grid_x=5; card_grid_y=1; break;
	case 391:
		card_name="Monferno";
		card_stage=2; card_evo[0]=392; card_starter=true;
		card_type_a=02; card_type_b=06;
		card_base_hp=64; card_base_atk=78; card_base_def=52;
		card_grid_x=6; card_grid_y=1; break;
	case 392:
		card_name="Infernape";
		card_stage=3; card_starter=true;
		card_type_a=02; card_type_b=06;
		card_base_hp=76; card_base_atk=104; card_base_def=71;
		card_grid_x=7; card_grid_y=1; break;
	case 393:
		card_name="Piplup";
		card_stage=1; card_evo[0]=394; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=53; card_base_atk=51; card_base_def=53;
		card_grid_x=8; card_grid_y=1; break;
	case 394:
		card_name="Prinplup";
		card_stage=2; card_evo[0]=395; card_starter=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=64; card_base_atk=66; card_base_def=68;
		card_grid_x=9; card_grid_y=1; break;
	case 395:
		card_name="Empoleon";
		card_stage=3; card_starter=true;
		card_type_a=03; card_type_b=15;
		card_base_hp=84; card_base_atk=86; card_base_def=88;
		card_grid_x=10; card_grid_y=1; break;
	case 396:
		card_name="Starly";
		card_stage=1; card_evo[0]=397;
		card_type_a=00; card_type_b=05;
		card_base_hp=40; card_base_atk=55; card_base_def=30;
		card_grid_x=11; card_grid_y=1; break;
	case 397:
		card_name="Staravia";
		card_stage=2; card_evo[0]=398;
		card_type_a=00; card_type_b=05;
		card_base_hp=55; card_base_atk=75; card_base_def=50;
		card_grid_x=12; card_grid_y=1; break;
	case 398:
		card_name="Staraptor";
		card_stage=3;
		card_type_a=00; card_type_b=05;
		card_base_hp=85; card_base_atk=120; card_base_def=70;
		card_grid_x=13; card_grid_y=1; break;
	case 399:
		card_name="Bidoof";
		card_stage=1; card_evo[0]=400;
		card_type_a=00; card_type_b=-1;
		card_base_hp=59; card_base_atk=45; card_base_def=40;
		card_grid_x=14; card_grid_y=1; break;
	case 400:
		card_name="Bibarel";
		card_stage=2;
		card_type_a=00; card_type_b=03;
		card_base_hp=79; card_base_atk=85; card_base_def=60;
		card_grid_x=15; card_grid_y=1; break;
	case 401:
		card_name="Kricketot";
		card_stage=1; card_evo[0]=402;
		card_type_a=11; card_type_b=-1;
		card_base_hp=37; card_base_atk=25; card_base_def=41;
		card_grid_x=1; card_grid_y=2; break;
	case 402:
		card_name="Kricketune";
		card_stage=2;
		card_type_a=11; card_type_b=-1;
		card_base_hp=77; card_base_atk=85; card_base_def=51;
		card_grid_x=2; card_grid_y=2; break;
	case 403:
		card_name="Shinx";
		card_stage=1; card_evo[0]=404;
		card_type_a=04; card_type_b=-1;
		card_base_hp=45; card_base_atk=65; card_base_def=34;
		card_grid_x=3; card_grid_y=2; break;
	case 404:
		card_name="Luxio";
		card_stage=2; card_evo[0]=405;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=85; card_base_def=49;
		card_grid_x=4; card_grid_y=2; break;
	case 405:
		card_name="Luxray";
		card_stage=3;
		card_type_a=04; card_type_b=-1;
		card_base_hp=80; card_base_atk=120; card_base_def=79;
		card_grid_x=5; card_grid_y=2; break;
	case 406:
		card_name="Budew";
		card_stage=0; card_evo[0]=315;
		card_type_a=01; card_type_b=12;
		card_base_hp=40; card_base_atk=30; card_base_def=35;
		card_grid_x=6; card_grid_y=2; break;
	case 407:
		card_name="Roserade";
		card_stage=2;
		card_type_a=01; card_type_b=12;
		card_base_hp=60; card_base_atk=70; card_base_def=65;
		card_grid_x=8; card_grid_y=2; break;
	case 408:
		card_name="Cranidos";
		card_stage=1; card_evo[0]=409; card_fossil=true;
		card_type_a=10; card_type_b=-1;
		card_base_hp=67; card_base_atk=100; card_base_def=40;
		card_grid_x=10; card_grid_y=2; break;
	case 409:
		card_name="Rampardos";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=-1;
		card_base_hp=97; card_base_atk=80; card_base_def=60;
		card_grid_x=11; card_grid_y=2; break;
	case 410:
		card_name="Shieldon";
		card_stage=1; card_evo[0]=411; card_fossil=true;
		card_type_a=10; card_type_b=15;
		card_base_hp=30; card_base_atk=42; card_base_def=118;
		card_grid_x=12; card_grid_y=2; break;
	case 411:
		card_name="Bastiodon";
		card_stage=2; card_fossil=true;
		card_type_a=10; card_type_b=15;
		card_base_hp=60; card_base_atk=52; card_base_def=168;
		card_grid_x=13; card_grid_y=2; break;
	case 412:
		card_name="Burmy";
		card_stage=1; card_evo[0]=413; card_evo[1]=414;
		card_type_a=11; card_type_b=-1;
		card_base_hp=40; card_base_atk=29; card_base_def=45;
		if card_form_value<334 { //plant cloak
			card_grid_x=15; card_grid_y=2; }
		else if card_form_value<667 { //sandy cloak
			card_grid_x=1; card_grid_y=3; }
		else if card_form_value<1000 { //trash cloak
			card_grid_x=14; card_grid_y=2; }
		break;
	case 413:
		card_name="Wormadam";
		card_stage=2;
		card_type_a=11;
		if card_form_value<334 { //plant cloak
			card_type_b=01;
			card_base_hp=60; card_base_atk=59; card_base_def=85;
			card_grid_x=4; card_grid_y=3; }
		else if card_form_value<667 { //sandy cloak
			card_type_b=09;
			card_base_hp=60; card_base_atk=79; card_base_def=105;
			card_grid_x=3; card_grid_y=3; }
		else if card_form_value<1000 { //trash cloak
			card_type_b=15;
			card_base_hp=60; card_base_atk=69; card_base_def=95;
			card_grid_x=2; card_grid_y=3; }
		break;
	case 414:
		card_name="Mothim";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=70; card_base_atk=94; card_base_def=50;
		card_grid_x=5; card_grid_y=3; break;
	case 415:
		card_name="Combee";
		card_stage=1; card_evo[0]=416;
		card_type_a=11; card_type_b=05;
		card_base_hp=30; card_base_atk=30; card_base_def=42;
		card_grid_x=6; card_grid_y=3; break;
	case 416:
		card_name="Vespiquen";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=70; card_base_atk=80; card_base_def=102;
		card_grid_x=7; card_grid_y=3; break;
	case 417:
		card_name="Pachirisu";
		card_stage=1;
		card_type_a=04; card_type_b=-1;
		card_base_hp=60; card_base_atk=45; card_base_def=70;
		card_grid_x=8; card_grid_y=3; break;
	case 418:
		card_name="Buizel";
		card_stage=1; card_evo[0]=419;
		card_type_a=03; card_type_b=-1;
		card_base_hp=55; card_base_atk=65; card_base_def=35;
		card_grid_x=9; card_grid_y=3; break;
	case 419:
		card_name="Floatzel";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=85; card_base_atk=105; card_base_def=55;
		card_grid_x=10; card_grid_y=3; break;
	case 420:
		card_name="Cherubi";
		card_stage=1; card_evo[0]=421;
		card_type_a=01; card_type_b=-1;
		card_base_hp=45; card_base_atk=35; card_base_def=45;
		card_grid_x=11; card_grid_y=3; break;
	case 421:
		card_name="Cherrim";
		card_stage=2;
		card_type_a=01; card_type_b=-1;
		card_base_hp=70; card_base_atk=60; card_base_def=70;
		card_grid_x=12; card_grid_y=3; break;
	case 422:
		card_name="Shellos";
		card_stage=1; card_evo[0]=423;
		card_type_a=03; card_type_b=-1;
		card_base_hp=76; card_base_atk=48; card_base_def=48;
		if card_form_value<500 { //east sea
			card_grid_x=14; card_grid_y=3; }
		else if card_form_value<1000 { //west sea
			card_grid_x=15; card_grid_y=3; }
		break;
	case 423:
		card_name="Gastrodon";
		card_stage=2;
		card_type_a=03; card_type_b=09;
		card_base_hp=111; card_base_atk=83; card_base_def=68;
		if card_form_value<500 { //east sea
			card_grid_x=1; card_grid_y=4; }
		else if card_form_value<1000 { //west sea
			card_grid_x=2; card_grid_y=4; }
		break;
	case 424:
		card_name="Ambipom";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=75; card_base_atk=100; card_base_def=66;
		card_grid_x=3; card_grid_y=4; break;
	case 425:
		card_name="Drifloon";
		card_stage=1; card_evo[0]=426;
		card_type_a=16; card_type_b=05;
		card_base_hp=90; card_base_atk=50; card_base_def=34;
		card_grid_x=4; card_grid_y=4; break;
	case 426:
		card_name="Drifblim";
		card_stage=2;
		card_type_a=16; card_type_b=05;
		card_base_hp=75; card_base_atk=80; card_base_def=44;
		card_grid_x=5; card_grid_y=4; break;
	case 427:
		card_name="Buneary";
		card_stage=1; card_evo[0]=428;
		card_type_a=00; card_type_b=-1;
		card_base_hp=55; card_base_atk=66; card_base_def=44;
		card_grid_x=6; card_grid_y=4; break;
	case 428:
		card_name="Lopunny";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=65; card_base_atk=76; card_base_def=84;
		card_grid_x=7; card_grid_y=4; break;
	case 429:
		card_name="Mismagius";
		card_stage=2;
		card_type_a=16; card_type_b=-1;
		card_base_hp=60; card_base_atk=60; card_base_def=60;
		card_grid_x=9; card_grid_y=4; break;
	case 430:
		card_name="Honchkrow";
		card_stage=2;
		card_type_a=17; card_type_b=05;
		card_base_hp=100; card_base_atk=100; card_base_def=52;
		card_grid_x=10; card_grid_y=4; break;
	case 431:
		card_name="Glameow";
		card_stage=1; card_evo[0]=432;
		card_type_a=00; card_type_b=-1;
		card_base_hp=49; card_base_atk=55; card_base_def=42;
		card_grid_x=11; card_grid_y=4; break;
	case 432:
		card_name="Purugly";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=71; card_base_atk=82; card_base_def=64;
		card_grid_x=12; card_grid_y=4; break;
	case 433:
		card_name="Chingling";
		card_stage=0; card_evo[0]=358;
		card_type_a=07; card_type_b=-1;
		card_base_hp=45; card_base_atk=30; card_base_def=50;
		card_grid_x=13; card_grid_y=4; break;
	case 434:
		card_name="Stunky";
		card_stage=1; card_evo[0]=435;
		card_type_a=12; card_type_b=17;
		card_base_hp=63; card_base_atk=63; card_base_def=47;
		card_grid_x=14; card_grid_y=4; break;
	case 435:
		card_name="Skuntank";
		card_stage=2;
		card_type_a=12; card_type_b=17;
		card_base_hp=103; card_base_atk=93; card_base_def=67;
		card_grid_x=15; card_grid_y=4; break;
	case 436:
		card_name="Bronzor";
		card_stage=1; card_evo[0]=437;
		card_type_a=15; card_type_b=07;
		card_base_hp=57; card_base_atk=24; card_base_def=86;
		card_grid_x=1; card_grid_y=5; break;
	case 437:
		card_name="Bronzong";
		card_stage=2;
		card_type_a=15; card_type_b=07;
		card_base_hp=67; card_base_atk=89; card_base_def=116;
		card_grid_x=2; card_grid_y=5; break;
	case 438:
		card_name="Bonsly";
		card_stage=0; card_evo[0]=185;
		card_type_a=10; card_type_b=-1;
		card_base_hp=50; card_base_atk=80; card_base_def=95;
		card_grid_x=3; card_grid_y=5; break;
	case 439:
		card_name="Mime Jr.";
		card_stage=0; card_evo[0]=122;
		card_type_a=07; card_type_b=08;
		card_base_hp=20; card_base_atk=25; card_base_def=45;
		card_grid_x=4; card_grid_y=5; break;
	case 440:
		card_name="Happiny";
		card_stage=0; card_evo[0]=113;
		card_type_a=00; card_type_b=-1;
		card_base_hp=100; card_base_atk=5; card_base_def=5;
		card_grid_x=5; card_grid_y=5; break;
	case 441:
		card_name="Chatot";
		card_stage=1;
		card_type_a=00; card_type_b=05;
		card_base_hp=76; card_base_atk=65; card_base_def=45;
		card_grid_x=6; card_grid_y=5; break;
	case 442:
		card_name="Spiritomb";
		card_stage=1;
		card_type_a=16; card_type_b=17;
		card_base_hp=50; card_base_atk=92; card_base_def=108;
		card_grid_x=7; card_grid_y=5; break;
	case 443:
		card_name="Gible";
		card_stage=1; card_evo[0]=444; card_pseudo=true;
		card_type_a=14; card_type_b=09;
		card_base_hp=58; card_base_atk=70; card_base_def=45;
		card_grid_x=8; card_grid_y=5; break;
	case 444:
		card_name="Gabite";
		card_stage=2; card_evo[0]=445; card_pseudo=true;
		card_type_a=14; card_type_b=09;
		card_base_hp=68; card_base_atk=90; card_base_def=65;
		card_grid_x=9; card_grid_y=5; break;
	case 445:
		card_name="Garchomp";
		card_stage=3; card_pseudo=true;
		card_type_a=14; card_type_b=09;
		card_base_hp=108; card_base_atk=130; card_base_def=95;
		card_grid_x=10; card_grid_y=5; break;
	case 446:
		card_name="Munchlax";
		card_stage=0; card_evo[0]=143;
		card_type_a=00; card_type_b=-1;
		card_base_hp=135; card_base_atk=85; card_base_def=40;
		card_grid_x=12; card_grid_y=5; break;
	case 447:
		card_name="Riolu"; //best boi
		card_stage=0; card_evo[0]=448;
		card_type_a=06; card_type_b=-1;
		card_base_hp=40; card_base_atk=70; card_base_def=40;
		card_grid_x=13; card_grid_y=5; break;
	case 448:
		card_name="Lucario";
		card_stage=1;
		card_type_a=06; card_type_b=15;
		card_base_hp=70; card_base_atk=110; card_base_def=70;
		card_grid_x=14; card_grid_y=5; break;
	case 449:
		card_name="Hippopotas";
		card_stage=1; card_evo[0]=450;
		card_type_a=09; card_type_b=-1;
		card_base_hp=68; card_base_atk=72; card_base_def=78;
		card_grid_x=1; card_grid_y=6; break;
	case 450:
		card_name="Hippowdon";
		card_stage=2;
		card_type_a=09; card_type_b=-1;
		card_base_hp=108; card_base_atk=112; card_base_def=118;
		card_grid_x=2; card_grid_y=6; break;
	case 451:
		card_name="Skorupi";
		card_stage=1; card_evo[0]=452;
		card_type_a=12; card_type_b=11;
		card_base_hp=40; card_base_atk=50; card_base_def=90;
		card_grid_x=3; card_grid_y=6; break;
	case 452:
		card_name="Drapion";
		card_stage=2;
		card_type_a=12; card_type_b=17;
		card_base_hp=70; card_base_atk=90; card_base_def=110;
		card_grid_x=4; card_grid_y=6; break;
	case 453:
		card_name="Croagunk";
		card_stage=1; card_evo[0]=454;
		card_type_a=12; card_type_b=06;
		card_base_hp=48; card_base_atk=61; card_base_def=40;
		card_grid_x=5; card_grid_y=6; break;
	case 454:
		card_name="Toxicroak";
		card_stage=2;
		card_type_a=12; card_type_b=06;
		card_base_hp=83; card_base_atk=106; card_base_def=65;
		card_grid_x=6; card_grid_y=6; break;
	case 455:
		card_name="Carnivine";
		card_stage=1;
		card_type_a=01; card_type_b=-1;
		card_base_hp=74; card_base_atk=100; card_base_def=72;
		card_grid_x=7; card_grid_y=6; break;
	case 456:
		card_name="Finneon";
		card_stage=1; card_evo[0]=457;
		card_type_a=03; card_type_b=-1;
		card_base_hp=49; card_base_atk=49; card_base_def=56;
		card_grid_x=8; card_grid_y=6; break;
	case 457:
		card_name="Lumineon";
		card_stage=2;
		card_type_a=03; card_type_b=-1;
		card_base_hp=69; card_base_atk=69; card_base_def=76;
		card_grid_x=9; card_grid_y=6; break;
	case 458:
		card_name="Mantyke";
		card_stage=0; card_evo[0]=226;
		card_type_a=03; card_type_b=05;
		card_base_hp=45; card_base_atk=20; card_base_def=50;
		card_grid_x=10; card_grid_y=6; break;
	case 459:
		card_name="Snover";
		card_stage=1; card_evo[0]=460;
		card_type_a=01; card_type_b=13;
		card_base_hp=60; card_base_atk=62; card_base_def=50;
		card_grid_x=11; card_grid_y=6; break;
	case 460:
		card_name="Abomasnow";
		card_stage=2;
		card_type_a=01; card_type_b=13;
		card_base_hp=90; card_base_atk=92; card_base_def=75;
		card_grid_x=12; card_grid_y=6; break;
	case 461:
		card_name="Weavile";
		card_stage=2;
		card_type_a=17; card_type_b=13;
		card_base_hp=70; card_base_atk=120; card_base_def=65;
		card_grid_x=14; card_grid_y=6; break;
	case 462:
		card_name="Magnezone";
		card_stage=3;
		card_type_a=04; card_type_b=15;
		card_base_hp=70; card_base_atk=70; card_base_def=115;
		card_grid_x=15; card_grid_y=6; break;
	case 463:
		card_name="Lickilicky";
		card_stage=2;
		card_type_a=00; card_type_b=-1;
		card_base_hp=110; card_base_atk=85; card_base_def=95;
		card_grid_x=1; card_grid_y=7; break;
	case 464:
		card_name="Rhyperior";
		card_stage=3;
		card_type_a=09; card_type_b=10;
		card_base_hp=115; card_base_atk=140; card_base_def=130;
		card_grid_x=2; card_grid_y=7; break;
	case 465:
		card_name="Tangrowth";
		card_stage=2;
		card_type_a=01; card_type_b=-1;
		card_base_hp=100; card_base_atk=100; card_base_def=100;
		card_grid_x=3; card_grid_y=7; break;
	case 466:
		card_name="Electivire";
		card_stage=2;
		card_type_a=04; card_type_b=-1;
		card_base_hp=75; card_base_atk=123; card_base_def=67;
		card_grid_x=4; card_grid_y=7; break;
	case 467:
		card_name="Magmortar";
		card_stage=2;
		card_type_a=02; card_type_b=-1;
		card_base_hp=75; card_base_atk=95; card_base_def=67;
		card_grid_x=5; card_grid_y=7; break;
	case 468:
		card_name="Togekiss";
		card_stage=2;
		card_type_a=08; card_type_b=05;
		card_base_hp=85; card_base_atk=50; card_base_def=95;
		card_grid_x=7; card_grid_y=7; break;
	case 469:
		card_name="Yanmega";
		card_stage=2;
		card_type_a=11; card_type_b=05;
		card_base_hp=86; card_base_atk=76; card_base_def=86;
		card_grid_x=9; card_grid_y=7; break;
	case 470:
		card_name="Leafeon";
		card_stage=2;
		card_type_a=01; card_type_b=-1;
		card_base_hp=65; card_base_atk=110; card_base_def=130;
		card_grid_x=10; card_grid_y=7; break;
	case 471:
		card_name="Glaceon";
		card_stage=2;
		card_type_a=13; card_type_b=-1;
		card_base_hp=65; card_base_atk=60; card_base_def=110;
		card_grid_x=11; card_grid_y=7; break;
	case 472:
		card_name="Gliscor";
		card_stage=2;
		card_type_a=09; card_type_b=05;
		card_base_hp=75; card_base_atk=95; card_base_def=100;
		card_grid_x=12; card_grid_y=7; break;
	case 473:
		card_name="Mamoswine";
		card_stage=3;
		card_type_a=13; card_type_b=09;
		card_base_hp=110; card_base_atk=130; card_base_def=80;
		card_grid_x=13; card_grid_y=7; break;
	case 474:
		card_name="Porygon-Z";
		card_stage=3;
		card_type_a=00; card_type_b=-1;
		card_base_hp=85; card_base_atk=80; card_base_def=70;
		card_grid_x=14; card_grid_y=7; break;
	case 475:
		card_name="Gallade";
		card_stage=3;
		card_type_a=07; card_type_b=06;
		card_base_hp=68; card_base_atk=100; card_base_def=65;
		card_grid_x=15; card_grid_y=7; break;
	case 476:
		card_name="Probopass";
		card_stage=2;
		card_type_a=10; card_type_b=15;
		card_base_hp=60; card_base_atk=55; card_base_def=145;
		card_grid_x=2; card_grid_y=8; break;
	case 477:
		card_name="Dusknoir";
		card_stage=3;
		card_type_a=16; card_type_b=-1;
		card_base_hp=45; card_base_atk=100; card_base_def=135;
		card_grid_x=3; card_grid_y=8; break;
	case 478:
		card_name="Froslass";
		card_stage=2;
		card_type_a=13; card_type_b=16;
		card_base_hp=70; card_base_atk=80; card_base_def=70;
		card_grid_x=4; card_grid_y=8; break;
	case 479:
		card_name="Rotom";
		card_stage=1; //card_form_value values referenced manually in ob_event when changing form
		card_type_a=04;
		if card_form_value<175 { //rotom
			card_type_b=16;
			card_base_hp=50; card_base_atk=50; card_base_def=77;
			card_grid_x=9; card_grid_y=8; }
		else {
			card_base_hp=50; card_base_atk=65; card_base_def=107;
			if card_form_value<340 { //heat rotom
				card_type_b=02;
				card_grid_x=8; card_grid_y=8; }
			else if card_form_value<505 { //wash rotom
				card_type_b=03;
				card_grid_x=10; card_grid_y=8; }
			else if card_form_value<670 { //frost rotom
				card_type_b=13;
				card_grid_x=5; card_grid_y=8; }
			else if card_form_value<835 { //fan rotom
				card_type_b=05;
				card_grid_x=7; card_grid_y=8; }
			else if card_form_value<1000 { //mow rotom
				card_type_b=01;
				card_grid_x=6; card_grid_y=8; }
		} break;
	case 480:
		card_name="Uxie";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=75; card_base_atk=75; card_base_def=130;
		card_grid_x=12; card_grid_y=8; break;
	case 481:
		card_name="Mesprit";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=80; card_base_atk=105; card_base_def=105;
		card_grid_x=13; card_grid_y=8; break;
	case 482:
		card_name="Azelf";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=75; card_base_atk=100; card_base_def=70;
		card_grid_x=14; card_grid_y=8; break;
	case 483:
		card_name="Dialga";
		card_stage=1; card_enigma=true;
		card_type_a=15; card_type_b=14;
		card_base_hp=100; card_base_atk=120; card_base_def=120;
		card_grid_x=15; card_grid_y=8; break;
	case 484:
		card_name="Palkia";
		card_stage=1; card_enigma=true;
		card_type_a=03; card_type_b=14;
		card_base_hp=90; card_base_atk=120; card_base_def=100;
		card_grid_x=1; card_grid_y=9; break;
	case 485:
		card_name="Heatran";
		card_stage=1; card_enigma=true;
		card_type_a=02; card_type_b=15;
		card_base_hp=91; card_base_atk=90; card_base_def=106;
		card_grid_x=2; card_grid_y=9; break;
	case 486:
		card_name="Regigigas";
		card_stage=1; card_enigma=true;
		card_type_a=00; card_type_b=-1;
		card_base_hp=110; card_base_atk=160; card_base_def=110;
		card_grid_x=3; card_grid_y=9; break;
	case 487:
		card_name="Giratina";
		card_stage=1; card_enigma=true; //card_form_value values referenced manually in ob_event when changing form
		card_type_a=16; card_type_b=14;
		if card_form_value<500 { //altered forme
			card_base_hp=75; card_base_atk=100; card_base_def=60;
			card_grid_x=4; card_grid_y=9; }
		else if card_form_value<1000 { //origin forme
			card_base_hp=75; card_base_atk=60; card_base_def=100;
			card_grid_x=5; card_grid_y=9; }
		break;
	case 488:
		card_name="Cresselia";
		card_stage=1; card_enigma=true;
		card_type_a=07; card_type_b=-1;
		card_base_hp=120; card_base_atk=70; card_base_def=110;
		card_grid_x=6; card_grid_y=9; break;
	case 489:
		card_name="Phione";
		card_stage=1; card_enigma=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=80; card_base_atk=80; card_base_def=80;
		card_grid_x=7; card_grid_y=9; break;
	case 490:
		card_name="Manaphy";
		card_stage=1; card_enigma=true;
		card_type_a=03; card_type_b=-1;
		card_base_hp=100; card_base_atk=100; card_base_def=100;
		card_grid_x=8; card_grid_y=9; break;
	case 491:
		card_name="Darkrai";
		card_stage=1; card_enigma=true;
		card_type_a=17; card_type_b=-1;
		card_base_hp=70; card_base_atk=90; card_base_def=90;
		card_grid_x=9; card_grid_y=9; break;
	case 492:
		card_name="Shaymin";
		card_stage=1; card_enigma=true; //card_form_value values referenced manually in ob_event when changing form
		card_type_a=01;
		if card_form_value<500 { //land forme
			card_type_b=-1;
			card_base_hp=100; card_base_atk=100; card_base_def=100;
			card_grid_x=10; card_grid_y=9; }
		else if card_form_value<1000 { //sky forme
			card_type_b=05;
			card_base_hp=100; card_base_atk=103; card_base_def=75;
			card_grid_x=11; card_grid_y=9; }
		break;
	case 493:
		card_name="Arceus";
		card_stage=1; card_enigma=true;
		card_type_a=00; card_type_b=-1;
		card_base_hp=120; card_base_atk=120; card_base_def=120;
		card_grid_x=13; card_grid_y=9; break;
	//
	case 2001:
		card_name="MissingNo.";
		card_stage=1; card_secret=true;
		card_type_a=05; card_type_b=00;
		card_base_hp=33; card_base_atk=136; card_base_def=0;
		card_grid_x=1; card_grid_y=1; break;
	case 2002:
		card_name="-"; //GHOST: Marowak, but with 1 base HP
		card_stage=1; card_secret=true;
		card_type_a=16; card_type_b=-1;
		card_base_hp=1; card_base_atk=80; card_base_def=110;
		card_grid_x=2; card_grid_y=1; break;
	case 2003:
		card_name="Allie"; //Maractus, but half attack
		card_stage=1; card_secret=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=75; card_base_atk=43; card_base_def=67;
		card_grid_x=3; card_grid_y=1; break;
	case 2004:
		card_name="Faunazon";
		card_stage=1; card_secret=true;
		card_type_a=01; card_type_b=08;
		card_base_hp=65; card_base_atk=70; card_base_def=70;
		card_grid_x=4; card_grid_y=1; break;
	//
	case 2501:
		card_name="Elm Tree";
		card_stage=1; card_environment=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=255; card_base_atk=0; card_base_def=90; //hp 4-28, def 0-3
		card_grid_x=1; card_grid_y=14; break;
	case 2502:
		card_name="Spruce Tree";
		card_stage=1; card_environment=true;
		card_type_a=01; card_type_b=-1;
		card_base_hp=210; card_base_atk=0; card_base_def=75; //hp 3-25, def 0-4
		card_grid_x=2; card_grid_y=14; break;
	case 2503:
		card_name="Rock";
		card_stage=1; card_environment=true;
		card_type_a=10; card_type_b=-1;
		card_base_hp=130; card_base_atk=0; card_base_def=100; //hp 3-20, def 1-5
		card_grid_x=3; card_grid_y=14; break;
	case 2504:
		card_name="Volcanic Tree";
		card_stage=1; card_environment=true;
		card_type_a=01; card_type_b=02;
		card_base_hp=85; card_base_atk=0; card_base_def=75; //hp 3-23, def 0-4
		card_grid_x=4; card_grid_y=14; break;
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}