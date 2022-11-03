Version 1/191110 of Quite Queer Night Near Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Quite Queer Night Near Tables."

volume core game progress table and rules

chapter the big table

table of verb checks [xxvc]
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	bestroom	check-rule	run-rule	wfull (topic)	think-advice (text)
"fight|fright"	"fear|freer"	--	--	false	true	true	false	bight bier	vc-fight-fear rule	vr-fight-fear rule	"fight fear" or "fright freer"	-- [start bight bier]
"pink"	"pug"	--	--	false	true	true	false	bight bier	vc-pink-pug rule	vr-pink-pug rule	--	"You could turn the Drink Drug Think Thug into a [b]PINK PUG[r] [once-now of vc-pink-pug rule] you feel less scared and overwhelmed."
"heap|bleep"	"heat|bleat"	--	--	false	true	false	false	bight bier	vc-heap-heat rule	vr-heap-heat rule	"heap heat" or "bleep bleat"	--
"deep|creep"	"duel|cruel"	--	--	false	true	true	false	peep pool	vc-deep-duel rule	vr-deep-duel rule	"deep duel" or "creep cruel"	-- [start peep pool]
"keep"	"cool"	--	--	false	true	true	false	peep pool	vc-keep-cool rule	vr-keep-cool rule	--	"You can [b]KEEP COOL[r] [once-now of vc-keep-cool rule] you have someone who is trying to annoy you."
"more"	"mulch"	--	--	false	true	true	false	gore gulch	vc-more-mulch rule	vr-more-mulch rule	--	-- [start gore gulch]
"plaster"	"plate"	--	--	false	true	true	false	gaster gate	vc-plaster-plate rule	vr-plaster-plate rule	--	-- [start gaster gate]
"bark|hark"	"bump|hump"	--	--	false	true	true	false	dark dump	vc-bark-bump rule	vr-bark-bump rule	"bark bump" or "hark hump"	-- [start dark dump]
"park"	"pump"	--	--	false	true	true	false	dark dump	vc-park-pump rule	vr-park-pump rule	--	--
"stark"	"stump"	--	--	false	true	true	false	dark dump	vc-stark-stump rule	vr-stark-stump rule	--	--
"old"	"ale"	--	--	false	true	true	false	gold gaol	vc-old-ale rule	vr-old-ale rule	--	-- [start gold gaol]
"cold"	"kale"	--	--	false	true	true	false	gold gaol	vc-cold-kale rule	vr-cold-kale rule	--	--
"told"	"tale"	--	--	false	true	true	false	gold gaol	vc-told-tale rule	vr-told-tale rule	--	"You can make a [b]TOLD TALE[r] [once-now of vc-told-tale rule] you have had (barely) adequate food and drink."

section auxiliary

to see-how-nourished:
	say "[line break]";
	now cht of gold gaol is leteq; [-> told tale]
	if sco-old-ale is false or sco-cold-kale is false:
		say "You still need more nourishment, though. Food and drink.";
		if sco-old-ale is false:
			now cht of gold gaol is letminus; [gold gaol->old ale]
	else:
		say "Having had both food and drink, you're ready to move on.";

to check-north-flow:
	if north-flow, say "[line break][if player is in dark dump]It seems like you have all the pieces together to create a river leading to the stones. You move back east to start dumping the plaster in. [end if]Breaking down the plaster plate is not hard. You dump it into the pool that formed in the east edge of the Dark Dump, and it flows slowly downward back to the area with the stair stones.";
	check-stair-stones;

old-filler is a number that varies.

to check-stair-stones:
	let Q be stone-filler;
	if Q is not old-filler:
		say "[line break]The gunky material flowing back to [stair stones] is icky, but it will help patch them up[one of][or] even more[stopping]. You run back quickly. It takes a while, and it's not art, but you do your best. Once it dries, the way up looks [one of]almost [or][stopping]traversable.";
		if Q is 1, now printed name of Bare Bones Stair Stones is "Stair Stones";
		if Q is 2, now printed name of Bare Bones Stair Stones is "Lair [']Lone's Stair Stones";
		now old-filler is Q;
		move player to Stair Stones, without printing a room description;
		say "[b][stair stones][r][line break]";
	if player is in dark dump:
		if stump is in dump and dump-fours-flipped is 2:
			now cht of dark dump is phbt;
		else:
			if dump-fours-flipped is 2:
				now cht of dark dump is letplus; [dark dump->stark stump]
			else if stump is in dump:
				now cht of dark dump is leteq; [dark dump->park pump]

this is the endgame prod rule:
	repeat through table of verb checks:
		if check-rule entry is vc-told-tale rule and think-cue entry is true, say "[line break]So, yeah. That thing you tried before  that didn't work? TOLD TALE? It does now. There's not much else to do."

to decide which number is dump-block:
	decide on boolval of sco-stump-stark + boolval of sco-bark-bump;

section rules to sort

[xxqqnnr]

this is the vc-bark-bump rule:
	if player is not in dark dump, the rule fails;
	if sco-bark-bump is true:
		vcal "That's already here.";
		continue the action;
	the rule succeeds;

this is the vr-bark-bump rule:
	say "A bark bump appears to the north! You weren't going that way, but it provides a bit of a channel.";
	move bark bump to Dark Dump;
	now sco-bark-bump is true;
	check-north-flow;

this is the vc-cold-kale rule:
	if player is not in gold gaol, the rule fails;
	if sco-cold-kale is true:
		vcal "To quote Al and Peg Bundy: 'More kale, dear?' / 'Did I ASK for more kale, dear?'";
		continue the action;
	the rule succeeds;

this is the vr-cold-kale rule:
	say "Some cold kale appears! It's not very tasty, but it's better than nothing.";
	now sco-cold-kale is true;
	see-how-nourished;
	process the endgame prod rule;

this is the vc-deep-duel rule:
	if player is not in peep pool, the rule fails;
	if creep cruel is not off-stage:
		vcal "You already summoned the creep (cruel).";
		continue the action;
	the rule succeeds;

this is the vr-deep-duel rule:
	say "There is no progress without conflict. You look into the peep pool and wait for an opponent to show. A crash from the steep stool to the east indicates someone has arrived for a deep duel: a creep, cruel![paragraph break]Maybe if you defeat them, you'll be able to go east. But right now, being around them is just annoying.";
	move creep cruel to peep pool;
	moot steep stool.

this is the vc-fight-fear rule:
	if sco-fight-fear is true:
		vcal "Yes, fighting fear is a lifelong journey, but fighting too hard all at once will bring it back.";
		continue the action;
	the rule succeeds;

this is the vr-fight-fear rule:
	say "You do your best to feel braver. It works, well enough! The Drink Drug Think Thug seems a bit less tough now, and what do you know? The spite spear vanishes, too!";
	now sco-fight-fear is true;
	moot spite spear;
	phbt bight bier;

this is the vc-heap-heat rule:
	if sheep sheet is off-stage, the rule fails;
	if player has cheap cheat sheep sheet:
		vcal "You already warmed the sheet up.";
		continue the action;
	the rule succeeds;

this is the vr-heap-heat rule:
	let Q Be whether or not word number 1 in the player's command is "bleep";
	say "You [if Q is true]let go some grawlix-heavy invective, and it gives you enough of a boost to deal with the sleep sleet in order to pull out the cheap cheat[else]rub your hands together for warmth, blow on the sheet, and so on[end if]. And what do you know? It stays less frigid after you pick it up. It'd still be technically functional at any temperature, but now it won't freeze your fingers if you carry it around.[paragraph break]What's more, if you don't understand how it works, you can spoil things with [b]DEEP DEET[r].";
	now player has sheep sheet;
	moot sleep sleet;
	phbt sheep sheet;

this is the vc-keep-cool rule:
	if player is not in peep pool, the rule fails;
	if creep cruel is off-stage:
		vcp "You have no one annoying you. But there might be someone later, if you're lucky! Wow!";
		clue-later "KEEP COOL";
		continue the action;
	if creep cruel is moot:
		vcal "You don't need to keep cool any more.";
		continue the action;
	the rule succeeds;

this is the vr-keep-cool rule:
	say "You manage to ignore the creep (cruel) as they get more and more desperate to insult you. Eventually, they explain you're not worth the effort, and also you are probably too callous and selfish to care about the next person they'll need to insult even worse.";
	moot creep cruel;
	phbt peep pool;

this is the vc-more-mulch rule:
	if player is not in Gore Gulch, the rule fails;
	if sco-mulch-more is true:
		vcal "Hoo boy. You have enough mulch.";
		continue the action;
	the rule succeeds;

this is the vr-more-mulch rule:
	say "More mulch appears! It spills out to the peep pool and beyond, probably even back to the stair stones.";
	now sco-mulch-more is true;
	phbt Gore Gulch;
	check-stair-stones;

this is the vc-old-ale rule:
	if player is not in gold gaol, the rule fails;
	if sco-old-ale is true:
		vcal "If you were trying to get drunk, the old ale would be the way to do it. But you're trying to get FREE.";
		continue the action;
	the rule succeeds;

this is the vr-old-ale rule:
	say "Yum! Or not. You find a firkin or flagon or whatever of old ale, and it doesn't taste very good, but it's nourishing and hopefully not too alcoholic.";
	now sco-old-ale is true;
	see-how-nourished;
	process the endgame prod rule;

this is the vc-park-pump rule:
	if player is not in dark dump, the rule fails;
	if sco-park-pump is true:
		vcal "That's already here.";
		continue the action;
	the rule succeeds;

this is the vr-park-pump rule:
	say "Poof! A park pump appears, just like you remember as a kid! It appears to be auto-pumping, creating a waterway. [if dump-block is 2] With the stark stump and bark bump sealing off two exits, water flows freely to [bare bones][else if dump-block is 1]Water partially seeps out, and the pump stops pumping. Maybe you need to summon one more barrier here[else]The water seeps out to the north and west, lost to the [spoiled space]. The pump stops. Perhaps if you could create more natural barriers, the pump could start again[end if]";
	now sco-park-pump is true;
	move park pump to dark dump;
	check-north-flow;

this is the vc-pink-pug rule:
	if drink drug think thug is off-stage or player is not in bight bier, the rule fails;
	if sco-fight-fear is false:
		vcp "You're too scared to think that something like that could even work. Maybe later, though.";
		clue-later "PINK PUG";
		continue the action;
	if drink drug think thug is moot:
		vcal "You already got rid of the thug.";
		continue the action;
	the rule succeeds;

this is the vr-pink-pug rule:
	say "POOF! The drink-drug think-thug turns into a far more innocuous pink pug, which runs off, yapping.";
	moot Drink Drug Think Thug;

this is the vc-plaster-plate rule:
	if player is not in gaster gate, the rule fails;
	if master mate is moot:
		vcal "You already made a plaster plate.";
		continue the action;
	the rule succeeds;

this is the vr-plaster-plate rule:
	say "A huge chunk of the gaster gate breaks off and creates a plaster plate. It's much too big to eat off, but it crumbles quickly apart (probably not Last [']Er Late brand) and is washed away beyond the dark dump. The Master Mate, their job done, smiles, gives a thumbs up, and walks away.";
	now sco-plaster-plate is true;
	moot master mate;
	phbt gaster gate;
	check-north-flow;

this is the vc-stark-stump rule:
	if player is not in dark dump, the rule fails;
	if sco-stump-stark is true:
		vcal "That's already here.";
		continue the action;
	the rule succeeds;

this is the vr-stark-stump rule:
	say "Poof! A stark stump appears! It blocks the way to the west, but it provides a channel in case anything would come flowing through.";
	move stark stump to Dark Dump;
	now sco-stump-stark is true;
	check-north-flow;

this is the vc-told-tale rule:
	if player is not in gold gaol, the rule fails;
	if sco-old-ale is false or sco-cold-kale is false:
		vcp "You're not nourished enough to make it far out of the cell. You need food and drink. Even lousy food and drink.";
		clue-later "TOLD TALE";
		continue the action;
	the rule succeeds;

this is the vr-told-tale rule:
	say "Yeah, that's it. You've had your fun. Time to move on. As you leave, you notice some fey foam. You're obviously meant to do something with it, so you build a day dome before a nay-gnome appears. You enter it and say the magic words: HEY, HOME.[paragraph break]Your adventures are just silly enough and just believable enough to scare friends or to laugh at things.";
	process the score and thinking changes rule;
	phbt gold gaol;
	end the story finally saying "BAH?! BOO-YAH, YOU!";
	follow the shutdown rules;

[zzqqnnr]

Quite Queer Night Near Tables ends here.

---- DOCUMENTATION ----
