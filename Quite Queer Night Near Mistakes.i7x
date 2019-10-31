Version 1/191030 of Quite Queer Night Near Mistakes by Andrew Schultz begins here.

"Mistake/good guess tables for Quite Queer Night Near."

table of mistake substitutions
mist-cmd(topic)	mist-rule	got-yet	w1let	w2let	leet-rule	mist-txt
"light leer"	in-bight-bier rule	false	5	4	fear-to-fight rule	"No, facial expressions aren't enough, here." [start bight bier]
"shite sheer"	in-bight-bier rule	false	5	4	fear-to-fight rule	"Getting mad doesn't necessarily help here."
"right rear"	in-bight-bier rule	false	5	4	fear-to-fight rule	"You are right in the rear, but you need to move on."
"height here"	in-bight-bier rule	false	5	4	fear-to-fight rule	"How physically low or high you are isn't important. It's the mental bit."
"white wier"	in-bight-bier rule	false	5	4	fear-to-fight rule	"No fence appears."
"sight seer"	in-bight-bier rule	false	5	4	fear-to-fight rule	"Yes, you're a sight seer."
"link lug"	lug-nearby rule	false	4	3	--	"You need to make the thug much less intimidating."
"fink fug"	lug-nearby rule	false	4	3	--	"No fog carries the Think Thug away."
"mink mug"	lug-nearby rule	false	4	3	--	"The Think Thug is too smart to be upset for being called a rat-face or whatever."
"mare moans"	in-stones rule	false	4	3	--	"Horses whinny in the distance." [start stair stones]
"hark hump"	in-dark-dump rule 	false	4	4	--	"Perhaps some specificity of what sort of hump would be nice." [start dark dump]
"lark lump"	in-dark-dump rule 	false	4	4	--	"Eww, dead birds?"
"mark mump"	in-dark-dump rule 	false	4	4	--	"You don't want half a sickness, even a temporary one."
"hastur hate"	in-gaster-gate rule 	false	7	5	plates-needed rule	"Oh no. You don't need to make things worse." [start gaster gate]
"raster rate"	in-gaster-gate rule 	false	7	5	plates-needed rule	"Your text adventure remains totally texty."
"boar/bore bulge"	in-gore-gulch rule 	false	5	4	--	"That's a bit of a stretch, but Gore Gulch remains unstretched." [start gore gulch]
"bold bail/bowl/bale"	in-gore-gulch rule 	false	7	5	--	"You don't have to be bold. The gaol is unguarded." [start gold gaol]
"fold fail"	in-gold-gaol rule 	true	4	4	--	"You don't have to be bold. The gaol is unguarded."
"sold sail/sale"	in-gold-gaol rule 	true	4	4	--	"You don't have to be buy anything."
"wold wail/whale"	in-gore-gulch rule 	true	4	4	--	"Nothing too drastic, here."

section rules

[xxqqmi]

this is the fear-to-fight rule: if ts-fight-fear is false, the rule succeeds;

this is the lug-nearby rule: if think thug is touchable, the rule succeeds;

this is the in-stones rule: if player is in Stair Stones, the rule succeeds;

this is the in-bight-bier rule: if player is in Bight Bier, the rule succeeds;

this is the in-dark-dump rule: if player is in Dark Dump, the rule succeeds;

this is the in-gold-gaol rule: if player is in Gold Gaol, the rule succeeds;

this is the in-gore-gulch rule: if player is in Gore Gulch, the rule succeeds;

this is the in-gaster-gate rule: if player is in Gaster Gate, the rule succeeds;

this is the plates-needed rule: if master mate is not moot, the rule succeeds;

Quite Queer Night Near Mistakes ends here.

[zzqqmi]

---- DOCUMENTATION ----
