"Quite Queer Night Near" by Andrew Schultz

volume variables and stuff

the story headline is "Hokey Haunts, Jokey Jaunts".

release along with a website.

release along with the "Parchment" interpreter.

include undo output control by Erik Temple.

include Trivial Niceties by Andrew Schultz.

include Prime Pro Rhyme Row Universal by Andrew Schultz.

include Prime Pro Rhyme Row Common by Andrew Schultz.

include Prime Pro Rhyme Row E12 by Andrew Schultz.

include Quite Queer Night Near Definitions by Andrew Schultz.

include Quite Queer Night Near Globals by Andrew Schultz.

include Quite Queer Night Near Tables by Andrew Schultz.

include Quite Queer Night Near Tests by Andrew Schultz.

include Quite Queer Night Near Mistakes by Andrew Schultz.

use authorial modesty.

procedural rule while eating something: ignore the carrying requirements rule.

check examining:
	if description of noun is empty, say "The description of [the noun] has been hidden because it is too scary for mere text and not because I was trying to cram a lot of programming into 4 hours. Ooh! Ooh! The unknown is so frightening!" instead;

section game-specific stuff from PPRR universal file (PPRR common file is not included)

this is the game-specific-backdrop-check rule: do nothing;

definition: a direction (called d) is viable:
	if the room d of location of the player is nowhere, no;
	yes;

to decide whether vcp-ignore: decide no; [When do we block check-text? In VVFF, when we have Been Buggin]

this is the note learner changes rule: do nothing;

to current-table-note-x (tn - a table name): current-table-note tn;

section when play begins - not for release

when play begins: now debug-state is true;

chapter room defs

a room can be bounded. a room is usually bounded.

chapter boringness

a thing is usually not boring.

instead of doing something with a boring thing:
	if action is procedural, continue the action;
	abide by the bore-rule of noun;
	if skip-bore-text is true:
		now skip-bore-text is false;
		continue the action;
	if bore-text of noun is not empty:
		if noun is not borewarned:
			say "(NOTE: standard verbs won't work to deal with obstacles or scenery, animated or otherwise. This is a generic message and not specific to [the noun].)[paragraph break]";
			now noun is borewarned;
		say "[bore-text of noun][line break]" instead;
	else:
		say "You don't have to try any of the usual parser manipulations on [the noun] besides maybe examining. So let's try that.";
	try examining the noun instead;

chapter largely copied from VVFF

to decide whether the action is procedural:
	if examining, yes;
	[if reading, yes;]
	[if hintobjing, yes;]
	if attacking, yes;
	if csing, yes;
	if thinking, yes;
	if pathpavining, yes;
	if taking, yes;
	no;

when play begins:
	now press-pro-level is 3;
	move the boiled base spoiled space backdrop to all bounded rooms;
	say "You should have known better than to eat any sort of marmite. Eww. But you definitely should not have eaten Far Fight Marmite. Especially not the bulk bar-bite kind. But you can't resist items on deep clearance at the lovely crowded store you visit every week. Full of indigestion, you hear voices saying 'Quite queer night near ... quite queer night near... [wfak]";
	say "[paragraph break]You think you got to sleep. On waking up, you exit your bedroom to ... two small grey Teletubby-looking things (shudder) calling themselves Timmy Tingles and Jimmy Jingles! 'Come dance with us on the Shimmy Shingles!'[wfak]";
	say "[line break]This is all too corny for you. You try to brush past, but they cry 'You're no Mimmy Mingles' before calling on Primmy Pringles and Limmy Lingles, three times their size and meaner, to drag you away...to the Dimmy Dingles? No, worse![wfak]";
	say "[line break]You black out as you are dragged away. A voice booms 'ARRRRRIGHT! Tar! Tight! Spar! Spite!' You look around. You see ... a bier with your name on it! Scary, scary!";
	now ha-half is true;

check requesting the score:
	say "You have [current-score] out of [min-needed] points needed to win the game[if cur-bonus < cur-max-bonus], but there's a bonus point[end if].";
	if can-cheat-win, say "[line break]You can, if you want, jump all the way to the end to win with PP.";
	if debug-state is true, say "DEBUG: [wrmm-count] maven next-charge count. Maven charges = [wrmm-charges].";
	the rule succeeds;

chapter verb carnage

[xxqqcarn]

understand the command "attach" as something new.
understand the command "buy" as something new.
understand the command "chop" as something new.
understand the command "crack" as something new.
understand the command "embrace" as something new.
understand the command "fight" as something new.
understand the command "hold" as something new.
understand the command "hop" as something new.
understand the command "hug" as something new.
understand the command "insert" as something new.
understand the command "jump" as something new.
understand the command "kill" as something new.
understand the command "kiss" as something new.
understand the command "light" as something new.
understand the command "murder" as something new.
understand the command "no" as something new.
understand the command "polish" as something new.
understand the command "prune" as something new.
understand the command "punch" as something new.
understand the command "purchase" as something new.
understand the command "say" as something new.
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
understand the command "yes" as something new.

[zzqqcarn]

volume verby stuff

sheep-hint is a truth state that varies.

check taking:
	if noun is not sheep sheet, say "You never have to take anything in this game." instead;
	if sheep-hint is false:
		say "The sheep sheet feels a bit cold. You could take it anyway, but maybe you can do something to warm it up first.";
		now sheep-hint is true;
		the rule fails;

report taking sheep sheet:
	max-down;
	say "A chill runs through your body. A voice whispers 'You'll never achieve the maximum score.' This makes you feel bad, until you remember escape is the most important thing.";
	the rule succeeds;

check exiting: try going outside instead;

check going nowhere:
	if noun is inside or noun is outside, say "You never need to go inside or outside, though you may need to go up [if stair stones is unvisited]one place[else]in [stair stones][end if]." instead;
	say "I wish I could give more information, but you can't go [noun]." instead;

to say all-plas: if sco-plaster-plate is true, say ". Breaking off the plaster plate was enough"

volume silly responses to popular Inform verbs

chapter attacking

the block attacking rule is not listed in any rulebook.

check attacking: say "The game is not called row-right-now night!" instead;

chapter singing

check singing:
	say "The only sign that comes to mind is [i]Dearie, Dark Eerie Ark[r]." instead;

chapter waiting

check waiting: say "Wow! [']Ll wait? Foul fate!" instead;

chapter talking

carry out talktoing:
	if the noun is not a person, say "No response." instead;
	if noun is drink drug think thug, say "They grunt. You're not sure if they're in deep thought or making fun of you, or thinking deeply about the optimal way to make fun of you, but you need to get by them!" instead;
	if noun is creep cruel, say "That never works with people like that." instead;
	say "They have nothing to say. They should, but they don't.";
	the rule succeeds.

volume the player

description of player is "You are [if thug is off-stage]no longer [end if]shedding a tight tear[if player is in bier]. You're no sight seer[end if]."

chapter swearing

check swearing obscenely: say "A spooky voice intones: 'Cursin? [']K, person, pay!' But nothing happens, thankfully." instead;

chapter xyzzying

carry out xyzzying:
	say "<VAST VERB-BLAST BLURB>[paragraph break]";
	the rule succeeds.

volume the map

chapter Blight Blear Bight Bier

Blight Blear Bight Bier is a room. "Boy! It's scary here! [if spite spear is in bight bier]A spite spear hangs above, and a[else]A[end if] [spoiled space] prevents passage every way except east[if thug is off-stage], but it might be even scarier there. You need some way to make things less scary, on this Quite Queer Night Near by the Blight Blear Bight Bier. A spite spear hangs in the distance, just ready to swoop on you[end if].". cht of Blight Blear Bight Bier is letboth.

the player is in Blight Blear Bight Bier.

guess-table of Bight Bier is table of blight blear bight bear guesses.

section boiled base spoiled space

the boiled base spoiled space is a boring backdrop. "You can barely see it, but it sure pulses ominously. But at least it helps narrow down the directions you [i]can[r] go.";

section DDTT

[after choosing notable locale objects when player is in Bight Bier:
	if Drink Drug Think Thug is in Bight Bier, set the locale priority of Drink Drug Think Thug to 9;]

The Drink Drug Think Thug is a boring person in Blight Blear Bight Bier. cht of Think Thug is letminus. "Wait, no, you can't go east until you dispose of that Drink Drug Think Thug blocking the way.". description of Thug is "Big and brutal and surprisingly not dumb-looking. Even though they've abused their body and mind, they can beat you up physically and mentally. You'll need to change the Thug drastically to get by.". bore-text of Drink Drug Think Thug is "'Walk! Wham! Block! Blam!' the [thug] opines, unhelpfully. You'll need the right sort of magic to get by."  [-> pink pug]

guess-table of drink drug think thug is table of drink drug think thug guesses.

check going east in Blight Blear Bight Bier:
	if Drink Drug Think Thug is in Bier, say "Not with the Drink Drug Think Thug blocking you." instead;

section sheep sheet

check examining the sheep sheet for the first time:
	if player does not have sheep sheet, say "It claims to be a SHEEP SHEET because only sheeple use hints. This reminds you of all the times you were scared to ask for help, because you might feel dumb still not getting it or realizing you could've done without the help if you'd REALLY been thinking.[paragraph break]Which is pretty scary. Not nearly, like, mortally. But it's lasted.[line break]";

the cheap cheat sheep sheet is a rhymable in Blight Blear Bight Bier. cht of sheep sheet is letminus. "A cheap cheat sheep sheet lies here, sort of daring you to take it. It's obscured by sleep sleet.". description of sheep sheet is "It has information on--well, most everything you see here. XX any item for particular information. I guess it's a sheep sheet because you still feel sheepish looking at it, no matter how many times you have, and also I feel sheepish for such a silly name. You can CC, SS, CCSS or CS anything to see cheating information.". [->heap heat]

guess-table of cheap cheat sheep sheet is table of cheap cheat sheep sheet guesses.

after examining sheep sheet when player has sheep sheet:
	say "You can also type [b]DEEP DEET[r] to [if sheet-cheated is true]recap[else]learn[end if] how, precisely, the sheet works.";

section ccsscs

csing is an action applying to one thing.

understand the command "cc" as something new.
understand the command "ss" as something new.
understand the command "ccss" as something new.
understand the command "cs" as something new.

understand "cc [thing]" as csing.
understand "cs [thing]" as csing.
understand "ss [thing]" as csing.
understand "ccss [thing]" as csing.

understand "cc" as csing.
understand "cs" as csing.
understand "ss" as csing.
understand "ccss" as csing.

rule for supplying a missing noun when csing:
	if cheap cheat sheep sheet is fungible:
		say "You consult [the sheet] about the general area...";
		now the noun is the location of the player;
	else:
		say "You can't make any sense of the general area without [the sheet].";
		reject the player's command;
	continue the action;

carry out csing:
	if cheap cheat sheep sheet is not fungible, say "You'd like to, but [the sheet] isn't around. [if player is in gaol]There's no way to get it, but you made it this far[else]Nothing's stopping you from going back, though[end if]." instead;
	if noun is sheep sheet:
		if player has sheep sheet, say "You can't really consult the sheet about itself." instead;
		say "The sheep sheet shimmers vaguely. You suspect you can just take it, but getting it right would give a style point." instead;
	if noun is the player, say "You don't need to change yourself. Whew." instead;
	if cht of noun is phbt, say "You can't find any information on [the sheet] about [the noun]. Must not need changing." instead;
	say "[leetclue of cht of noun and false].";
	the rule succeeds;

section sleep sleet

the sleep sleet is boring scenery in Blight Blear Bight Bier. cht of sleep sleet is letminus. "The sleep sleet hails down all around the cheap cheat sheep sheet. Just one more obstacle against taking it. The cold is probably too much. How could you dispel that?". bore-text is "Standard actions won't get rid of the sleet and let you take the sheet.". [->heap heat]

section spite spear

the spite spear is boring scenery in Blight Blear Bight Bier. "It's too far away to see in detail, but you don't need to. It reminds you of people you were scared would hit or insult you, who knew how to string that out.". bore-text is "You may need to take care of your own emotions to get rid of the spite spear.". cht of spite spear is partminus. [-> fight fear]

chapter Bare Bones Stair Stones

Bare Bones Stair Stones is east of Bight Bier. It is not bounded. "You can go back west to the Bier[if sheep sheet is in bier]--who knows, that sheet could come in handy[else], though you don't need to[end if]. You can also go north and south, but there seems to be a way out above--[if stone-filler is 0]or there could be[else if stone-filler is 1]you just need to fill the stairs in a bit more[else]you don't seem to have much else to do here[end if]!".

guess-table of bare bones stair stones is table of bare bones stair stones guesses.

check going in Bare Bones Stair Stones when player has math maven:
	if noun is south and sco-mulch-more is true, say "[maven-groan].";
	if noun is north and north-flow, say "The [maven-groan].";
	if noun is west and player has sheep sheet, say "[maven-groan].";

to say maven-groan: say "The [maven] rolls its eyes and groans as you go back [noun][one of]. Perhaps you're done there[or][stopping]"

to decide which number is stone-filler:
	let temp be boolval of sco-mulch-more;
	if north-flow, increment temp;
	decide on temp;

to decide whether north-flow:
	if sco-bark-bump is true and sco-stump-stark is true and sco-park-pump is true and sco-plaster-plate is true, yes;
	no;

check going up in Bare Bones Stair Stones:
	let Q be stone-filler;
	if Q is 2:
		say "You see a way through! You've built the bare bones stair stones into something more. You're ready to ascend and leave ... but you are so sure you will make it, you slip and tumble into...";
		if sheep sheet is in bight bier, max-down;
		move player to gold gaol;
		zap-clue vc-heap-heat rule;
		the rule succeeds;
	if Q is 0:
		say "The stones are in nowhere near climbable condition. For now.";
	else if Q is 1:
		say "The stones are almost climbable but still too risky. You need to do a bit more.";
	the rule fails;

chapter Peep Pool

Peep Pool is south of Stair Stones. "A pool lies at the edge of a passage bending north and east through the [spoiled space][if steep stool is in peep pool]. A steep stool blocks the way east--maybe someone or something can help you destroy it[end if].". cht of peep pool is leteq.

guess-table of peep pool is table of peep pool guesses.

the steep stool is scenery in Peep Pool. "The steep stool is too smooth and, err, steep to climb, and it's too wide to get around. You may need to get rid of it--or have someone destroy it. Perhaps an enemy is waiting behind it to bust out.". cht of steep stool is letminus. [->deep duel]

ts-duel-deep is a truth state that varies.

check going north in peep pool:
	if creep cruel is fungible, say "'Yeep! You'll...' calls the creep (cruel,) and though you manage to avoid stumbling or caring, you get slightly agitated wondering what bad things could happen." instead;

check going east in Peep Pool:
	if creep cruel is fungible, say "The creep (cruel) blocks you from going east. Exasperating, but that's just its nature. Maybe you can get rid of it." instead;
	if steep stool is fungible, say "The steep stool is in the way. It's too big and heavy to move." instead;

section creep cruel

the creep cruel is a boring person. cht of creep cruel is letminus. "A creep (cruel) snickers, pacing back and forth and blocking the way east where the steep stool was, just to spite you.". description is "The creep (cruel) is a bit bigger than you, but more importantly, it probably knows dirty fighting tricks.". bore-text of creep cruel is "'Peach? Putz! Reach ruts!' Not very sophisticated, but hard not to be a little annoyed.". [->keep cool]

printed name of creep cruel is "creep (cruel)".

chapter Gore Gulch

Gore Gulch is east of Peep Pool. cht of Gore Gulch is leteq. "The only way back is west. [if sco-mulch-more is false]There's something icky and sticky here besides gore, but you're not sure what[else]You extracted more mulch here, so there's nothing else to do[end if]."

guess-table of gore gulch is table of gore gulch guesses.

chapter Dark Dump

Dark Dump is north of Bare Bones Stair Stones. "The [spoiled space] blocks your progress north and west[n-w-block]. You can still go south and east.". cht of dark dump is allover.

guess-table of dark dump is table of dark dump guesses.

to say n-w-block:
	if bark bump is fungible and stark stump are fungible:
		say ". There's also a bark bump blocking the way north and a stark stump blocking the way south";
	else if stark stump is fungible:
		say ". A stark stump also blocks the way west. It feels like something similar and arboreal, if a bit weird, could also make this a safer corridor";
	else if bark bump is fungible:
		say ". A tall bark bump blocks the way north. Maybe summoning something less weird could make this a safer corridor";
	else:
		say ". Yet it would be nice to have any sort of barrier against it";
	if park pump is fungible, say ". A park pump also lies in the center"

section bark bump

the bark bump is scenery. "A huge bark bump provides token protection against the [spoiled space]."

section park pump

the park pump is scenery. "The pump doesn't seem operable, but [if north-flow]it already did its part pumping the plaster plate back to [stair stones][else]maybe you just need to get a few other things in place[end if]."

section stark stump

the stark stump is scenery. "The stark stump provides some protection against the [spoiled space]."

chapter Gaster Gate

Gaster Gate is east of Dark Dump. "The only way back is west. A gaster (that's an archaic verb meaning to scare) gate blocks the way east[if master mate is moot]. With the Master Mate gone, there's not much left to do here[end if].". cht of Gaster Gate is letplus.

guess-table of gaster gate is table of gaster gate guesses.

section Master Mate

the Master Mate is a boring person in Gaster Gate. "A master mate stands here, looking pityingly on you. What could you possibly do to help things?". description is "The Master Mate stands impassively, smiling slightly, shrugging occasionally. Their presence helps you ... a bit, you think.". cht of Master Mate is letplus. bore-text of Master Mate is "'Right rhyme ... slight slime!' Perhaps the Master Mate is magically bound from telling you the exact rhyme, but how many possibilities can there be?" [->plaster plate]

chapter Gold Gaol

Gold Gaol is a room. It is not bounded. "There's nothing much to do here. Well, the wall says FOLD FAIL, giving an idea of how gaol [i]should[r] be pronounced. Well, I guess there could be worse orders to receive as a prisoner.". cht of gold gaol is allover.

guess-table of gold gaol is table of gold gaol guesses.

chapter Gazy Gap

Gazy Gap is a room.

volume the whole special verb thing

chapter inventory (redone)

check taking inventory:
	unless player has maven or player has sheet, say "You have nothing that can help you in any way. Lonesomeness! Fear[if player is not in gold gaol]! But maybe you could pull that sheep sheet away.[else]![end if]" instead;
	if player has maven, say "A [maven] wriggles in your grasp, and you can release it for hints with [PPP]. ";
	if player has sheet, say "The sheep sheet you took can document things you see with [b]CS[r]. Or you can [b]READ the sheet to see what's going on. ";
	say "[line break]";
	the rule succeeds;

chapter abouting

carry out abouting:
	say "[this-game] was written in under four hours for EctoComp 2019. It heavily cut-and-pasted from Very Vile Fairy File. It did not receive outside testing. However, I submitted a post-comp releaee that allowed for tweaks that weren't possible in the time allowed. If you want to report bugs/suggestions, do so at http://github.com/andrewschultz/quite-queer-night-near/issues. I appreciate them! CREDITS has additional thanks, and VERSIONS has some information about the versions.";
	say "[line break][this-game] [one of]is a sort of guess-the-verb game. If you want the game mechanic semi-spoiled, type [b]ABOUT[r] again[or]relies on couplets to increase your score. For instance, if Cold Coy Rolled Roy needed courage, you could change him into [b]BOLD BOY[r], and the game tries to give clever responses for tries (good-faith or otherwise) such as [b]OLD OI[r]--punctuation is automatically stripped[stopping].";

chapter creditsing

carry out creditsing:
	say "Thanks to JJ Guest for starting EctoComp, Duncan Bowsman for continuing it, and Ruber Eaglenest and JoshG for keeping it going further. EctoComp has been a fun way to throw out little games. Also, thanks to itch.io for hosting this game.";
	say "[line break]Brian Rushton and Pace Smith had some tips in-comp, and dgtziea sent me a really nice transcript, which helped me fix a few more things.";
	say "[line break]If you'd like to be in these credits, you too can do so by finding an issue or making a good suggestion.";
	the rule succeeds.

chapter verbsing

carry out verbsing:
	say "[this-game] has a stripped-down parser. You can X/EXAMINE things or use the four basic directions, or go up. While you don't need any standard verbs beyond moving to win the game, you do have to figure out two-word actions to move forward.";
	if cheap cheat sheep sheet is fungible, say "[line break]You can CC/CS/SS/CCSS to use the [cheap cheat] on any object. The command on its own scans your current location, which can also be helpful.";
	if player has sheep sheet, say "[line break]DEEP DEET can be used to demystify the cheap cheat sheep sheet.";
	if player has math maven, say "[line break]You can [ppp] to see if the [math maven] can help you here.";
	the rule succeeds.

chapter versioning

carry out versioning:
	say "Version 1 was released for EctoComp on October 30, 2019. It contained large chunks of code copied over from Very Vile Fairy File.";
	say "Version 2 was released after EctoComp on November ??, 2019. It added the [maven] as a more animated and spooky helper than the Leet Learner, and it added a lot of cluing (including indications you were done in a certain area,) bug fixes, alternate solutions and even ambiance like the Spite Spear. It also let you know how many possible good guesses were left, and it tracked if you could win the game with only the maven. Oh, and the introduction got sillier, too.";
	say "Version 3 had small fixes based on pulling common code into a Universal and Common code module.";
	the rule succeeds.

chapter parser error tweak(s)

zap-weird-break is a truth state that varies.

Rule for printing a parser error (this is the check for room name in player command rule):
	let w1 be word number 1 in the player's command;
	repeat with X running from 1 to the number of words in the player's command:
		if the printed name of location of player matches the regular expression "(^|\W)([word number X in the player's command])($|\W)", case insensitively:
			if w1 is "cc" or w1 is "cs" or w1 is "ss":
				say "It looks like you may have tried to scan the current location. You just need to say CC to do this. Would you like to do so now?[line break]";
				if the player consents:
					skip upcoming rulebook break;
					now zap-weird-break is true;
					try csing location of player;
					now zap-weird-break is false;
					the rule succeeds;
				say "Okay. ";
			else:
				if player is in bight bier:
					say "The bier is too scary to even contemplate, though [if sco-fight-fear is false]there is[else]you found[end if] a way to deal with it tangentially." instead;
				else if player is in peep pool:
					say "You don't REALLY want to try to explore the pool too deeply. Going east [if sco-mulch-more is true]was[else if creep is moot]is[else]would be[end if] enough." instead;
				else if player is in gaster gate:
					say "The gate is much too strong. It may be hiding worse things. But you [if sco-plaster-plate is true]already broke off some plaster from it[else]may be able to break off a piece of it[end if]." instead;
				else if player is in bare bones stair stones:
					say "You only really need to [if stone-filler is 2]go[else]find a way[end if] up the stones." instead;
				say "It looks like you may have tried to refer to the room name, or part of it. ";
			say "You never need to use the location name directly.";
			the rule succeeds;
	continue the action;

rule for printing a parser error:
	if latest parser error is the I beg your pardon error:
		say "My ... mix, try tricks!";
		the rule succeeds;
	if latest parser error is the not a verb I recognise error:
		if core-score > 0:
			say "That's not a verb this (stripped down) parser recognizes, and it doesn't contain any magic. Maybe [if player is in stair stones]get up those stair stones, somehow[else if cht of location of player is phbt]look around somewhere else--there doesn't seem to be much left to do here[else]there's a bit more to find here, though[end if].";
		else:
			say "Sorry, I can't do anything with that. This is a sort of guess-the-verb game. Examining and directions are the main commands. Point scoring actions are verbs to guess, and there is a theme to them.";
		say "[line break]";
		unless player is in gold gaol and player does not have cheap cheat sheep sheet, say "[if sheep sheet is fungible]Since[else]If[end if] you have the sheep sheet handy, you can [b]CC[r] something. ";
		say "You can also type VERBS for a list of valid verbs (it can change as you gain or lose hint items) or ABOUT to see general information.";
		the rule succeeds;
	say "You may've tried to do something too complex with what was here. [if core-score > 0]You only need rhyming pairs to get through the game[else]Once you figure the mechanic, you'll see why[end if].";

chapter the big rule(s)

this is the verb-checker rule:
	let local-ha-half be false;
	repeat through the table of verb checks:
		let my-count be 0;
		now vc-dont-print is true;
		process the check-rule entry;
		let rb-out be the outcome of the rulebook;
		if rb-out is the unavailable outcome, next;
		now vc-dont-print is false;
		if the player's command matches the regular expression "(^|\W)([w1 entry])($|\W)", increment my-count;
		if there is a w2 entry:
			if the player's command matches the regular expression "(^|\W)([w2 entry])($|\W)", increment my-count;
		else if my-count > 0:
			increment my-count;
		let wfull-fail be false;
		[say "[check-rule entry].";]
		if there is a wfull entry:
			if the player's command matches the wfull entry:
				now my-count is 3;
			else if my-count is 2:
				now wfull-fail is true;
		if my-count >= 2:
			process the check-rule entry; [necessary to catch the mad monk--perhaps we could have an extra "inconclusive" state]
			let rb-out be the outcome of the rulebook;
			if rb-out is the already-done outcome, the rule succeeds;
			if rb-out is the not-yet outcome:
				let exact-cmd be whether or not the player's command matches the text "[first-of-ors of w1 entry][if there is a w2 entry] [first-of-ors of w2 entry][end if]", case insensitively;
				if think-cue entry is false:
					say "[line break][one of][b]NOTE[r]: this command[if exact-cmd is false] (well, an equivalent, as there were alternate solutions)[end if] will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command[if exact-cmd is false] (or a functionally equivalent alternate solution)[end if] again saved to [b]THINK[r] for later reference.)[stopping]";
					now think-cue entry is true;
				else:
					say "[line break]Hmph. That [if exact-cmd is false](or a functionally equivalent alternate solution) [end if]still doesn't quite work! You'll figure out the how and when and where, though.";
				the rule succeeds;
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
					increase wrmm-count by 2; [don't increase wrmm-total as a LLP is not a good guess]
			now idid entry is true;
			process the run-rule entry;
			if zap-core-entry is true:
				blank out the core entry;
				now zap-core-entry is false;
			process the score and thinking changes rule;
			if there is a core entry and core entry is false:
				check-wrmm-progress;
			process the winnable-with-cheating rule;
			process the note right guess wrong time rule;
			the rule succeeds;
		if ha-half is true and my-count is 1: [there is a bug here with, say, DEAL DIER instead of DEAL DEAR. It prints something extra.]
			now vc-dont-print is true;
			now already-rhymed-this is false;
			process the check-rule entry;
			if the rule failed:
				now vc-dont-print is false;
				next;
			now vc-dont-print is false;
			if already-rhymed-this is true, break;
			now local-ha-half is true;
			if debug-state is true, say "DEBUG: [check-rule entry] tipped off half-body tingling.";
			next;
	if local-ha-half is true:
		say "Half of your body tingles. Perhaps you are (yeah, this is corny) halfway right.";
		the rule succeeds;

chapter wrath ravin' math maven

next-wrmm-level is a number that varies. next-wrmm-level is 3.
max-wrmm-delta is a number that varies. max-wrmm-delta is 5.
next-wrmm-delta is a number that varies. next-wrmm-delta is 1.
wrmm-count is a number that varies. wrmm-count is 0.
wrmm-total is a number that varies. wrmm-total is 0.
wrmm-charges is a number that varies. wrmm-charges is 0.
wrmm-uses is a number that varies. wrmm-uses is 0.

to say ppp: say "[b]PATH PAVIN (PP)[r]"

to check-wrmm-progress:
	increment wrmm-count;
	increment wrmm-total;
	if wrmm-count >= next-wrmm-level:
		say "[line break][if wrath ravin' math maven is off-stage]Thwup! You hear a sound...and notice a small humanoid something rustling in. From its esoteric babble, you deduce it is a [maven]! It resists as you pick it up, but you're too big. You realize it could help you move ahead on a tricky rhyme, at the right place at the right time, with [ppp][else if wrath ravin' math maven is moot]Zoom! The [maven] zips back near, sullenly. You pick it up[else]The [maven] howls and grows bigger. All your guesses have paid off[end if].";
		now player has wrath ravin' math maven;
		increment wrmm-charges;
		decrease wrmm-count by next-wrmm-level;
		increase next-wrmm-level by next-wrmm-delta;
		if next-wrmm-level > max-wrmm-delta, now next-wrmm-level is max-wrmm-delta;
		process the winnable-with-cheating rule;
	if debug-state is true, say "DEBUG: [wrmm-count] maven count, [wrmm-charges] maven charges.";

the wrath ravin' math maven is a rhymable. description is "The wrath ravin['] math maven won't stop complaining, but it's stuck to you, and you know it is good for [ppp]--[wrmm-charges in words] charge[plur of wrmm-charges], to be precise.". bore-text of wrath ravin' math maven is "The math maven only allows for [ppp]."

guess-table of wrath ravin' math maven is table of wrath ravin math maven guesses.

to decide which number is dump-fours-flipped:
	decide on boolval of sco-bark-bump + boolval of sco-park-pump;

to decide which number is variable-scan-length of (mynum - a number):
	if mynum is 100: [Dark Dump]
		if stark stump is in dark dump:
			if dump-fours-flipped is 2, decide on 0;
			decide on 44; [only stump is left]
		if dump-fours-flipped < 2, decide on 200; [this is the "all over"]
		decide on 55;
	else if mynum is 101: [gold gaol]
		if sco-old-ale is true, decide on 44; [COLD KALE and or TOLD TALE to go]
		if sco-cold-kale is true, decide on 33; [OLD ALE and TOLD TALE to go]
		decide on 200; [COLD KALE and OLD ALE still to be done, leaving a conflict]
	say "BUG: no variable-scan-length for [mynum]. Please let me know what you typed.";
	decide on 44;

a rhymeguess rule for a table name (called tn) (this is the rhyme-guess-checker rule):
	repeat through tn: [cannot be merged with QQNN due to check-wrmm-progress]
		if player's command matches the regular expression "^[mist-regex entry]$":
			if there is a mist-rule entry:
				process the mist-rule entry;
				unless the rule succeeded, continue the action;
			say "[mist-txt entry][line break]";
			let see-leet-read be true;
			let is-opt be false;
			if there is a leet-rule entry:
				process the leet-rule entry;
				unless the rule succeeded:
					now see-leet-read is false;
					if there is a still-rule entry: [this is a special case for if you take the sheet and then try DEEP DEET]
						process the still-rule entry;
						unless the rule succeeded, the rule succeeds;
					if got-yet entry is false:
						check-wrmm-progress;
					now got-yet entry is true;
					the rule succeeds;
			if see-leet-read is true and there is a magicnum entry: [see mistakes file for explanations of magic numbers]
				let Q be magicnum entry;
				if Q >= 100: [Just to make sure we start with a number that's out of bounds]
					now Q is variable-scan-length of Q;
					if debug-state is true, say "DEBUG: dynamic magic number directed us to [Q / 10] / [the remainder after dividing Q by 10].";
				if Q < 0:
					now is-opt is true;
					now Q is 0 - Q;
				if Q is not 0:
					let d1 be Q / 10;
					let d2 be the remainder after dividing Q by 10;
					decrease d1 by number of characters in word number 1 in the player's command;
					decrease d2 by number of characters in word number 2 in the player's command;
					let cc be cluecheat of d1 and d2;
					say "[leetclue of cc and is-opt].";
			if got-yet entry is false:
				check-wrmm-progress;
			now got-yet entry is true;
			the rule succeeds;

blight-hint is a truth state that varies.

when play begins: if a random chance of 1 in 2 succeeds, now blight-hint is false.

leetclue-exp-yet is a truth state that varies.

to say leetclue of (x - a cheattype) and (ts - a truth state):
	if sheep sheet is not fungible, continue the action;
	say "You refer to the sheep sheet, noticing it says ";
	if noun is Blight Blear Bight Bier and Think Thug is not moot:
		now blight-hint is whether or not blight-hint is false;
		say "[if blight-hint is true]Blight Blear goes to --[else]Bight Bier goes to ==[end if][one of]. Maybe there's another reading for the other half of this location's name[or][stopping]";
		continue the action;
	say "[if noun is nothing]your effort[else][the noun][end if] goes to [scancol of x][if ts is true], but the writing's terribly messy, as if to say this isn't 100% critical";
	if leetclue-exp-yet is false:
		now leetclue-exp-yet is true;
		say ".[paragraph break]NOTE: it's not critical to figure out what the clues mean. You may prefer to brute-force your way through, though [if player has sheep sheet]once[else]now[end if] you have the sheet, examining it will reveal a spoiler command"

to say scancol of (x - a cheattype): say "[if x is letplus]++[else if x is partplus]+=/=+[else if x is leteq]==[else if x is partminus]-=/=-[else if x is letminus]--[else if x is letboth]+-/-+[else if x is phbt]00[else if x is allover]?? -- there might be diverging possibilities here[no line break][else]BUG[end if]"

chapter thinking

think-clue-flag is a truth state that varies.

every turn when think-clue-flag is true (this is the note right guess wrong time rule):
	say "[line break][one of][b]NOTE[r]: this command will be useful later, but you aren't ready to use it, yet. You can track commands like this by typing [b]THINK[r], which will also clue you if they now work.[or](useful command again saved to [b]THINK[r] for later reference.)[stopping]";
	now think-clue-flag is false;
	continue the action;

chapter path pavin

pathpavining is an action applying to nothing.

understand the command "path pavin" as something new.
understand the command "pp" as something new.

understand "path pavin" as pathpavining.
understand "pp" as pathpavining.

to wrmm-minus:
	decrement wrmm-charges;
	say "The wrath ravin['] math maven groans[if wrmm-charges is 0] and struggles from your grasp and runs off. Maybe more good guesses will bring it back[one of][or] again[stopping][else], but you grip it tighter[end if].";
	if wrmm-charges is 0, moot wrath ravin' math maven;
	now in-jerk-jump is false;
	increment wrmm-uses;
	process the score and thinking changes rule;

to decide whether can-cheat-win:
	if core-max - core-score <= wrmm-charges, yes;
	no;

warn-cheap-win is a truth state that varies.

this is the winnable-with-cheating rule:
	if warn-cheap-win is true, continue the action;
	if debug-state is true:
		say "DEBUG: (win-with-cheat check) remaining = [core-max - core-score], Maven charges = [wrmm-charges].";
	if can-cheat-win:
		say "[line break]By the way, you can now cheat your way through the game with the PP command, if you want.";
		now warn-cheap-win is true;

to say dbnote:
	if debug-state is true, say ". PPP gives testers unlimited uses";

carry out pathpavining:
	if wrath ravin' math maven is off-stage, say "This is the hint/move-ahead command, but you don't have your hinting assistant, yet[dbnote]." instead;
	if wrath ravin' math maven is moot, say "The [maven] ran off because you used it up, but maybe good guesses will bring it back[dbnote]." instead;
	now in-jerk-jump is true;
	now vc-dont-print is true;
	repeat through table of verb checks:
		unless there is a core entry, next;
		if idid entry is true, next;
		process the check-rule entry;
		if the rule succeeded:
			if core entry is false and player is not in gold gaol: [the only case is to get the sheet]
				say "The [maven] looks slightly offended and half-heartedly tugs you [if player is in bight bier]in the direction of the sheep sheet[else]back to the sheep sheet and the Bight Bier[end if], as if it's not really necessary to have TWO hint aids. Try for the sheet anyway?";
				unless the player yes-consents:
					say "OK. It's not STRICTLY necessary. Maybe you'll figure it on your own.";
					the rule succeeds;
			if doable-hinted > 0:
				say "The [maven] squawks and taps its head, as if to indicate you're forgetting something. (THINK may show what.) Use the maven's help anyway?";
				unless the player yes-consents:
					say "OK. Again, THINKing should show what you can do now." instead;
			say "After some thought, you consider the right way forward: [firstor of w1 entry] [firstor of w2 entry]...";
			now idid entry is true; [this is so BURY BILE gets processed. We already checked IDID above.]
			up-which core entry; [?? I really need to clean this code up. I want just to increment the score in one place. If a rule can keep track of the current row, that would be nifty.]
			process the run-rule entry;
			if zap-core-entry is true:
				blank out the core entry;
				now zap-core-entry is false;
			skip upcoming rulebook break;
			wrmm-minus;
			now vc-dont-print is false;
			disable saving of undo state;
			the rule succeeds;
	now vc-dont-print is false;
	say "The [maven] [if player is in Stair Stones][maven-up-stairs][else]sighs in exasperation. I guess there's nothing it can help you with, here[end if].";
	the rule succeeds.

to say maven-up-stairs:
	if stone-filler is 2:
		say "gestures upward, as if to ask why you haven't climbed already";
	else:
		say "tries to run up the stones and fails miserably. It then points [if stone-filler is 0]north and south[else if sco-mulch-more is true]north[else]south[end if]";

chapter undoing

before undoing an action:
	if save undo state is false:
		say "[if player has the math maven]The math maven howls at your parser-subverting trickery, but what can it do? It doesn't know any destructive magic. You'd think it'd be happy with growing a little bigger, but noooo[else]The [maven] zips back in, running backwards. It doesn't look pleased at your little stunt, but you're bigger than it, so it can't stop you[end if].";
		enable saving of undo state;
	else:
		say "Wiping one's typing ... TONS!";
	the rule succeeds;

volume beta testing - not for release

when play begins:
	say "NOTE: there is a small tweak for beta testers. PPP gives you enough Path Pavin['] charges to get through the game.";

chapter pppjng

ppping is an action applying to nothing.

understand the command "ppp" as something new.

understand "ppp" as ppping.

carry out ppping:
	now wrmm-charges is 14;
	say "Increasing maven charges to 14 for cheap dirty testing[if player does not have maven] and giving you the maven, too[end if].";
	now player has wrath ravin' math maven;
	the rule succeeds.

