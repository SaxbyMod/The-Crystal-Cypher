load_game--;
//
if load_game=0 {
	//this fixes a random Game Maker bug that makes the window disappear when alt-tabbing in full screen
	room_goto(rm_main);
}