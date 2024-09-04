function sc_textbox(argument0) {
/// @param message_set
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0<=21 { //tutorial
	if ob_main.berry_num_used[0][0]>0 {
		var berry_name="Oran";
		var normal_card="Rattata";
		var misc_card="Pidgey";
		var flying_card="Spearow";
	}
	else if ob_main.berry_num_used[1][0]>0 {
		var berry_name="Leppa";
		var normal_card="Sentret";
		var misc_card="Geodude";
		var flying_card="Hoothoot";
	}
	else if ob_main.berry_num_used[2][0]>0 {
		var berry_name="Lum";
		var normal_card="Zigzagoon";
		var misc_card="Taillow";
		var flying_card="Starly";
	}
}
//
if ob_main.stats_league_won=0 { var rematch_text=""; }
else { var rematch_text=" (Rematch)"; }
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument0=0 {
	ob_main.textbox_string[0]="Welcome to the world of Pokemon cards!";
	ob_main.textbox_string[1]="I am Prof. Aspen of the Kyoumu region, here to help you with the basics.";
	ob_main.textbox_string[2]="Do you think you have what it takes to be the next Crystal League Champion? Well, let's start from the beginning! Pick your Starter Deck.";
}
else if argument0=1 {
	ob_main.textbox_string[0]="Excellent choice! Now go to your deck and equip your newly acquired cards. Make sure to include all of your Berries too, you'll need them!";
	ob_main.textbox_string[1]="When you're done, come back here and let's get things started. Or, if you're already familiar with the rules, feel free to get a Payout instead!";
}
else if argument0=2 {
	ob_main.textbox_string[0]="Please go to your deck and equip all of your newly acquired cards!";
}
else if argument0=3 {
	ob_main.textbox_string[0]="Alright, here we go! Are you ready?";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=4 { //tutorial: new turn
	ob_main.textbox_string[0]="Welcome to your very first card battle! Don't worry if it seems complicated at first, the rules are actually quite simple.";
	ob_main.textbox_string[1]="It's your turn first, so let's start by drawing cards.\nOn your first turn, you always get 5 Draw Points, or \"DP\". These are used to draw Pokemon and Berries from your decks.";
	ob_main.textbox_string[2]="Berries are used to play your Pokemon, so both decks are important.\nThere's 3 common types of Berries: Oran Berries, Leppa Berries, and Lum Berries. Most Pokemon require one of these to be played.";
	ob_main.textbox_string[3]="Right now you have 5 DP, which means you can draw cards!\nDrawing a Pokemon costs 2 DP, while drawing Berries costs only 1 DP. Go ahead and draw, let's say, 2 Pokemon and 1 Berry.";
}
else if argument0=5 { //tutorial: drawn
	ob_main.textbox_string[0]="Good! It seems both of your Pokemon require " + berry_name + " Berries to be played (you can see the little Berry icon next to their picture). Play the " + berry_name + " Berry you just got anywhere you want, and then play your " + normal_card + " on top of it.";
	ob_main.textbox_string[1]="Pokemon can't attack during your first turn, so once your " + normal_card + " is played, click the big green button to end your turn.";
}
else if argument0=6 { //tutorial: new turn
	ob_main.textbox_string[0]="I played my Sentret, but since it was my first turn, I couldn't attack either.";
	ob_main.textbox_string[1]="It is now your turn again! You get 2 DP on all turns after your first. Go ahead and draw two more Berries, so that you can play your " + misc_card + "!";
}
else if argument0=7 { //tutorial: drawn
	ob_main.textbox_string[0]="Good! Play your " + misc_card + " in front of my Sentret, blocking them. Then, attack with both your Pokemon by clicking on them!";
}
else if argument0=8 { //tutorial: attacked
	ob_main.textbox_string[0]="Good job! Your " + misc_card + " attacked my Sentret, dealing damage equal to your " + misc_card + "'s attack minus my Sentret's defense. And your " + normal_card + " was unopposed, dealing damage to my Hit Points directly.";
	ob_main.textbox_string[1]="As you can see on the right, the Hit Points bar is now tipped in your favor. Each point of damage dealt directly reduces your opponent's Hit Points while increasing your own.";
	ob_main.textbox_string[2]="When your opponent's Hit Points reach 0, you win! You already took an early step towards victory!";
}
else if argument0=9 { //tutorial: new turn
	ob_main.textbox_string[0]="It's your turn again! You have a Berry on your hand, but no Pokemon to play. Draw another Pokemon next, then play it and attack!";
}
else if argument0=12 { //tutorial: new turn
	ob_main.textbox_string[0]="Next turn! You have no cards to play right now. Draw another Pokemon, then attack once again with the ones already on the battlefield!";
}
else if argument0=15 { //tutorial: new turn
	ob_main.textbox_string[0]="What a lucky draw, your " + flying_card + " has a type advantage over the Sunkern I played! This is the perfect time to draw some more Berries.";
}
else if argument0=16 { //tutorial: drawn
	ob_main.textbox_string[0]="Excellent! When a Pokemon has a type advantage over another, their attacks will always deal at least 1 extra point of damage (plus 1 every four levels), even if the receiving Pokemon has a higher defense.";
	ob_main.textbox_string[1]="Contrary to real Pokemon though, type advantages in cards only deal bonus damage. This means there are no type resistances or immunities, and Pokemon that are weak to a certain type will always receive extra damage from it.";
	ob_main.textbox_string[2]="This makes it so that, for example, Bulbasaur (a Grass/Poison Pokemon) will always deal bonus damage to other Bulbasaurs, since Poison has an advantage over Grass!";
	ob_main.textbox_string[3]="But anyway, go ahead and play your " + flying_card + " right in front of my Sunkern. Then attack to take them out in one hit!";
}
else if argument0=17 { //tutorial: attacked
	ob_main.textbox_string[0]="Ouch! I wasn't expecting our battle to go this way, but it's definitely a good lesson! For both of us.";
}
else if argument0=18 { //tutorial: new turn
	ob_main.textbox_string[0]="My Magikarp has a Glyph! Glyphs are unique abilities that can be added to cards. This one lowers the attack of any card opposing them.";
	ob_main.textbox_string[1]="Before teaching a Glyph to one of your cards though, you should know that Pokemon usually increase their Berry cost the first time they learn a Glyph, and they can't be forgotten afterwards, so choose carefully!";
	ob_main.textbox_string[2]="Each card can have up to 3 different Glyphs. You can see what any of them does by placing your mouse over its icon, so look around!";
	ob_main.textbox_string[3]="But anyway! Draw your last Pokemon from your deck, and play it in front of my Bidoof to take them out. Then attack with the rest of your Pokemon as well!";
}
else if argument0=21 { //tutorial: new turn
	ob_main.textbox_string[0]="It seems our battle is almost over! Attack once more with your Pokemon to deal the final blow and take me down.";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=22 {
	ob_main.textbox_string[0]="That was a great battle! You clearly have a talent for cards. But, talent is little without practice!";
	ob_main.textbox_string[1]="To be able to battle in the Crystal League, you first need to build up your team and gain experience. Your goal is to travel through Kyoumu, and challenge each of the gym leaders from the eight major cities in the region.";
	ob_main.textbox_string[2]="Along the way, you'll be presented with numerous choices to expand your deck, strengthen your cards and battle other trainers.";
	ob_main.textbox_string[3]="Here's your first set of choices: you can either get a card pack with three new cards and a random Berry, or pick up a free card from a random set of three. The choice is yours!";
	ob_main.textbox_string[4]="After that, your first stop will be to challenge Gym Leader Ian in Iris Town. It will be hard, but don't give up!";
	ob_main.textbox_string[5]="Safe travels, kid! I believe in you!";
}
else if argument0=29 {
	ob_main.textbox_string[0]="Not enough cards in deck. A minimum of " + string(ob_main.maindeck_size_min) + " cards is required for this battle.";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=30 { //IAN
	ob_main.textbox_string[0]="GYM LEADER: Ian" + rematch_text + ".\nGYM LOCATION: Iris Town.\nMAIN DECK TYPES: Normal, Flying.";
	//ob_main.textbox_string[1]="People think normal-type and flying-type Pokemon are weak, but I'm delighted to prove them wrong. Get ready!";
}
else if argument0=31 { //CAMMIE
	ob_main.textbox_string[0]="GYM LEADER: Cammie" + rematch_text + ".\nGYM LOCATION: Camellia City.\nMAIN DECK TYPES: Grass, Ground, Rock.";
}
else if argument0=32 { //WALKER
	ob_main.textbox_string[0]="GYM LEADER: Walker" + rematch_text + ".\nGYM LOCATION: Bluestar City.\nMAIN DECK TYPES: Water, Ice.";
}
else if argument0=33 { //MADISON
	ob_main.textbox_string[0]="GYM LEADER: Madison" + rematch_text + ".\nGYM LOCATION: Marigold City.\nMAIN DECK TYPES: Fire, Steel.";
}
else if argument0=34 { //ZOE
	ob_main.textbox_string[0]="GYM LEADER: Zoe" + rematch_text + ".\nGYM LOCATION: Zinnia Town.\nMAIN DECK TYPE: Electric.";
}
else if argument0=35 { //VINCENT
	ob_main.textbox_string[0]="GYM LEADER: Vincent" + rematch_text + ".\nGYM LOCATION: Verbena City.\nMAIN DECK TYPES: Fighting, Dark.";
}
else if argument0=36 { //PENNY
	ob_main.textbox_string[0]="GYM LEADER: Penny" + rematch_text + ".\nGYM LOCATION: Candytuft City.\nMAIN DECK TYPES: Psychic, Ghost, Fairy.";
}
else if argument0=37 { //LAKE
	ob_main.textbox_string[0]="GYM LEADER: Lake" + rematch_text + ".\nGYM LOCATION: Lupine City.\nMAIN DECK TYPES: Grass, Fire, Water.";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=40 { //EMILY
	ob_main.textbox_string[0]="KYOUMU ELITE FOUR, BATTLE ONE: Emily" + rematch_text + ".\nThe Blazing Darkness.";
}
else if argument0=41 { //FINN
	ob_main.textbox_string[0]="KYOUMU ELITE FOUR, BATTLE TWO: Finn" + rematch_text + ".\nThe Venomous Slayer.";
}
else if argument0=42 { //DION
	ob_main.textbox_string[0]="KYOUMU ELITE FOUR, BATTLE THREE: Dion" + rematch_text + ".\nThe Winged Fist.";
}
else if argument0=43 { //APRIL
	ob_main.textbox_string[0]="KYOUMU ELITE FOUR, BATTLE FOUR: April" + rematch_text + ".\nThe Raging Winter.";
}
else if argument0=44 { //DUNCAN
	ob_main.textbox_string[0]="KYOUMU CRYSTAL LEAGUE, FINAL BATTLE: Duncan" + rematch_text + ".\nThe Crystal Champion.";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if argument0=50 {
	ob_main.textbox_string[0]="And thus, after a long series of arduous battles, our hero overcame their challenges and rose to be the next Crystal League Champion...";
	ob_main.textbox_string[1]="But was this the end of their journey, or simply the beginning of a greater adventure? What awaited them on the road ahead?";
	ob_main.textbox_string[2]="Perhaps the future would reveal it in due time. But for now, it was time for a well-deserved rest...";
	ob_main.textbox_string[3]="Thanks everybody for watching our show, and don't forget to tune in next time for more exciting adventures!";
	ob_main.textbox_string[4]="- T H E   E N D -";
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}