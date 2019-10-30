"Quite Queer Night Near" by Andrew Schultz

volume variables and stuff

include Trivial Niceties by Andrew Schultz.

to moot (x - a thing): move x to Gazy Gap;

definition: a thing (called x) is moot:
	if x is in Gazy Gap, yes;
	no;

section verb carnage

understand the command "attach" as something new.
understand the command "buy" as something new.
understand the command "chop" as something new.
understand the command "crack" as something new.
understand the command "embrace" as something new.
understand the command "fight" as something new.
understand the command "hop" as something new.
understand the command "hug" as something new.
understand the command "insert" as something new.
understand the command "jump" as something new.
understand the command "kill" as something new.
understand the command "kiss" as something new.
understand the command "light" as something new.
understand the command "murder" as something new.
understand the command "polish" as something new.
understand the command "prune" as something new.
understand the command "punch" as something new.
understand the command "purchase" as something new.
understand the command "scrub" as something new.
understand the command "shine" as something new.
understand the command "sip" as something new.
understand the command "skip" as something new.
understand the command "slice" as something new.
understand the command "slice" as something new.
understand the command "smell" as something new.
understand the command "sorry" as something new.
understand the command "swallow" as something new.
understand the command "sweep" as something new.
understand the command "taste" as something new.
understand the command "tell" as something new.
understand the command "thump" as something new.
understand the command "tie" as something new.
understand the command "torture" as something new.
understand the command "touch" as something new.
understand the command "wave" as something new.
understand the command "wipe" as something new.
understand the command "wreck" as something new.

volume verby stuff

check taking:
	say "You never have to take anything in this game." instead;

volume the player

description of player is "You are [if thug is off-stage]no longer [end if]shedding a tight tear[if player is in bier]. You're no sight seer[end if]."

volume the map

chapter Blight Blear Bight Bier

Blight Blear Bight Bier is a room. "Boy! It's scary here! You can only go east[if thug is off-stage], but it might be even scarier there. You need some way to make things less scary, on this Quite Queer Night Near by the Blight Blear Bight Bear. A spite spear hangs in the distance, just ready to swoop on you[end if].". [->fight fear]

ts-fight-fear is a truth state that varies.

section sheep sheet

the cheap cheat sheep sheet is a thing.

section DDTT

The Drink Drug Think Thug is a person in Blight Blear Bight Bier. [-> pink pug]

check going east in Blight Blear Bight Bier:
	if Drink Drug Think Thug is in Bier, say "Not with the Drink Drug Think Thug by." instead;
	if Drink Drug Think Thug is off-stage, say "No. You're too scared to do anything right now." instead;

[check going south in Blight Blear Bight Bier when player has sheep sheet: say "You got what you needed from Leap Leet."]

chapter Bare Bones Stair Stones

Bare Bones Stair Stones is east of Bight Bier.

chapter Peep Pool

Peep Pool is south of Stair Stones. [->deep duel] [->reap rule]

section creep cruel

the creep cruel is a person.

chapter Gore Gulch

Gore Gulch is east of Peep Pool. [-> more mulch]

ts-mulch-more is a truth state that varies.

chapter Dark Dump

Dark Dump is north of Gore Gulch. [-> stark stump] [->bark bump] [->park pump]

ts-bump-bark is a truth state that varies.
ts-pump-park is a truth state that varies.
ts-stump-stark is a truth state that varies.

section stark stump

the stark stump is a thing.

chapter Gaster Gate

Gaster Gate is east of Dark Dump. [->plaster plate]

section Master Mate

the Master Mate is a person in Gaster Gate.

chapter Gold Gaol

Gold Gaol is a room. [->old ale] [->cold kale] [->told tale]

ts-ale-old is a truth state that varies.
ts-kale-cold is a truth state that varies.

chapter Gazy Gap

Gazy Gap is a room.

volume the whole special verb thing

chapter the big table

table of verb checks [xxvc]
w1 (text)	w2 (text)	okflip	core	idid	ver-rule	do-rule	wfull (topic)
"fight"	"fear"	true	true	false	vc-fight-fear rule	vr-fight-fear rule	-- [start bight bier]
"pink"	"pug"	true	true	false	vc-pink-pug rule	vr-pink-pug rule	--
"leap"	"leet"	true	false	false	vc-leap-leet rule	vr-leap-leet rule	--
"deep"	"duel"	true	true	false	vc-deep-duel rule	vr-deep-duel rule	-- [start peep pool]
"reap"	"rule"	true	true	false	vc-reap-rule rule	vr-reap-rule rule	--
"more"	"mulch"	true	true	false	vc-more-mulch rule	vr-more-mulch rule	-- [start gore gulch]
"plaster"	"plate"	true	true	false	vc-plaster-plate rule	vr-plaster-plate rule	-- [start gaster gate]
"bark"	"bump"	true	true	false	vc-bark-bump rule	vr-bark-bump rule	-- [start dark dump]
"park"	"pump"	true	true	false	vc-park-pump rule	vr-park-pump rule	--
"stark"	"stump"	true	true	false	vc-stark-stump rule	vr-stark-stump rule	--
"old"	"ale"	true	true	false	vc-old-ale rule	vr-old-ale rule	-- [start gold gaol]
"cold"	"kale"	true	true	false	vc-cold-kale rule	vr-cold-kale rule	--
"told"	"tale"	true	true	false	vc-told-tale rule	vr-told-tale rule	--

section auxiliary

already-rhymed-this is a truth state that varies.

vc-dont-print is a truth state that varies.

to vcal (t - text): [verb conditional print, flag already rhymed]
	now already-rhymed-this is true;
	if vc-dont-print is false, say "[t][line break]";

to see-how-nourished:
	say "[line break]";
	if ts-ale-old is false or ts-kale-cold is false:
		say "You still need more nourishment, though. Food and drink.";
	else:
		say "Having had both food and drink, you're ready to move on.";

ts-tried-reap is a truth state that varies.

every turn when ts-tried-reap is true and creep cruel is in Peep Pool:
	say "You should probably REEP RULE again. It will get rid of the creep (cruel.)";

ts-tale-early is a truth state that varies.

every turn when ts-tale-early is true and ts-ale-old is true and ts-kale-cold is true (this is the endgame prod rule):
	say "You should probably try to make a TOLD TALE again. That's all that's left to do.";

section rules to sort

[xxqqnnr]

this is the vc-bark-bump rule:
	if player is not in dark dump, the rule fails;
	if ts-bump-bark is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-bark-bump rule:
	say "A bark bump appears!"

this is the vc-cold-kale rule:
	if player is not in gold gaol, the rule fails;
	if ts-kale-cold is true:
		vcal "To quote Al and Peg Bundy: 'More kale, dear?' / 'Did I ASK for more kale, dear?'";
		continue the action;
	the rule succeeds;

this is the vr-cold-kale rule:
	say "Some cold kale appears! It's not very tasty, but it's better than nothing.";
	see-how-nourished;
	process the endgame prod rule;

this is the vc-deep-duel rule:
	if player is not in peep pool, the rule fails;
	if creep cruel is not off-stage:
		vcal "You already summoned the creep (cruel).";
		continue the action;
	the rule succeeds;

this is the vr-deep-duel rule:
	say "You look into the peep pool and bravely summon an opponent for a deep duel. It turns out to be: a creep, cruel.";
	move creep cruel to peep pool;

this is the vc-fight-fear rule:
	if ts-fight-fear is true:
		vcal "Yes, fighting fear is a lifelong journey, but fighting too hard all at once will bring it back.";
		continue the action;
	the rule succeeds;

this is the vr-fight-fear rule:
	say "You do your best to feel braver. It works, well enough! And that's a good thing, too, because a Drink Drug Think Thug appears. Boy, they're the worst. Even abusing their body and mind, they can beat you up physically and mentally.";

this is the vc-leap-leet rule:
	if sheep sheet is off-stage, the rule fails;
	if player has cheap cheat sheep sheet:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-leap-leet rule:
	say "The sheet leaps into your hands!"

this is the vc-more-mulch rule:
	if player is not in Gore Gulch, the rule fails;
	if ts-mulch-more is true:
		vcal "Hoo boy. You have enough mulch.";
		continue the action;
	the rule succeeds;

this is the vr-more-mulch rule:
	say "More mulch appears! It spills out to the peep pool and beyond."

this is the vc-old-ale rule:
	if player is not in gold gaol, the rule fails;
	if ts-ale-old is true:
		vcal "If you were trying to get drunk, the old ale would be the way to do it. But you're trying to get FREE.";
		continue the action;
	the rule succeeds;

this is the vr-old-ale rule:
	say "Yum! Or not. You find a firkin or flagon or whatever of old ale, and it doesn't taste very good, but it's nourishing and hopefully not too alcoholic.";
	see-how-nourished;
	process the endgame prod rule;

this is the vc-park-pump rule:
	if player is not in dark dump, the rule fails;
	if ts-pump-park is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-park-pump rule:
	say "Poof! A park pump appears, just like you remember as a kid!"

this is the vc-pink-pug rule:
	if drink drug think thug is off-stage, the rule fails;
	if drink drug think thug is moot:
		vcal "You already got rid of the thug.";
		continue the action;
	the rule succeeds;

this is the vr-pink-pug rule:
	say "POOF! The drink-drug think-thug turns into a far more innocuous pink pug."

this is the vc-plaster-plate rule:
	if player is not in gaster gate, the rule fails;
	the rule succeeds;

this is the vr-plaster-plate rule:
	say "A huge chunk of the gaster gate breaks off and creates a plaster plate. It's much too big to eat off, but it crumbles quickly apart (probably not Last [']Er Late brand) and is washed away beyond the dark dump.";
	moot master mate;

this is the vc-reap-rule rule:
	if player is not in peep pool, the rule fails;
	if creep cruel is not in peep pool:
		vcal "You have no one to assert hegemony over.";
		now ts-tried-reap is true;
		continue the action;
	the rule succeeds;

this is the vr-reap-rule rule:
	say "You manage to show the creep (cruel) who's boss with a kinder, gentler version of leadership. While you're light on details, the creep (cruel) isn't the sort of person who sticks around to hear them.";
	moot creep cruel;

this is the vc-stark-stump rule:
	if player is not in dark dump, the rule fails;
	if ts-stump-stark is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-stark-stump rule:
	say "Poof! A stark stump appears!";
	move stark stump to Dark Dump;

this is the vc-told-tale rule:
	if player is not in gold gaol, the rule fails;
	if ts-ale-old is false or ts-kale-cold is false:
		vcal "You're not nourished enough to make it far out of the cell. You need food and drink. Even lousy food and drink.";
		continue the action;
	the rule succeeds;

this is the vr-told-tale rule:
	say "Yeah, that's it. You've had your fun. Time to move on. Your adventures are just silly enough and just believable enough to scare friends or to laugh at things.";
	end the story;

[zzqqnnr]
