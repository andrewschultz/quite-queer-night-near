Version 1/191030 of Quite Queer Night Near Mistakes by Andrew Schultz begins here.

"Mistake/good guess tables for Quite Queer Night Near."

[#! sounds: b k d f g h j l m n p r s t v w x z (c q x in others)
#! sounds: bl br cl cr dr fl fr gl gr pl pr sk sl sp st sw spr str tr
#! sounds: ch sh th(ing) th(is) wh ng nk]

[the magic numbers column deserves an explanation. Usually it will be (10*expected length of first word) + (expected length of second word). However, in some cases, this is variable. Then we have a magic number from -10 to 10. This is converted, via variable-scan-length, to a two-digit number as above, possibly negative.
Also, if a final number is negative, that means what you almost rhymed is optional.]

table of good guess rhymes
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	still-rule	mist-txt
"flight fleer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You need to get less scared, not more. Plus, there's nowhere to run, anyway." [start bight bier]
"light leer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"No, facial expressions aren't enough, here. Especially expressions of contempt."
"height here"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"How physically low or high you are isn't important. It's the mental bit."
"kite keyer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You don't need the risk of getting zapped by electricity, too."
"might/mite mere"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You'd still be scared, reducing your antagonist's strength. You'd be scared of even losing to them. What can you do to stop being scared?"
"right rear"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You are right in the rear, but you need to move on."
"shite sheer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"Getting mad doesn't necessarily help here."
"smite smear"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You don't need violence or a battle cry."
"sight/site seer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"Yes, you're a sight seer."
"skite skier"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"Too archaic, and you would gain no joy seeing someone else mess up."
"plight pleaer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"Seeing someone else scared and begging won't help you."
"sprite spreer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"Chugging pop will not help in your present circumstances."
"white wier/weir"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"No fence appears."
"tight tier/tear"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You think up all the formal and informal meanings of the word tight, but nothing pops up."
"trite treer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You don't need anything to be chasing you up a tree, hackneyed or otherwise."
"beep beat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"You imagine an eternity spent listening to funky techno music. Scary!"
"meep meat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"No roadrunner whizzes by, and neither does a devious, planning coyote."
"deep deet"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-untaken rule	"[if player has sheep sheet][sheet-spoil][else]You can't see any deep details, but maybe when you take the sheet...[end if]"
"creep crete"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"You fail to hyperwarp across the Mediterranean."
"leap leet"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"You take a giant step towards understanding a tricky science concept from high school."
"neep neat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"You see no turnip turn up."
"peep peat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"The ground around you remains hard."
"seep seat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"What on earth would you do with a leaky chair?"
"streep street"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"Stalking an actress is scary, yes, but we're not going for that sort of scary."
"sweep suite/sweet"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"Neither a favorite team's success nor drudgery will get your mind off things."
"weep wheat"	sheet-nearby rule	false	44	sheet-untaken rule	sheet-available rule	"The ground remains unarable."
"chink chug"	thug-nearby rule	false	43	--	thug-available rule	"The Drink Drug Think Thug is too large to disappear through any crack. You're too large to escape." [note that the thug-nearby and thug-available rule don't strictly NEED to be there for this game, but I'd like them there, on the very off chance that, say, I'd place the thug back off-stage to start.]
"fink fug"	thug-nearby rule	false	43	--	thug-available rule	"No fog carries the Drink Drug Think Thug away or even makes it wimpier."
"jink jug"	thug-nearby rule	false	43	--	thug-available rule	"No liquid container to help your dexterity appears. Oh, well. It might've jinked YOU, anyway."
"link lug"	thug-nearby rule	false	43	--	thug-available rule	"You need to make the thug much less intimidating."
"mink mug"	thug-nearby rule	false	43	--	thug-available rule	"The Think Thug is too smart to be upset for being called a rat-face or whatever."
"rink rug"	thug-nearby rule	false	43	--	thug-available rule	"A rug would be out of place inside a roller rink or ice skating rink. Still, it was worth a try."
"slink slug"	thug-nearby rule	false	43	--	thug-available rule	"Perhaps that is a bit too drastic. Another more likable animal might work great, though."
"shrink shrug"	thug-nearby rule	false	43	--	thug-available rule	"A shrug would not shrink the [thug] by much. Perhaps there is something you can shrink it into, so it can't possibly be anywhere near as big as you."
"broiled brace"	boiled-base-around rule	false	--	--	not-gaol rule	"You can't imagine a brace would be tasty, fried, broiled, stewed or whatever."
"foiled face"	boiled-base-around rule	false	--	--	not-gaol rule	"You frown at being unable to dispel the [spoiled space]. No reverse psychology kicks in."
"moiled mace"	boiled-base-around rule	false	--	--	not-gaol rule	"No magic weapon pops in your hand as a reward for hard work you forgot you did."
"roiled race"	boiled-base-around rule	false	--	--	not-gaol rule	"You'll never get mad enough to run fast enough through the [spoiled space]."
"hath haven"	maven-summoned rule	false	--	--	--	"[if maven is moot]The math maven already has one, for now[else]You don't want to let the maven escape. It could help you! Once you're free, you can set it free[end if]."
"air/err owns"	in-stones rule	false	--	--	not-gaol rule	"The air is everywhere, and it'd take too long to own up to all your mistakes." [start bare bones stair stones]
"care cones"	in-stones rule	false	--	--	not-gaol rule	"Nothing appears to make you feel more loved. Aww."
"clayer/clare/clair clones"	in-stones rule	false	--	--	not-gaol rule	"No golems appear to try and build the stairs. But on the bright side, none appear from the stairs to make it tougher to go up."
"crayer crones"	in-stones rule	false	--	--	not-gaol rule	"Not only is that a stretch, but it would actively hurt your quest."
"fair/fare phones"	in-stones rule	false	--	--	not-gaol rule	"You have no outside communication here."
"grayer groans"	in-stones rule	false	--	--	not-gaol rule	"A little more atmosphere doesn't help, but it doesn't hurt, either."
"hair/hare hones"	in-stones rule	false	--	--	not-gaol rule	"This is no time for follicular or lagomorphic care!"
"jer jones"	in-stones rule	false	--	--	not-gaol rule	"The owner of the Dallas Cowboys is nightmarish in his own way, though yes, it might be fun to stick him in a nightmare."
"mare moans"	in-stones rule	false	--	--	not-gaol rule	"Horses whinny in the distance."
"pear/pair/pare pwns"	in-stones rule	false	--	--	not-gaol rule	"You don't need any material items, or to win an argument, to escape."
"rare roans"	in-stones rule	false	--	--	not-gaol rule	"Bringing horses into this mess would be animal cruelty."
"scare scones"	in-stones rule	false	--	--	not-gaol rule	"Spooky food is a creative idea here, but maybe not a practical one."
"tare/tear tones"	in-stones rule	false	--	--	not-gaol rule	"No more scary noises than needed, please."
"ark/arc ump"	in-dark-dump rule	false	44	any-dump-left rule	not-gaol rule	"Nobody appears to decide which animals will be doomed to forty days and nights of floods." [start dark dump] [NOTE: this is technically all-over. But in this case, we have 33 mapping to 44 or 55, so we always get ++. A cheesy hack, but it works.]
"clark clump"	in-dark-dump rule	false	100	any-dump-left rule	not-gaol rule	"Clark Griswold does not appear in a heap."
"lark lump"	in-dark-dump rule	false	100	any-dump-left rule	not-gaol rule	"Eww, dead birds?"
"mark mump"	in-dark-dump rule	false	100	any-dump-left rule	not-gaol rule	"With just one mump, you might drive yourself up the wall wondering if you are half-sick or half-well."
"faster fate"	in-gaster-gate rule	false	75	plates-needed rule	not-gaol rule	"But that might mean a faster BAD fate as well as a good one." [start gaster gate]
"hastur hate"	in-gaster-gate rule	false	75	plates-needed rule	not-gaol rule	"Oh no. You don't need to make things worse."
"laster late"	in-gaster-gate rule	false	75	plates-needed rule	not-gaol rule	"A good try, if un-grammatical. But you already have lasted, and you don't want your obstacles to last."
"raster rate"	in-gaster-gate rule	false	75	plates-needed rule	not-gaol rule	"Your text adventure remains totally texty."
"boar/bore bulge"	in-gore-gulch rule	false	54	--	not-gaol rule	"That's a bit of a stretch, but Gore Gulch remains unstretched." [start gore gulch]
"bold bail/bowl/bale"	in-gold-gaol rule	false	101	--	--	"You don't have to be bold. The gaol is unguarded." [start gold gaol]
"doled dale"	in-gold-gaol rule	false	101	--	--	"That's a bit too archaic to be a final solution, but ... you do dream about these sorts of things in prison."
"fold fail"	in-gold-gaol rule	true	101	--	--	"You look at FOLD FAIL on the wall, hoping for the [maven] to get exasperated enough to spill a solution. But apparently it's good at passive-aggressiveness, too!" [the TRUE here indicates this is not strictly a good guess. Since FOLD FAIL is in the room description, it can't and shouldn't count.]
"hold hail/hale"	in-gold-gaol rule	false	101	--	--	"There is nobody to summon, and you don't want to summon weather, either."
"mold male/mail"	in-gold-gaol rule	false	101	--	--	"You uncover no old letters checking on how you are. Not surprising. You've only been here a bit."
"polled pail/pale"	in-gold-gaol rule	false	101	--	--	"You haven't been here long enough to even want the company of a pollster."
"rolled rail"	in-gold-gaol rule	false	101	--	--	"You don't need assistance getting out. Or a need to rail verbally."
"scold scale"	in-gold-gaol rule	false	101	--	--	"The scold scale is probably something you get BEFORE you are sent to prison."
"sold sail/sale"	in-gold-gaol rule	false	101	--	--	"You don't have to buy anything. You don't want to."
"swolled swale"	in-gold-gaol rule	false	101	--	--	"The gold gaol cannot change THAT drastically."
"trolled trail"	in-gold-gaol rule	false	101	--	--	"You will have to make your own trail out. Make it enough yours, you could recount it to others."
"wold wail/whale"	in-gold-gaol rule	false	101	--	--	"Nothing too drastic, here."
"jeep jewel/joule"	in-peep-pool rule	false	101	creep-unbeaten rule	not-gaol rule	"The jeep would probably run over YOU." [start peep pool]
"reap rule"	in-peep-pool rule	false	101	creep-unbeaten rule	not-gaol rule	"This adventure is about surviving, not taking over."
"weep wool"	in-peep-pool rule	false	101	creep-unbeaten rule	not-gaol rule	"Crying is out. So are nice new warm clothes. You're on a spooky Halloween adventure, here!"

table of first check rhymes
mist-cmd(topic)	mist-rule	got-yet	magicnum	leet-rule	still-rule	mist-txt
"bite/bight bier/beer"	in-bight-bier rule	false	54	fear-to-fight rule	not-gaol rule	"You don't need homonyms here. Something else... something a bit more common..."
"deep dual" or "dual deep"	in-peep-pool rule	false	44	duel-unstarted rule	not-gaol rule	"[if creep cruel is off-stage]You are very close. You don't need to make the pool deeper, but you need something else deep[else]Summoning the creep (cruel) was enough[end if]."
"bear bones"	in-stones rule	false	--	--	not-gaol rule	"That would make for creepier ambience, but more importantly, the bear bones would make the stair stones even tougher to climb."
"stare stones"	in-stones rule	false	--	--	not-gaol rule	"Nothing appears in the stones. You [if stone-filler is 2]can just[else if stone-filler is 1]have a bit more work before you[else]would need to repair them to[end if] climb them."
"gold gale/gail"	in-gold-gaol rule	false	101	--	--	"You can't change the gaol. You can escape easily enough. You just need to figure how, comfortably."
"tolled/told tail" or "tolled tail"	in-gold-gaol rule	false	101	--	--	"That must be very close indeed."

section special text

sheet-cheated is a truth state that varies.

to say sheet-spoil:
	now sheet-cheated is true;
	say "[one of]You pore through all the items the sheet has information on. You cross-compare them and make hypotheses. You check for contradictions and inconsistencies in the data. It takes a while, but you come up with the following[or]You rehash your first deep examination of the sheet[stopping]:[line break]";
	repeat through table of sheet spoilers:
		say "[line break][reading entry] means the desired object or action has [res1 entry] letters in [res2 entry] word [res3 entry] the original object or room.[run paragraph on]";

table of sheet spoilers
reading	res1	res2	res3
"++"	"more"	"each"	"than"
"=="	"the same number of"	"each"	"as"
"--"	"less"	"each"	"than"
"+=/=+"	"more"	"one"	"than"
"-=/=-"	"less"	"one"	"than"
"+-/-+"	"more in one, less in the other"	"each"	"than"


section mist-rules alphabetized

[xxqqmi]

this is the boiled-base-around rule: if location of player is bounded, the rule succeeds;

this is the in-bight-bier rule: if player is in Bight Bier, the rule succeeds;

this is the in-dark-dump rule: if player is in Dark Dump, the rule succeeds;

this is the in-gaster-gate rule: if player is in Gaster Gate, the rule succeeds;

this is the in-gold-gaol rule: if player is in Gold Gaol, the rule succeeds;

this is the in-gore-gulch rule: if player is in Gore Gulch, the rule succeeds;

this is the in-peep-pool rule: if player is in peep pool, the rule succeeds;

this is the in-stones rule: if player is in Stair Stones, the rule succeeds;

this is the thug-nearby rule: if think thug is touchable, the rule succeeds;

this is the maven-summoned rule: if math maven is not off-stage, the rule succeeds;

this is the sheet-nearby rule: if sheep sheet is touchable, the rule succeeds;

[zzqqmi]

section leet-rules alphabetized

[xxqqle]

this is the any-dump-left rule: if bark bump is off-stage or park pump is off-stage or stark stump is off-stage, the rule succeeds;

this is the creep-unbeaten rule: if creep cruel is not moot, the rule succeeds;

this is the duel-unstarted rule: if creep cruel is off-stage, the rule succeeds;

this is the fear-to-fight rule: if sco-fight-fear is false, the rule succeeds;

this is the not-gaol rule: if player is not in gold gaol, the rule succeeds;

this is the plates-needed rule: if master mate is not moot, the rule succeeds;

this is the sheet-available rule: if player has sheep sheet or player is not in gold gaol, the rule succeeds;

this is the sheet-untaken rule: if player does not have sheep sheet, the rule succeeds;

this is the thug-available rule: if think thug is not moot, the rule succeeds;

[zzqqle]

Quite Queer Night Near Mistakes ends here.

---- DOCUMENTATION ----

