Version 1/191110 of Quite Queer Night Near Tables by Andrew Schultz begins here.

"This should briefly describe the purpose of Quite Queer Night Near Tables."

volume core game progress table and rules

chapter the big table

table of verb checks [xxvc]
w1 (text)	w2 (text)	posthom (topic)	hom-txt-rule (rule)	think-cue	okflip	core	idid	best-room	check-rule	run-rule	wfull (topic)	think-advice (text)
"fight|fright"	"fear|freer"	--	--	false	true	true	false	bight bier	vc-fight-fear rule	vr-fight-fear rule	"fight fear" or "fright freer"	-- [start bight bier]
"pink"	"pug"	--	--	false	true	true	false	bight bier	vc-pink-pug rule	vr-pink-pug rule	--	"You could turn the Drink Drug Think Thug into a [b]PINK PUG[r] [once-now of vc-pink-pug rule] you feel less scared and overwhelmed."
"heap|bleep"	"heat|bleat"	--	--	false	true	false	false	bight bier	vc-heap-heat rule	vr-heap-heat rule	"heap heat" or "bleep bleat"	"You can go back to [bier] to [b]HEAP HEAT[r] on the [sheet]."
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
		say "[line break]The gunky material flowing back [if player is in gore gulch or player is in gaster gate]west and [end if][if player is in gore gulch or player is in peep pool]north[else]south[end if] is icky, but it will help patch the stones up[one of][or] even more[stopping]. You run back quickly. It takes a while, and it's not art, but you do your best. Once it dries, the way up looks [one of]almost [or][stopping]traversable.";
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
		if check-rule entry is vc-told-tale rule and think-cue entry is true, say "[line break]So, yeah. That thing you tried before that didn't work? TOLD TALE? It does now. There's not much else to do."

section rules to sort

[xxqqnnr]

a goodrhyme rule (this is the vc-bark-bump rule):
	if player is not in dark dump, unavailable;
	if sco-bark-bump is true:
		vcal "That's already here.";
		already-done;
	ready;

this is the vr-bark-bump rule:
	say "A bark bump appears to the north! You weren't going that way, but it provides a bit of a channel.";
	move bark bump to Dark Dump;
	now sco-bark-bump is true;
	check-north-flow;

a goodrhyme rule (this is the vc-cold-kale rule):
	if player is not in gold gaol, unavailable;
	if sco-cold-kale is true:
		vcal "To quote Al and Peg Bundy: 'More kale, dear?' / 'Did I ASK for more kale, dear?'";
		already-done;
	ready;

this is the vr-cold-kale rule:
	say "Some cold kale appears! It's not very tasty, but it's better than nothing.";
	now sco-cold-kale is true;
	see-how-nourished;
	process the endgame prod rule;

a goodrhyme rule (this is the vc-deep-duel rule):
	if player is not in peep pool, unavailable;
	if creep cruel is not off-stage:
		vcal "You already summoned the creep (cruel).";
		already-done;
	ready;

this is the vr-deep-duel rule:
	say "There is no progress without conflict. You look into the peep pool and wait for an opponent to show. A crash from the steep stool to the east indicates someone has arrived for a deep duel: a creep, cruel![paragraph break]Maybe if you defeat them, you'll be able to go east. But right now, being around them is just annoying.";
	now sco-deep-duel is true;
	move creep cruel to peep pool;
	moot steep stool.

a goodrhyme rule (this is the vc-fight-fear rule):
	if sco-fight-fear is true:
		vcal "Yes, fighting fear is a lifelong journey, but fighting too hard all at once will bring it back.";
		already-done;
	ready;

this is the vr-fight-fear rule:
	say "You do your best to feel braver. It works, well enough! The Drink Drug Think Thug seems a bit less tough now, and what do you know? The spite spear vanishes, too!";
	now sco-fight-fear is true;
	moot spite spear;
	phbt bight bier;

a goodrhyme rule (this is the vc-heap-heat rule):
	if sheep sheet is not fungible:
		if player is in gold gaol, unavailable;
		vcp "This will work once you go back to [bight bier].";
		not-yet;
	if player has cheap cheat sheep sheet:
		vcal "You already warmed the sheet up[if sco-heap-heat is false], but that command would've gotten a bonus point before[end if].";
		already-done;
	ready;

this is the vr-heap-heat rule:
	let Q Be whether or not word number 1 in the player's command is "bleep";
	say "You [if Q is true]let go some grawlix-heavy invective, and it gives you enough of a boost to deal with the sleep sleet in order to pull out the cheap cheat[else]rub your hands together for warmth, blow on the sheet, and so on[end if]. And what do you know? It stays less frigid after you pick it up. It'd still be technically functional at any temperature, but now it won't freeze your fingers if you carry it around.[paragraph break]What's more, if you don't understand how it works, you can spoil things with [b]DEEP DEET[r].";
	now player has sheep sheet;
	now sco-heap-heat is true;
	moot sleep sleet;
	phbt sheep sheet;

a goodrhyme rule (this is the vc-keep-cool rule):
	if player is not in peep pool, unavailable;
	if creep cruel is off-stage:
		vcp "You have no one annoying you. But there might be someone later, if you're lucky! Wow!";
		not-yet;
	if creep cruel is moot:
		vcal "You don't need to keep cool any more.";
		already-done;
	ready;

this is the vr-keep-cool rule:
	say "You manage to ignore the creep (cruel) as they get more and more desperate to insult you. Eventually, they explain you're not worth the effort, and also you are probably too callous and selfish to care about the next person they'll need to insult even worse.";
	now sco-keep-cool is true;
	moot creep cruel;
	phbt peep pool;

a goodrhyme rule (this is the vc-more-mulch rule):
	if player is not in Gore Gulch, unavailable;
	if sco-more-mulch is true:
		vcal "Hoo boy. You have enough mulch.";
		already-done;
	ready;

this is the vr-more-mulch rule:
	say "More mulch appears! It spills out to the peep pool and beyond, probably even back to the stair stones.";
	now sco-more-mulch is true;
	phbt Gore Gulch;
	check-stair-stones;

a goodrhyme rule (this is the vc-old-ale rule):
	if player is not in gold gaol, unavailable;
	if sco-old-ale is true:
		vcal "If you were trying to get drunk, more old ale would be the way to do it. But you're trying to get FREE.";
		already-done;
	ready;

this is the vr-old-ale rule:
	say "Yum! Or not. You find a firkin or flagon or whatever of old ale, and it doesn't taste very good, but it's nourishing and hopefully not too alcoholic.";
	now sco-old-ale is true;
	see-how-nourished;
	process the endgame prod rule;

a goodrhyme rule (this is the vc-park-pump rule):
	if player is not in dark dump, unavailable;
	if sco-park-pump is true:
		vcal "That's already here.";
		already-done;
	ready;

this is the vr-park-pump rule:
	say "Poof! A park pump appears, just like you remember as a kid! It appears to be auto-pumping, creating a waterway. [if pump-block is 2]With the stark stump and bark bump sealing off two exits, water flows freely back south[else if pump-block is 1]Water partially seeps out, and the pump stops pumping. Maybe you need to summon one more barrier here[else]The water seeps out to the north and west, lost to the [spoiled space]. The pump stops. Perhaps if you could create more natural barriers, the pump could start again[end if].";
	now sco-park-pump is true;
	move park pump to dark dump;
	check-north-flow;

a goodrhyme rule (this is the vc-pink-pug rule):
	if drink drug think thug is off-stage or player is not in bight bier, unavailable;
	if sco-fight-fear is false:
		vcp "You're too scared to think that something like that could even work. Maybe later, though.";
		not-yet;
	if drink drug think thug is moot:
		vcal "You already got rid of the thug.";
		already-done;
	ready;

this is the vr-pink-pug rule:
	say "POOF! The drink-drug think-thug turns into a far more innocuous pink pug, which runs off, yapping.";
	moot Drink Drug Think Thug;
	now sco-pink-pug is true;

a goodrhyme rule (this is the vc-plaster-plate rule):
	if player is not in gaster gate, unavailable;
	if sco-plaster-plate is true:
		vcal "You already made a plaster plate.";
		already-done;
	ready;

this is the vr-plaster-plate rule:
	say "A huge chunk of the gaster gate breaks off and creates a plaster plate. It's much too big to eat off, but it crumbles quickly apart (probably not Last [']Er Late brand) and is washed away beyond the dark dump. The Master Mate, their job done, smiles, gives a thumbs up, and walks away.";
	now sco-plaster-plate is true;
	moot master mate;
	phbt gaster gate;
	check-north-flow;

a goodrhyme rule (this is the vc-stark-stump rule):
	if player is not in dark dump, unavailable;
	if sco-stark-stump is true:
		vcal "That's already here.";
		already-done;
	ready;

this is the vr-stark-stump rule:
	say "Poof! A stark stump appears! It blocks the way to the west, but it provides a channel in case anything would come flowing through.";
	move stark stump to Dark Dump;
	now sco-stark-stump is true;
	check-north-flow;

a goodrhyme rule (this is the vc-told-tale rule):
	if player is not in gold gaol, unavailable;
	if sco-old-ale is false or sco-cold-kale is false:
		vcp "You're not nourished enough to make it far out of the cell. You need [if sco-old-ale is true]food with your drink. Even lousy food[else if sco-cold-kale is true]drink with your food. Even lousy drink[else]food and drink. Even lousy food and drink[end if].";
		not-yet;
	ready;

this is the vr-told-tale rule:
	say "Yeah, that's it. You've had your fun. Time to move on. As you leave, you notice some fey foam. You're obviously meant to do something with it, so you build a day dome before a nay-gnome appears. You enter it and say the magic words: HEY, HOME.[paragraph break]Your adventures are just silly enough and just believable enough to scare friends or to laugh at things.";
	process the score and thinking changes rule;
	phbt gold gaol;
	end the story finally saying "BAH?! BOO-YAH, YOU!";
	follow the shutdown rules;

[zzqqnnr]

volume homonym rejections

chapter thing homonyms

[this should not be alphabetized as otherwise Inform will assume from the first entry, the Bot Board, that everything is a person.]
[the fixfirst= in talf.txt makes sure that a regular item comes first.]

table of thing homonyms
mything	hom-rule (a rule)	myhom (topic)	custom-msg (text)
cheat cheat sheep sheet	--	"cheep"	"Oh, hey, you note the sheet has a note that homonyms aren't necessary, but sometimes homonyms of the needed word or words will work great."

section thing homonym rules

chapter room homonyms

[the room homonyms work as follows: if we have a rule with multiple room states/possibilities and no topic, then we skip the topic. If we have a rule and a topic, we print the custom-msg if the rule and topic match. Otherwise, we print the custom-msg for a generic error if the topic matches. So that is why the topic or rule can be blank.]

table of room homonyms
loc	hom-rule (a rule)	myhom (topic)	custom-msg (text)
bight bier	hom-bight-bier rule	--	--
bare bones stair stones	hom-bones-stones rule	--	--
gaster gate	--	"gait"	"You are walking around just fine. No need for homonyms."

this is the hom-bight-bier rule:
	if the player's command includes "beer":
		say "Alas, there is no alcohol. Well, there may be later[but-hom].";
		the rule succeeds;
	else if the player's command includes "byte":
		say "There is no need for detailed hacking[but-hom].";
		the rule succeeds;
	else if the player's command includes "bite":
		say "You don't need to be violent like that[but-hom].";
		the rule succeeds;

this is the hom-bones-stones rule:
	if the player's command includes "bear":
		say "No, the thug was enough muscle in your way for one adventure.";
		the rule succeeds;
	else if the player's command includes "stare":
		say "You could just type [b]Z[r] to space out a bit.";
		the rule succeeds;

to say but-hom:
	if current-score is 0, say ", but, well, that word sounded mostly right. Maybe homonyms aren't quite it"

volume can't go that way

table of noways
noway-rm	noway-txt
bight bier	"The [spoiled space] blocks you every way except [if stair stones are visited]back [end if]east."
stair stones	"You can only go north, south or west[if stone-filler is 2]. And up. You probably want to go up[else]. And you can try to go up[end if]."
peep pool	"The [spoiled space] blocks your way [noun]. You can only go north or[if creep cruel is not moot], once the way is clear,[end if] east."
gore gulch	"The [spoiled space] and general ickiness encompass every way except back west."
dark dump	"You can only go east or south. The [spoiled space] blocks your way [noun]."
gaster gate	"[if noun is east]You aren't getting past the gate, but there's worse stuff behind. Trust me[all-plas][else]The [spoiled space] blocks your passage [noun][end if]."
gold gaol	"You need to look back on your experiences before leaving. Anyway, you can't figure directions here."

Quite Queer Night Near Tables ends here.

---- DOCUMENTATION ----
