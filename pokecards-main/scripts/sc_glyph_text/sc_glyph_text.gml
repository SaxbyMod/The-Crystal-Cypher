function sc_glyph_text(argument0,argument1) {
/// @param glyph
/// @param get_line_total
//————————————————————————————————————————————————————————————————————————————————————————————————————
if argument1=false {
	switch (argument0) {
		case ref_glyph_lucky: return "// LUCKY //\nGrants 2 DP (Draw Points) when played."; break;
		case ref_glyph_harvest: return "// HARVEST //\nConsumed Berries return to hand (if not full) when fainting."; break;
		case ref_glyph_debilitate: return "// DEBILITATE //\nThe opposing card's attack is lowered by 2."; break;
		case ref_glyph_ruthless: return "// RUTHLESS //\nThe opposing card's defense is lowered by 2."; break;
		case ref_glyph_courage: return "// COURAGE //\nRaises attack of nearby friendly Pokemon by 2."; break;
		case ref_glyph_piercing: return "// PIERCING ATTACK //\nAlways attacks the enemy trainer directly."; break;
		case ref_glyph_counter: return "// COUNTERATTACK //\nWhen attacked, the attacker is also hurt (without fainting)."; break;
		case ref_glyph_shield: return "// SHIELD //\nRaises defense of nearby friendly cards by 2."; break;
		case ref_glyph_medic: return "// MEDIC //\nFully heals all friendly cards when played."; break;
		case ref_glyph_tenacity: return "// TENACITY //\nWhen fainting, it has a 50% chance to return to hand (if not full)."; break;
		case ref_glyph_bulwark: return "// BULWARK //\nSummons self-healing rocks on each side when played."; break;
		case ref_glyph_fork: return "// FORK ATTACK //\nAttacks diagonally to its sides (twice) instead of straight ahead,\nbut base attack is reduced by 1/3, rounded up."; break;
		case ref_glyph_vampire: return "// VAMPIRE //\nWhen attacking another card, half of the damage is absorbed."; break;
		case ref_glyph_curse: return "// CURSE //\nWhen fainting, the enemy card is left with 1 HP."; break;
		case ref_glyph_memento: return "// MEMENTO //\nGrants 2 DP (Draw Points) when fainting."; break;
		case ref_glyph_berserk: return "// BERSERK //\nWhen HP is 1/3 or less (or just 1, if hurt),\nbase attack is doubled."; break;
		case ref_glyph_adaptability: return "// ADAPTABILITY //\nType-advantage attacks deal 3 extra points of bonus damage."; break;
		case ref_glyph_recovery: return "// RECOVERY //\nRecovers 1 HP at the beginning of each active turn."; break;
		case ref_glyph_inertia: return "// INERTIA //\nGrants 1 DP (Draw Points) whenever it destroys another card."; break;
		case ref_glyph_motivation: return "// MOTIVATION //\nRaises a Pokemon's attack and defense by 2 when HP is full."; break;
		//
		case ref_glyph_mist: return "// MIST //\nWhile this card is active, Glyphs have no effect."; break;
		case ref_glyph_imposter: return "// IMPOSTER //\nTransforms into the opposing enemy Pokemon."; break;
		case ref_glyph_palette: return "// PALETTE //\nCopies the opposing enemy Pokemon's types."; break;
		case ref_glyph_setback: return "// SETBACK //\nLowers attack by 1/3 at all times, rounded up."; break;
		case ref_glyph_might: return "// MIGHT //\nRaises attack by 1 at all times."; break;
		case ref_glyph_aegis: return "// AEGIS //\nGrants impenetrable defense."; break;
		case ref_glyph_magnetism_p: return "// MAGNETISM //\nRaises attack by 2 if Minun is also played."; break;
		case ref_glyph_magnetism_m: return "// MAGNETISM //\nRaises attack by 2 if Plusle is also played."; break;
		case ref_glyph_sunlight: return "// SUNLIGHT //\nRaises attack and defense by 1 when HP is full."; break;
		case ref_glyph_mindful: return "// MINDFUL //\nGrants 1 DP (Draw Points) when played."; break;
		case ref_glyph_intimidate: return "// INTIMIDATE //\nThe opposing card's attack is lowered by 1."; break;
		case ref_glyph_guru: return "// GURU //\nAdditional Glyphs don't increase this card's Berry cost."; break;
		case ref_glyph_confidence: return "// CONFIDENCE //\nType-advantage attacks deal 1 extra point of bonus damage."; break;
	}
}
else {
	switch (argument0) {
		case ref_glyph_fork: return 3; break;
		case ref_glyph_berserk: return 3; break;
		default: return 2;
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}