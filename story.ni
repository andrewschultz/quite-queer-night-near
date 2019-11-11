"Quite Queer Night Near" by Andrew Schultz

volume variables and stuff

the story headline is "Hokey Haunts, Jokey Jaunts".

the release number is 1.

release along with a website.

release along with an interpreter.

include Trivial Niceties by Andrew Schultz.

include Quite Queer Night Near Tables by Andrew Schultz.

include Quite Queer Night Near Tests by Andrew Schultz.

include Quite Queer Night Near Mistakes by Andrew Schultz.

procedural rule while eating something: ignore the carrying requirements rule.

The print final score rule is not listed in for printing the player's obituary.

cheattype is a kind of value. the cheattypes are phbt, letplus, letminus, partplus, partminus, leteq, letboth, and allover.

to phbt (x - a thing):
	now cht of x is phbt;

to phbt (x - a room): now cht of x is phbt;

a room has a cheattype called cht. cht of a room is usually phbt.

a thing has a cheattype called cht. cht of a thing is usually phbt.

to say once-now of (ru - a rule):
	process ru;
	say "[if the rule succeeded]now[else]once[end if]"

check examining:
	if description of noun is empty, say "The description of [the noun] has been hidden because it is too scary for mere text and not because I was trying to cram a lot of programming into 4 hours. Ooh! Ooh! The unknown is so frightening!" instead;

section when play begins - not for release

when play begins: now debug-state is true;

chapter boringness

a thing has a rule called bore-rule. bore-rule of a thing is usually the bore-nothing rule.

a thing can be boring. a thing is usually boring. a thing has text called bore-text. bore-text of a thing is "You don't have to do any usual parser manipulations on [the item described]. Maybe examine."

skip-bore-text is a truth state that varies.

this is the bore-nothing rule: do nothing;

instead of doing something with a boring thing:
	if action is procedural, continue the action;
	abide by the bore-rule of noun;
	if skip-bore-text is true:
		now skip-bore-text is false;
		continue the action;
	if bore-text of noun is not empty, say "[bore-text of noun][line break]" instead;
	say "Not much to do with [the noun], so, examining...";
	try examining the noun instead;

chapter largely copied from VVFF

to decide whether the action is procedural:
	if examining, yes;
	[if reading, yes;]
	[if hintobjing, yes;]
	[if lling, yes;]
	if thinking, yes;
	if jerkingjumping, yes;
	no;

when play begins:
	say "You should have known better than to eat any sort of marmite. Eww. But you definitely should not have eaten Far Fight Marmite. Especially not the bulk bar-bite kind. But you can't resist items on deep clearance at the lovely crowded store you visit every week. Full of indigestion, you hear voices saying 'Quite queer night near ... quite queer night near... [wfak]";
	say "[paragraph break]You think you got to sleep. When you wake up, you hear a voice boom ARRRRIGHT! A bunch of very small humanoids push you out of your bedroom chanting 'Tar! Tight! Spar! Spite!' You walk through. You see ... a bier with your name on it! Scary, scary!";
	now max-poss is max-bonus + min-needed;
	now the right hand status line is "[score]/[if max-poss is not min-needed][min-needed]-[end if][max-poss]";
	now ha-half is true;

check requesting the score:
	say "You have [score] out of [min-needed] points needed to win the game[if max-poss > min-needed], but there's a bonus point[end if].";
	if can-cheat-win, say "[line break]You can, if you want, jump all the way to the end to win with JJ.";
	if debug-state is true, say "DEBUG: [lump-count] lump count.";
	if debug-state is true:
		showme ts-bump-bark;
		showme ts-pump-park;
		showme ts-stump-stark;
		showme ts-plaster-plate;
		showme ts-mulch-more;
	the rule succeeds;

to moot (x - a thing): move x to Gazy Gap;

definition: a thing (called x) is moot:
	if x is in Gazy Gap, yes;
	no;

ha-half is a truth state that varies.

zap-core-entry is a truth state that varies.

to up-which (ts - a truth state):
	if ts is true:
		up-reg;
	else:
		up-min;
		increment cur-bonus

core-max is a number that varies. core-max is 12. [core-max is fixed. It is the number of point-scoring actions you need.]

min-needed is a number that varies. min-needed is 12. [min-needed increases as you find LLPs.]

max-bonus is a number that varies. max-bonus is 1.

cur-bonus is a number that varies. cur-bonus is 0. [we could define min-needed as core-max + cur-bonus I guess.]

core-score is a number that varies. core-score is 0.

max-overall is a number that varies.

max-poss is a number that varies.

to up-min:
	increment min-needed;
	increment the score;

to up-reg:
	increment core-score;
	increment the score;

to max-down: decrement max-poss;

chapter verb carnage

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

sheep-hint is a truth state that varies.

check taking:
	if noun is not sheep sheet, say "You never have to take anything in this game." instead;
	if sheep-hint is false:
		say "The sheep sheet feels a bit cold. You could take it anyway, but maybe you can do something to warm it up first.";
		now sheep-hint is true;
		the rule fails;

report taking sheep sheet: max-down;

check going nowhere:
	if player is in bight bier, say "The only way is east.";
	if player is in gaster gate or player is in gore gulch, say "The only way is west.";
	if player is in stair stones, say "You can only go north, south or west[if stone-filler is 2]. And up. You probably want to go up[else]. And you can try to go up[end if]." instead;
	if player is in stark stump, say "You can only go east or south." instead;
	if player is in peep pool, say "You can only go north or[if creep cruel is not moot], once the way is clear, [end if]east." instead;
	if player is in gold gaol:
		say "You need to look back on your experiences before leaving." instead;
	say "I wish I could give more information, but you can't go that way." instead;

volume the player

description of player is "You are [if thug is off-stage]no longer [end if]shedding a tight tear[if player is in bier]. You're no sight seer[end if]."

volume the map

chapter Blight Blear Bight Bier

Blight Blear Bight Bier is a room. "Boy! It's scary here! [if spite spear is in bight bier]A spite spear hangs above, and y[else]Y[end if]ou can only go east[if thug is off-stage], but it might be even scarier there. You need some way to make things less scary, on this Quite Queer Night Near by the Blight Blear Bight Bear. A spite spear hangs in the distance, just ready to swoop on you[end if].". cht of Blight Blear Bight Bier is letboth. [->fight fear]

ts-fight-fear is a truth state that varies.

section sheep sheet

check examining the sheep sheet for the first time:
	if player does not have sheep sheet, say "It claims to be a SHEEP SHEET because only sheeple use hints. This reminds you of all the times you were scared to ask for help, which is pretty scary. Not, like, mortally. But it's lasted.[line break]";

the cheap cheat sheep sheet is a thing in Blight Blear Bight Bier. cht of sheep sheet is letminus. "A cheap cheat sheep sheet lies here, sort of daring you to take it. It's obscured by sleep sleet.". description of sheep sheet is "It has information on--well, most everything you see here. XX any item for particular information. I guess it's a sheep sheet because you still feel sheepish looking at it, no matter how many times you have, and also I feel sheepish for such a silly name.". [->heap heat]

section sleep sleet

the sleep sleet is boring scenery in Blight Blear Bight Bier. cht of sleep sleet is letminus. "The sleep sleet hails down all around the cheap cheat sheep sheet. Just one more obstacle against taking it. The cold is probably too much. How could you dispel that?". bore-text is "Standard actions won't get rid of the sleet and let you take the sheet.". cht of sleep sleet is letminus. [->heap heat]

section spite spear

the spite spear is boring scenery in Blight Blear Bight Bier. "It's too far away to see in detail, but you don't need to. It reminds you of people you were scared would hit or insult you, who knew how to string that out.". bore-text is "You may need to take care of your own emotions to get rid of the spite spear.". cht of spite spear is letminus.

section DDTT

The Drink Drug Think Thug is a person in Blight Blear Bight Bier. cht of Think Thug is letminus. "Wait, no, you can't go east until you dispose of that Drink Drug Think Thug blocking the way.". description of Thug is "Big and brutal and surprisingly not dumb-looking. Even though they've abused their body and mind, they can beat you up physically and mentally. You'll need to change the Thug drastically to get by.". [-> pink pug]

check going east in Blight Blear Bight Bier:
	if Drink Drug Think Thug is in Bier, say "Not with the Drink Drug Think Thug by." instead;
	if Drink Drug Think Thug is off-stage, say "No. You're too scared to do anything right now." instead;

chapter Bare Bones Stair Stones

Bare Bones Stair Stones is east of Bight Bier. "You can go back west to the Bier[if sheep sheet is in bier]--who knows, that sheet could come in handy[else], though you don't need to[end if]. You can also go north and south, but there seems to be a way out above--[if stone-filler is 0]or there could be[else if stone-filler is 1]you just need to fill the stairs in a bit more[else]you don't seem to have much else to do here[end if]!".

to decide which number is stone-filler:
	let temp be boolval of ts-mulch-more;
	if north-flow, increment temp;
	decide on temp;

to decide whether north-flow:
	if ts-bump-bark is true and ts-stump-stark is true and ts-pump-park is true and ts-plaster-plate is true, yes;
	no;

check going up in Bare Bones Stair Stones:
	let Q be stone-filler;
	if Q is 2:
		say "You see a way through! You've built the bare bones stair stones into something more. You're ready to ascend and leave ... but you are so sure you will make it, you slip and tumble into...";
		move player to gold gaol;
		the rule succeeds;
	if Q is 0:
		say "The stones are nowhere near in climbable condition yet.";
	else if Q is 1:
		say "The stones are almost climbable but still too risky. You need to do a bit more.";
	the rule fails;

chapter Peep Pool

Peep Pool is south of Stair Stones. "A passage bending north and east[if ts-duel-deep is false]. You may wish to look in the pool and summon something. That's what pools are for[end if][if steep stool is in peep pool]. A steep stool blocks the way east--maybe someone or something can help you destroy it[end if].". cht of peep pool is leteq. [->deep duel] [->keep cool]

the steep stool is scenery in Peep Pool. "The steep stool is too smooth and, err, steep to climb, and it's too wide to get around. You may need to get rid of it--or have someone destroy it. Perhaps an enemy is waiting behind it to bust out.". cht of steep stool is letminus. [->deep duel]

ts-duel-deep is a truth state that varies.

check going east in Peep Pool:
	if creep cruel is touchable, say "You need to make it by the creep (cruel.)" instead;
	if steep stool is touchable, say "The steep stool is in the way." instead;

section creep cruel

the creep cruel is a person. cht of creep cruel is letminus. "A cruel creep snickers, pacing back and forth and blocking the way east where the steep stool was, just to spite you.". description is "The creep cruel is a bit bigger than you, but more importantly, it probably knows dirty fighting tricks.". [->keep cool]

chapter Gore Gulch

Gore Gulch is east of Peep Pool. cht of Gore Gulch is leteq. "The only way back is east. [if ts-mulch-more is false]There's something icky and sticky here besides gore, but you're not sure what[else]You extracted more mulch here, so there's nothing else to do[end if].". [-> more mulch]

ts-mulch-more is a truth state that varies.

chapter Dark Dump

Dark Dump is north of Bare Bones Stair Stones. "It's far too dark to the north and west[n-w-block]. You can still go south and east.". cht of dark dump is allover. [-> stark stump] [->bark bump] [->park pump]

to say n-w-block:
	if bark bump is touchable and stark stump are touchable:
		say ", but a bark bump blocks the way north and a stark stump blocks the way south";
	else if stark stump is touchable:
		say ", but a stark stump blocks the way west. It feels like something similar and arboreal, if a bit weird, could also make this a safer corridor";
	else if bark bump is touchable:
		say ", but a tall bark bump blocks the way north. Maybe summoning something less weird could make this a safer corridor";
	else:
		say ", and although nothing impedes you either way, perhaps you could build something to block baddies from coming IN";
	if park pump is touchable, say ". A park pump is also in the center here, and it will pump water and create a stream if somehow the small amount pooled here disappears"

ts-bump-bark is a truth state that varies.
ts-pump-park is a truth state that varies.
ts-stump-stark is a truth state that varies.

section bark bump

the bark bump is scenery. "A huge bark bump to the north makes it impossible for anything to go that way."

section park pump

the park pump is scenery. "The pump quit pumping once there was too much water."

section stark stump

the stark stump is scenery. "The stark stump is so huge, it blocks passage west. It's immovable."

chapter Gaster Gate

Gaster Gate is east of Dark Dump. "The only way back is west. A gaster (that's an archaic verb meaning to scare) gate blocks the way east[if master mate is moot]. With the Master Mate gone, there's not much left to do here[end if].". cht of Gaster Gate is letplus. [->plaster plate]

ts-plaster-plate is a truth state that varies.

section Master Mate

the Master Mate is a person in Gaster Gate. "A master mate stands here, looking pityingly on you. What could you possibly do to help things?". cht of Master Mate is letplus. [->plaster plate]

chapter Gold Gaol

Gold Gaol is a room. "There's nothing much to do here. Well, the wall says FOLD FAIL, giving an idea of how goal 'should' be pronounced. Hey, when you're a prisoner, you sort of need to do as you're told, I guess.". cht of gold gaol is allover. [->old ale] [->cold kale] [->told tale]

ts-ale-old is a truth state that varies.
ts-kale-cold is a truth state that varies.

chapter Gazy Gap

Gazy Gap is a room.

volume the whole special verb thing

chapter LLing

xxing is an action applying to one thing.

understand the command "xx" as something new.

understand "xx [thing]" as xxing.
understand "xx" as xxing.

rule for supplying a missing noun when xxing:
	say "You consult the sheet about [location of player]...";
	now the noun is the location of the player;
	continue the action;

carry out xxing:
	if sheep sheet is not touchable, say "You can't figure anything out. Maybe having that sheet would help." instead;
	if noun is sheep sheet:
		if player has sheep sheet, say "You can't really consult the sheet about itself." instead;
		say "The sheep sheet shimmers vaguely. You suspect you can just take it, but getting it right would give a style point." instead;
	if cht of noun is phbt, say "You see nothing when you look closely at [the noun][if noun is a room], so there's nothing you need to do with the room title[end if]." instead;
	say "[leetclue of cht of noun].";

chapter abouting

abouting is an action applying to nothing.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "QQNN was written in under four hours for EctoComp 2019. It heavily cut-and-pasted from Very Vile Fairy File. It did not receive outside testing. However, I submitted a post-comp releaee that allowed for tweaks that weren't possible in the time allowed. If you want to report bugs/suggestions, do so at http://github.com/andrewschultz/quite-queer-night-near/issues. I appreciate them! CREDITS has additional thanks.";
	say "[line break][one of]QQNN is a sort of guess-the-verb game. If you want the game mechanic semi-spoiled, type ABOUT again[or]QQNN relies on couplets to increase your score. For instance, if there is a cold coy Rolled Roy needed courage, you could change him into BOLD BOY, and the game tries to give clever responses for tries (good-faith or otherwise) sycg as OLD OI[stopping].";

chapter creditsing

creditsing is an action applying to nothing.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "Thanks to JJ Guest for starting EctoComp, Duncan Bowsman for continuing it, and Ruber Eaglenest and JoshG for keeping it going further. EctoComp has been a fun way to throw out little games. Also, thanks to itch.io for hosting this game.";
	say "[line break]If you'd like to be in these credits, you too can do so by finding an issue or making a good suggestion.";
	the rule succeeds.

chapter soundsing

soundsing is an action applying to nothing.

understand the command "sounds" as something new.
understand the command "sound" as something new.

understand "sounds" and "sound" as soundsing.

carry out soundsing:
	say "The basic sounds in the English language are:[paragraph break]";
	say "one letter: b k d f g h j l m n p r s t v w x z (c q and x map to others.)";
	say "two letters: ur ar or bl br cl cr dr fl fr gl gr pl pr sk sl sp st sw spr str tr.";
	say "rarer two letters: ch so th (thing or this) wh ng nk oi ow oo (took) aw zh (vision.)";
	the rule succeeds.

chapter parser error tweak(s)

table-to-scour is a table name that varies.

Rule for printing a parser error (this is the clue half right words rule):
[	now table-to-scour is table of homonym rejections;
	abide by the mistake-checker rule;]
	abide by the verb-checker rule;
	now table-to-scour is table of mistake substitutions;
	abide by the mistake-checker rule;
	continue the action;

zap-weird-break is a truth state that varies.

Rule for printing a parser error (this is the check for room name in player command rule):
	repeat with X running from 1 to the number of words in the player's command:
		if the printed name of location of player matches the regular expression "(^|\W)([word number X in the player's command])($|\W)", case insensitively:
			if word number 1 in the player's command is "xx":
				say "It looks like you may have tried to scan the current location. You just need to say LL to do this. Would you like to do so now?[line break]";
				if the player consents:
					skip upcoming rulebook break;
					now zap-weird-break is true;
					try xxing location of player;
					now zap-weird-break is false;
					the rule succeeds;
				say "Okay. ";
			else:
				say "It looks like you may have tried to refer to the room name, or part of it. ";
			say "You never need to use the room name directly.";
			the rule succeeds;
	continue the action;

rule for printing a parser error:
	say "This is a sort of guess-the-verb game. All point scoring actions are verbs to guess. [if sheep sheet is touchable]Since[else]If[end if] you have the sheep sheet handy, you can [b]XX[r] something, but this may not be fully robust, as this is release 1 of SpeedIF. You can also type ABOUT to see general information.";

chapter the big rule(s)

this is the verb-checker rule:
	let local-ha-half be false;
	repeat through the table of verb checks:
		let my-count be 0;
		if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
		if there is a w2 entry:
			if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
		else if my-count > 0:
			increment my-count;
		let wfull-fail be false;
		[say "[ver-rule entry].";]
		if there is a wfull entry:
			if the player's command matches the wfull entry:
				now my-count is 3;
			else if my-count is 2:
				now wfull-fail is true;
		if my-count >= 2:
			process the ver-rule entry;
			if the rule failed:
				next;
			else if the rule succeeded:
				if okflip entry is false:
					unless my-count is 3 or there is no w2 entry or the player's command matches the regular expression "^([w1 entry])\W": [this is for the DIM'D test case... and "my-count is 3" is a hack for FLIMFLAM]
						say "You've got it backwards! Just flip things around, and it'll be okay.";
						the rule succeeds;
				if wfull-fail is true:
					say "Ooh! You're close, but you juggled things up, somehow.";
					the rule succeeds;
				if there is a core entry and idid entry is false:
					up-which core entry;
					if core entry is false:
						increase lump-count by 2;
				if zap-core-entry is true:
					blank out the core entry;
					now zap-core-entry is false;
				now idid entry is true;
				process the do-rule entry;
				process the notify score changes rule;
				if there is a core entry and core entry is false:
					check-lump-progress;
				process the winnable-with-cheating rule;
			process the note right guess wrong time rule;
			the rule succeeds;
		if ha-half is true and my-count is 1: [there is a bug here with, say, DEAL DIER instead of DEAL DEAR. It prints something extra.]
			now vc-dont-print is true;
			now already-rhymed-this is false;
			process the ver-rule entry;
			if the rule failed:
				now vc-dont-print is false;
				next;
			now vc-dont-print is false;
			if already-rhymed-this is true, break;
			now local-ha-half is true;
			if debug-state is true, say "DEBUG: [ver-rule entry] tipped off the HA HALF button.";
			next;
	if local-ha-half is true:
		say "Half of your body tingles. Perhaps you are (yeah, this is corny) halfway right.";
		the rule succeeds;

chapter the lump or its replacement

next-lump-level is a number that varies. next-lump-level is 3.
next-lump-delta is a number that varies. next-lump-delta is 0.
lump-count is a number that varies. lump-count is 0.
lump-charges is a number that varies. lump-charges is 0.
lump-uses is a number that varies. lump-uses is 0.

to say jjj: say "JERKING JUMP or JJ"

to check-lump-progress:
	increment lump-count;
	if lump-count >= next-lump-level:
		say "[line break][if lurking lump is off-stage]Thwup! You hear a sound...and notice a lurking lump has fallen. Gazing at its dull shine, you realize it could help you move ahead on a tricky rhyme, at the right place at the right time, with [jjj].[paragraph break]You take the lump[else if lurking lump is moot]Thwup! A lurking lump appears again. You take it[else]The lurking lump pulses and grows. All your guesses have paid off[end if].";
		now player has lurking lump;
		increment lump-charges;
		decrease lump-count by next-lump-level;
		increase next-lump-level by next-lump-delta;
		process the winnable-with-cheating rule;

a lurking lump is a boring thing. description is "The lurking lump shines dully. It looks to have [lump-charges in words] charge[plur of lump-charges] for you to make a JERKING JUMP (JJ) if anything is baffling you.". bore-text of lurking lump is "You can only JERKING JUMP (JJ) with the lurking lump."

this is the mistake-checker rule:
	repeat through table-to-scour:
		if the player's command matches mist-cmd entry:
			process the mist-rule entry;
			if the rule succeeded:
				say "[mist-txt entry][line break]";
				if there is a leet-rule entry:
					process the leet-rule entry;
					unless the rule succeeded:
						if got-yet entry is false:
							check-lump-progress;
						now got-yet entry is true;
						the rule succeeds;
				let d1 be -10;
				let d2 be -10;
				if there is a w1let entry:
					now d1 is w1let entry - number of characters in word number 1 in the player's command;
					if there is a w2let entry:
						now d2 is w2let entry - number of characters in word number 2 in the player's command;
					if d2 is -10, now d2 is d1;
					say "[line break][leetclue of cluecheat of d1 and d2].";
				if got-yet entry is false:
					check-lump-progress;
				now got-yet entry is true;
				the rule succeeds;

to decide which cheattype is the cluecheat of (n1 - a number) and (n2 - a number):
	if n2 > n1, decide on cluecheat of n2 and n1;
	if n1 is 0 and n2 is 0, decide on leteq; [center]
	if n1 > 0 and n2 is 0, decide on partplus; [center left]
	if n1 > 0 and n2 > 0, decide on letplus; [left]
	if n1 is 0 and n2 < 0, decide on partminus; [center right]
	if n1 < 0 and n2 < 0, decide on letminus; [right]
	decide on letboth; [one +, one minus, wobbles]

to say leetclue of (x - a cheattype):
	if sheep sheet is not touchable, continue the action;
	say "You refer to the sheep sheet, noticing it says [if noun is nothing]your effort[else][the noun][end if] goes to [scancol of x]";

to say scancol of (x - a cheattype): say "[if x is letplus]++[else if x is partplus]+=/=+[else if x is leteq]==[else if x is partminus]-=/=-[else if x is letminus]--[else if x is letboth]+-/-+[else if x is phbt]00[else if x is allover]??[else]BUG[end if]"

chapter thinking

ever-thought is a truth state that varies.

the block thinking rule is not listed in any rulebook.

to read-laters (ts - a truth state):
	let thought-any be false;
	repeat through table of forlaters:
		if ready-to-hint entry is true:
			if is-done entry is true:
				if debug-state is true, say "(DEBUG NOTE) Somehow the [cmd-to-say entry] is-done entry didn't get wiped out after the score adjustments.";
				now ready-to-hint entry is false;
				next; [ this may duplicate code from the score and thinking changes rules but I'm still a bit nervous about it at the moment. This shuts the door 100%. ]
			process the can-do-now entry; [?? surround with vc-dont-print being true then false ??]
			let Q be whether or not the rule succeeded;
			if Q is not ts, next;
			if thought-any is false, say "[line break]";
			if the rule succeeded, say "([b]CAN DO NOW[r]) ";
			now thought-any is true;
			say "[think-advice entry][line break]";

to clue-later (ct - text):
	if vc-dont-print is true, continue the action;
	repeat through table of forlaters:
		if ct is cmd-to-say entry:
			if debug-state is true and ready-to-hint entry is true, say "(DEBUG re-checking)[line break]";
			if ready-to-hint entry is false, now think-clue-flag is true;
			now ready-to-hint entry is true;
			continue the action;
	now think-clue-flag is true;
	say "Oops. I tried to save [ct] in the THINK command for later, but failed[not-crit-but].";

to say not-crit-but: say ". This is not a critical bug, but I'd like to know about it"

carry out thinking:
	now vc-dont-print is true;
	read-laters true;
	read-laters false;
	if ever-thought is false:
		now ever-thought is true;
		say "[line break][b]NOTE[r]: The game will indicate when one command you found early will be applicable. An asterisk or (+) will also appear in the score in the upper right. Until then, you can [b]THINK[r] to see things you figured but aren't quite ready to do yet.";
	now vc-dont-print is false;

think-clue-flag is a truth state that varies.

every turn when think-clue-flag is true (this is the note right guess wrong time rule):
	say "[line break][one of][b]NOTE[r]: this command will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command again saved to [b]THINK[r] for later reference.)[stopping]";
	now think-clue-flag is false;
	continue the action;

chapter the big table

table of verb checks [xxvc]
w1 (text)	w2 (text)	okflip	core	idid	ver-rule	do-rule	wfull (topic)
"fight|fright"	"fear|freer"	true	true	false	vc-fight-fear rule	vr-fight-fear rule	"fight fear" or "fright freer" [start bight bier]
"pink"	"pug"	true	true	false	vc-pink-pug rule	vr-pink-pug rule	--
"heap|bleep"	"heat|bleat"	true	false	false	vc-heap-heat rule	vr-heap-heat rule	"heap heat" or "bleep bleat"
"deep"	"duel"	true	true	false	vc-deep-duel rule	vr-deep-duel rule	-- [start peep pool]
"keep"	"cool"	true	true	false	vc-keep-cool rule	vr-keep-cool rule	--
"more"	"mulch"	true	true	false	vc-more-mulch rule	vr-more-mulch rule	-- [start gore gulch]
"plaster"	"plate"	true	true	false	vc-plaster-plate rule	vr-plaster-plate rule	-- [start gaster gate]
"bark|hark"	"bump|hump"	true	true	false	vc-bark-bump rule	vr-bark-bump rule	"bark bump" or "hark hump" [start dark dump]
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
	now cht of gold gaol is leteq; [-> told tale]
	if ts-ale-old is false or ts-kale-cold is false:
		say "You still need more nourishment, though. Food and drink.";
		if ts-ale-old is false:
			now cht of gold gaol is letminus; [gold gaol->old ale]
	else:
		say "Having had both food and drink, you're ready to move on.";

ts-tried-keep is a truth state that varies.

every turn when ts-tried-keep is true and creep cruel is in Peep Pool: [??zap this when ready]
	say "You should probably KEEP COOL again. It will get rid of the creep (cruel.)";

ts-tale-early is a truth state that varies.

every turn when ts-tale-early is true and ts-ale-old is true and ts-kale-cold is true (this is the endgame prod rule):
	say "You should probably try to make a TOLD TALE again. That's all that's left to do.";

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
		if stump is in dump and bump is in dump and pump is in dump: [oh, this makes me laugh]
			now cht of dark dump is phbt;
		else:
			if bump is in dump and pump is in dump:
				now cht of dark dump is letplus; [dark dump->stark stump]
			else if stump is in dump:
				now cht of dark dump is leteq; [dark dump->park pump]

section rules to sort

[xxqqnnr]

this is the vc-bark-bump rule:
	if player is not in dark dump, the rule fails;
	if ts-bump-bark is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-bark-bump rule:
	say "A bark bump appears to the north! You weren't going that way, but it provides a bit of a channel.";
	move bark bump to Dark Dump;
	now ts-bump-bark is true;
	check-north-flow;

this is the vc-cold-kale rule:
	if player is not in gold gaol, the rule fails;
	if ts-kale-cold is true:
		vcal "To quote Al and Peg Bundy: 'More kale, dear?' / 'Did I ASK for more kale, dear?'";
		continue the action;
	the rule succeeds;

this is the vr-cold-kale rule:
	say "Some cold kale appears! It's not very tasty, but it's better than nothing.";
	now ts-kale-cold is true;
	see-how-nourished;
	process the endgame prod rule;

this is the vc-deep-duel rule:
	if player is not in peep pool, the rule fails;
	if creep cruel is not off-stage:
		vcal "You already summoned the creep (cruel).";
		continue the action;
	the rule succeeds;

this is the vr-deep-duel rule:
	say "You look into the peep pool and bravely summon an opponent for a deep duel. You hear a crash from the steep stool to the east. The stool is utterly shattered now. There's a passage east, but it's blocked by the person who made it possible: a creep, cruel.";
	move creep cruel to peep pool;
	moot steep stool.

this is the vc-fight-fear rule:
	if ts-fight-fear is true:
		vcal "Yes, fighting fear is a lifelong journey, but fighting too hard all at once will bring it back.";
		continue the action;
	the rule succeeds;

this is the vr-fight-fear rule:
	say "You do your best to feel braver. It works, well enough! The Drink Drug Think Thug seems a bit less tough now, and what do you know? The spite spear vanishes, too!";
	now ts-fight-fear is true;
	moot spite spear;

this is the vc-keep-cool rule:
	if player is not in peep pool or creep cruel is moot, the rule fails;
	if creep cruel is not in peep pool:
		vcal "You have no one annoying you. But there might be someone later, if you're lucky! Wow!";
		now ts-tried-keep is true;
		clue-later "KEEP COOL";
		continue the action;
	the rule succeeds;

this is the vr-keep-cool rule:
	say "You manage to ignore the creep (cruel) as they get more and more desperate to insult you. Eventually, they find you not worth the effort.";
	moot creep cruel;

this is the vc-heap-heat rule:
	if sheep sheet is off-stage, the rule fails;
	if player has cheap cheat sheep sheet:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-heap-heat rule:
	let Q Be whether or not word number 1 in the player's command is "bleep";
	say "You [if Q is true]let go some grawlix-heavy invective, and it gives you enough of a boost to deal with the sleep sleet in order to pull out the cheap cheat[else]rub your hands together for warmth, blow on the sheet, and so on[end if]. And what do you know? It stays less frigid after you pick it up. It'd still be technically functional at any temperature, but small victories.";
	now player has sheep sheet;
	moot sleep sleet;

this is the vc-more-mulch rule:
	if player is not in Gore Gulch, the rule fails;
	if ts-mulch-more is true:
		vcal "Hoo boy. You have enough mulch.";
		continue the action;
	the rule succeeds;

this is the vr-more-mulch rule:
	say "More mulch appears! It spills out to the peep pool and beyond, probably even back to the stair stones.";
	now ts-mulch-more is true;
	check-stair-stones;

this is the vc-old-ale rule:
	if player is not in gold gaol, the rule fails;
	if ts-ale-old is true:
		vcal "If you were trying to get drunk, the old ale would be the way to do it. But you're trying to get FREE.";
		continue the action;
	the rule succeeds;

this is the vr-old-ale rule:
	say "Yum! Or not. You find a firkin or flagon or whatever of old ale, and it doesn't taste very good, but it's nourishing and hopefully not too alcoholic.";
	now ts-ale-old is true;
	see-how-nourished;
	process the endgame prod rule;

this is the vc-park-pump rule:
	if player is not in dark dump, the rule fails;
	if ts-pump-park is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-park-pump rule:
	say "Poof! A park pump appears, just like you remember as a kid! It appears to be auto-pumping, creating a waterway until things get too flooded.";
	now ts-pump-park is true;
	move park pump to dark dump;
	check-north-flow;

this is the vc-pink-pug rule:
	if drink drug think thug is off-stage or player is not in bight bier, the rule fails;
	if ts-fight-fear is false:
		vcal "You're too scared to think that something like that could even work.";
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
	say "A huge chunk of the gaster gate breaks off and creates a plaster plate. It's much too big to eat off, but it crumbles quickly apart (probably not Last [']Er Late brand) and is washed away beyond the dark dump.";
	now ts-plaster-plate is true;
	moot master mate;
	check-north-flow;

this is the vc-stark-stump rule:
	if player is not in dark dump, the rule fails;
	if ts-stump-stark is true:
		vcal "You already did that.";
		continue the action;
	the rule succeeds;

this is the vr-stark-stump rule:
	say "Poof! A stark stump appears! It blocks the way to the west, but it provides a channel in case anything would come flowing through.";
	move stark stump to Dark Dump;
	now ts-stump-stark is true;
	check-north-flow;

this is the vc-told-tale rule:
	if player is not in gold gaol, the rule fails;
	if ts-ale-old is false or ts-kale-cold is false:
		vcal "You're not nourished enough to make it far out of the cell. You need food and drink. Even lousy food and drink.";
		now ts-tale-early is true;
		clue-later "TOLD TALE";
		continue the action;
	the rule succeeds;

this is the vr-told-tale rule:
	say "Yeah, that's it. You've had your fun. Time to move on. Your adventures are just silly enough and just believable enough to scare friends or to laugh at things.";
	end the story finally saying "BAH?! BOO-YAH, YOU!";
	follow the shutdown rules;

[zzqqnnr]

chapter jerking jump

jerkingjumping is an action applying to nothing.

understand the command "jerking jump" as something new.
understand the command "jj" as something new.

understand "jerking jump" as jerkingjumping.
understand "jj" as jerkingjumping.

in-jerk-jump is a truth state that varies.

to say firstor of (t - indexed text):
	replace the regular expression "\|.*" in t with "";
	say "[t in upper case]";

to lump-minus:
	decrement lump-charges;
	say "The lurking lump shrivels[if lump-charges is 0] and vanishes. Maybe more good guesses will bring it back[one of][or] again[stopping][else], but it still looks functional[end if].";
	if lump-charges is 0, moot lurking lump;
	now in-jerk-jump is false;
	increment lump-uses;
	process the notify score changes rule;

to decide whether can-cheat-win:
	if core-max - core-score <= lump-charges, yes;
	no;

warn-cheap-win is a truth state that varies.

this is the winnable-with-cheating rule:
	if warn-cheap-win is true, continue the action;
	if debug-state is true:
		say "DEBUG: remaining = [core-max - core-score], Lump charges = [lump-charges].";
	if can-cheat-win:
		say "[line break]By the way, you can now cheat your way through the game with the JJ command, if you want.";
		now warn-cheap-win is true;

to decide which number is solved-jerk-check: [yeah yeah magic numbers ?? we need to fix this]
	if ts-tried-keep is true and cruel creep is in peep pool, decide on 1;
	if ts-tale-early is true and ts-ale-old is true and ts-kale-cold is true, decide on 2;
	decide on 0;

carry out jerkingjumping:
	if debug-state is false:
		if lurking lump is off-stage, say "You have nothing that would help you do that." instead;
		if lurking lump is moot, say "You used up all the lump's charges, but maybe you can get more." instead;
	else:
		say "DEBUG: ignoring the charges in the lump, currently at [lump-charges].";
	if solved-jerk-check > 0:
		say "There's something you can do right now that you tried before, but you weren't prepared yet. If you'd still like to use the lump anyway (not recommended,) say YES.";
		unless the player yes-consents:
			say "Okay.";
			the rule succeeds;
	now in-jerk-jump is true;
	now vc-dont-print is true;
	repeat through table of verb checks:
		unless there is a core entry, next;
		if core entry is false, next;
		if idid entry is true, next;
		process the ver-rule entry;
		if the rule succeeded:
			say "After some thought, you consider the right way forward: [firstor of w1 entry] [firstor of w2 entry]...";
			now idid entry is true; [this is so BURY BILE gets processed. We already checked IDID above.]
			up-which core entry; [?? I really need to clean this code up. I want just to increment the score in one place. If a rule can keep track of the current row, that would be nifty.]
			process the do-rule entry;
			if zap-core-entry is true:
				blank out the core entry;
				now zap-core-entry is false;
			skip upcoming rulebook break;
			lump-minus;
			now vc-dont-print is false;
			the rule succeeds;
	now vc-dont-print is false;
	say "The lurking lump remains immovable. I guess you've done all you need, here.";
	the rule succeeds.

