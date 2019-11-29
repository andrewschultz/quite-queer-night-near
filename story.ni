"Quite Queer Night Near" by Andrew Schultz

volume variables and stuff

the story headline is "Hokey Haunts, Jokey Jaunts".

the release number is 2.

release along with a website.

release along with an interpreter.

include undo output control by Erik Temple.

include Trivial Niceties by Andrew Schultz.

include Quite Queer Night Near Tables by Andrew Schultz.

include Quite Queer Night Near Tests by Andrew Schultz.

include Quite Queer Night Near Mistakes by Andrew Schultz.

procedural rule while eating something: ignore the carrying requirements rule.

The print final score rule is not listed in for printing the player's obituary.

cheattype is a kind of value. the cheattypes are phbt, letplus, letminus, partplus, partminus, leteq, letboth, and allover.

to phbt (x - a thing): now cht of x is phbt;

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
	if attacking, yes;
	if csing, yes;
	if thinking, yes;
	if pathpavining, yes;
	no;

when play begins:
	say "You should have known better than to eat any sort of marmite. Eww. But you definitely should not have eaten Far Fight Marmite. Especially not the bulk bar-bite kind. But you can't resist items on deep clearance at the lovely crowded store you visit every week. Full of indigestion, you hear voices saying 'Quite queer night near ... quite queer night near... [wfak]";
	say "[paragraph break]You think you got to sleep. On waking up, you exit your bedroom to ... two small grey Teletubby-looking things (shudder) calling themselves Timmy Tingles and Jimmy Jingles! 'Come dance with us on the Shimmy Shingles!'[wfak]";
	say "[line break]This is all too corny for you. You try to brush past, but they cry 'You're no Mimmy Mingles' before calling on Primmy Pringles and Limmy Lingles, three times their size and meaner, to drag you away...to the Dimmy Dingles? No, worse![wfak]";
	say "[line break]You black out as you are dragged away. A voice booms 'ARRRRRIGHT! Tar! Tight! Spar! Spite!' You look around. You see ... a bier with your name on it! Scary, scary!";
	now max-poss is max-bonus + min-needed;
	now the right hand status line is "[score][if doable-hinted > 0](+[doable-hinted])[end if]/[if max-poss is not min-needed][min-needed]-[end if][max-poss]";
	now ha-half is true;

check requesting the score:
	say "You have [score] out of [min-needed] points needed to win the game[if max-poss > min-needed], but there's a bonus point[end if].";
	if can-cheat-win, say "[line break]You can, if you want, jump all the way to the end to win with PP.";
	if debug-state is true, say "DEBUG: [wrmm-count] maven next-charge count. Maven charges = [wrmm-charges].";
	if math maven is not off-stage:
		let X be still-guess of table of homonym rejections;
		let Y be still-guess of table of mistake substitutions;
		let total-guesses be number of rows in table of homonym rejections + number of rows in table of mistake substitutions - 1; [we could run a loop to see what starts as "true" but it's not worth it to me. Only FOLD FAIL starts that way.]
		say "You have made [wrmm-total] good guesses so far. You can still access [X + Y] of [total-guesses] good guesses.";
[	if debug-state is true:
		showme ts-bump-bark;
		showme ts-pump-park;
		showme ts-stump-stark;
		showme ts-plaster-plate;
		showme ts-mulch-more;]
	the rule succeeds;

to decide which number is doable-hinted:
	let temp be 0;
	now vc-dont-print is true;
	repeat through the table of forlaters:
		if ready-to-hint entry is true:
			process the can-do-now entry;
			if the rule succeeded:
				if is-done entry is false, increment temp;
	now vc-dont-print is false;
	decide on temp;

to decide which number is still-guess of (ta - a table name):
	let temp be 0;
	repeat through ta:
		if got-yet entry is false:
			if there is a still-rule entry:
				process the still-rule entry;
				unless the rule succeeded, next;
			increment temp;
	decide on temp;

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

report taking sheep sheet: max-down;

check going nowhere:
	if player is in gold gaol, say "You need to look back on your experiences before leaving. Anyway, you can't figure directions here." instead;
	if noun is inside or noun is outside, say "You never need to go inside or outside, though you may need to go up [if stair stones is unvisited]one place[else]in [stair stones][end if]." instead;
	if player is in bight bier, say "The only way is east." instead;
	if player is in gaster gate, say "The gate blocks passage every way except back west." instead;
	if player is in gore gulch, say "Ickiness guards every way except back west." instead;
	if player is in stair stones, say "You can only go north, south or west[if stone-filler is 2]. And up. You probably want to go up[else]. And you can try to go up[end if]." instead;
	if player is in dark dump, say "You can only go east or south." instead;
	if player is in peep pool, say "You can only go north or[if creep cruel is not moot], once the way is clear,[end if] east." instead;
	say "I wish I could give more information, but you can't go that way." instead;

volume adding verbs

check attacking: say "The game is not called row-right-now night!" instead;

volume the player

description of player is "You are [if thug is off-stage]no longer [end if]shedding a tight tear[if player is in bier]. You're no sight seer[end if]."

volume the map

chapter Blight Blear Bight Bier

Blight Blear Bight Bier is a room. "Boy! It's scary here! [if spite spear is in bight bier]A spite spear hangs above, and y[else]Y[end if]ou can only go east[if thug is off-stage], but it might be even scarier there. You need some way to make things less scary, on this Quite Queer Night Near by the Blight Blear Bight Bier. A spite spear hangs in the distance, just ready to swoop on you[end if].". cht of Blight Blear Bight Bier is letboth. [->fight fear]

ts-fight-fear is a truth state that varies.

section DDTT

[after choosing notable locale objects when player is in Bight Bier:
	if Drink Drug Think Thug is in Bight Bier, set the locale priority of Drink Drug Think Thug to 9;]

The Drink Drug Think Thug is a person in Blight Blear Bight Bier. cht of Think Thug is letminus. "Wait, no, you can't go east until you dispose of that Drink Drug Think Thug blocking the way.". description of Thug is "Big and brutal and surprisingly not dumb-looking. Even though they've abused their body and mind, they can beat you up physically and mentally. You'll need to change the Thug drastically to get by.". [-> pink pug]

check going east in Blight Blear Bight Bier:
	if Drink Drug Think Thug is in Bier, say "Not with the Drink Drug Think Thug by." instead;
	if Drink Drug Think Thug is off-stage, say "No. You're too scared to do anything right now." instead;

section sheep sheet

check examining the sheep sheet for the first time:
	if player does not have sheep sheet, say "It claims to be a SHEEP SHEET because only sheeple use hints. This reminds you of all the times you were scared to ask for help, because you might feel dumb still not getting it or realizing you could've done without the help if you'd REALLY been thinking.[paragraph break]Which is pretty scary. Not nearly, like, mortally. But it's lasted.[line break]";

the cheap cheat sheep sheet is a thing in Blight Blear Bight Bier. cht of sheep sheet is letminus. "A cheap cheat sheep sheet lies here, sort of daring you to take it. It's obscured by sleep sleet.". description of sheep sheet is "It has information on--well, most everything you see here. XX any item for particular information. I guess it's a sheep sheet because you still feel sheepish looking at it, no matter how many times you have, and also I feel sheepish for such a silly name. You can CC, SS, CCSS or CS anything to see cheating information.". [->heap heat]

after examining sheep sheet when player has sheep sheet:
	say "You can also type [b]DEEP DEET[r] to learn how, precisely, the sheet works.";

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
	if cheap cheat sheep sheet is touchable:
		say "You consult [the sheet] about the general area...";
		now the noun is the location of the player;
	else:
		say "You can't make any sense of the general area without [the sheet].";
		reject the player's command;
	continue the action;

carry out csing:
	if cheap cheat sheep sheet is not touchable, say "You'd like to, but [the sheet] isn't around. [if player is in gaol]There's no way to get it, but you made it this far[else]Nothing's stopping you from going back, though[end if]." instead;
	if noun is sheep sheet:
		if player has sheep sheet, say "You can't really consult the sheet about itself." instead;
		say "The sheep sheet shimmers vaguely. You suspect you can just take it, but getting it right would give a style point." instead;
	if noun is the player, say "You don't need to change yourself. Whew." instead;
	if cht of noun is phbt, say "You can't find any information on [the sheet] about [the noun]. Must not need changing." instead;
	say "[leetclue of cht of noun].";
	the rule succeeds;

section sleep sleet

the sleep sleet is boring scenery in Blight Blear Bight Bier. cht of sleep sleet is letminus. "The sleep sleet hails down all around the cheap cheat sheep sheet. Just one more obstacle against taking it. The cold is probably too much. How could you dispel that?". bore-text is "Standard actions won't get rid of the sleet and let you take the sheet.". [->heap heat]

section spite spear

the spite spear is boring scenery in Blight Blear Bight Bier. "It's too far away to see in detail, but you don't need to. It reminds you of people you were scared would hit or insult you, who knew how to string that out.". bore-text is "You may need to take care of your own emotions to get rid of the spite spear.". cht of spite spear is partminus. [-> fight fear]

chapter Bare Bones Stair Stones

Bare Bones Stair Stones is east of Bight Bier. "You can go back west to the Bier[if sheep sheet is in bier]--who knows, that sheet could come in handy[else], though you don't need to[end if]. You can also go north and south, but there seems to be a way out above--[if stone-filler is 0]or there could be[else if stone-filler is 1]you just need to fill the stairs in a bit more[else]you don't seem to have much else to do here[end if]!".

check going in Bare Bones Stair Stones when player has math maven:
	if noun is south and ts-mulch-more is true, say "[maven-groan].";
	if noun is north and north-flow, say "The [maven-groan].";
	if noun is west and player has sheep sheet, say "[maven-groan].";

to say maven-groan: say "The [maven] rolls its eyes and groans as you go back [noun][one of]. Perhaps you're done there[or][stopping]"

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
		if sheep sheet is in bight bier, max-down;
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

check going north in peep pool:
	if creep cruel is touchable, say "'Yeep! You'll...' calls the creep (cruel,) and though you manage to avoid stumbling or caring, you get slightly agitated wondering what bad things could happen." instead;

check going east in Peep Pool:
	if creep cruel is touchable, say "The creep (cruel) blocks you from going east. Exasperating, but that's just its nature. Maybe you can get rid of it." instead;
	if steep stool is touchable, say "The steep stool is in the way. It's too big and heavy to move." instead;

section creep cruel

the creep cruel is a person. cht of creep cruel is letminus. "A cruel creep snickers, pacing back and forth and blocking the way east where the steep stool was, just to spite you.". description is "The creep cruel is a bit bigger than you, but more importantly, it probably knows dirty fighting tricks.". [->keep cool]

chapter Gore Gulch

Gore Gulch is east of Peep Pool. cht of Gore Gulch is leteq. "The only way back is west. [if ts-mulch-more is false]There's something icky and sticky here besides gore, but you're not sure what[else]You extracted more mulch here, so there's nothing else to do[end if].". [-> more mulch]

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

Gold Gaol is a room. "There's nothing much to do here. Well, the wall says FOLD FAIL, giving an idea of how gaol [i]should[r]' be pronounced. Hey, when you're a prisoner, you sort of need to do as you're told, I guess.". cht of gold gaol is allover. [->old ale] [->cold kale] [->told tale]

ts-ale-old is a truth state that varies.
ts-kale-cold is a truth state that varies.

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

abouting is an action applying to nothing.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "QQNN was written in under four hours for EctoComp 2019. It heavily cut-and-pasted from Very Vile Fairy File. It did not receive outside testing. However, I submitted a post-comp releaee that allowed for tweaks that weren't possible in the time allowed. If you want to report bugs/suggestions, do so at http://github.com/andrewschultz/quite-queer-night-near/issues. I appreciate them! CREDITS has additional thanks, and VERSIONS has some information about the versions.";
	say "[line break][one of]QQNN is a sort of guess-the-verb game. If you want the game mechanic semi-spoiled, type ABOUT again[or]QQNN relies on couplets to increase your score. For instance, if there is a cold coy Rolled Roy needed courage, you could change him into BOLD BOY, and the game tries to give clever responses for tries (good-faith or otherwise) sycg as OLD OI[stopping].";

chapter creditsing

creditsing is an action applying to nothing.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "Thanks to JJ Guest for starting EctoComp, Duncan Bowsman for continuing it, and Ruber Eaglenest and JoshG for keeping it going further. EctoComp has been a fun way to throw out little games. Also, thanks to itch.io for hosting this game.";
	say "[line break]Brian Rushton had some tips in-comp, and I received a very helpful transcript as well which helped me fix a few more things.";
	say "[line break]If you'd like to be in these credits, you too can do so by finding an issue or making a good suggestion.";
	the rule succeeds.

chapter verbsing

check going:
	if noun is diagonal, say "Diagonal directions aren't used in this game.";

verbsing is an action applying to nothing.

understand the command "verbs" as something new.

understand "verbs" as verbsing.

carry out verbsing:
	say "QQNN has a stripped-down parser. You can X/EXAMINE things or use the four basic directions, or go up. While you don't need any standard verbs beyond moving to win the game, you do have to figure out two-word actions to move forward.";
	if cheap cheat sheep sheet is touchable, say "[line break]You can CC/CS/SS/CCSS to use the [cheap cheat] on any object. The command on its own scans your current location, which can also be helpful.";
	if player has sheep sheet, say "[line break]DEEP DEET can be used to demystify the cheap cheat sheep sheet.";
	if player has math maven, say "[line break]You can [ppp] to see if the [math maven] can help you here.";
	the rule succeeds.

chapter versioning

versioning is an action applying to nothing.

understand the command "version" as something new.

understand "version" as versioning.

carry out versioning:
	say "Version 1 was released for EctoComp on October 30, 2019. It contained large chunks of code copied over from Very Vile Fairy File.";
	say "Version 2 was released after EctoComp on November ??, 2019. It added the [maven] as a more animated and spooky helper than the Leet Learner, and it added a lot of cluing (including indications you were done in a certain area,) bug fixes, alternate solutions and even ambience like the Spite Spear. It also let you know how many possible good guesses were left, and it tracked if you could win the game with only the maven. Oh, and the introduction got sillier, too.";
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

chapter after reading a command

after reading a command:
	if the player's command matches the regular expression "<^a-z '>":
		if the player's command matches the regular expression "^ *<\*;>":
			if currently transcripting:
				say "Noted.";
		say "You don't need any special characters in your command to win.";
		if debug-state is false, reject the player's command;

chapter parser error tweak(s)

table-to-scour is a table name that varies.

Rule for printing a parser error (this is the clue half right words rule):
	now table-to-scour is table of homonym rejections;
	abide by the mistake-checker rule;
	abide by the verb-checker rule;
	now table-to-scour is table of mistake substitutions;
	abide by the mistake-checker rule;
	continue the action;

zap-weird-break is a truth state that varies.

Rule for printing a parser error (this is the check for room name in player command rule):
	repeat with X running from 1 to the number of words in the player's command:
		if the printed name of location of player matches the regular expression "(^|\W)([word number X in the player's command])($|\W)", case insensitively:
			if word number 1 in the player's command is "xx":
				say "It looks like you may have tried to scan the current location. You just need to say CC to do this. Would you like to do so now?[line break]";
				if the player consents:
					skip upcoming rulebook break;
					now zap-weird-break is true;
					try csing location of player;
					now zap-weird-break is false;
					the rule succeeds;
				say "Okay. ";
			else:
				say "It looks like you may have tried to refer to the room name, or part of it. ";
			say "You never need to use the room name directly.";
			the rule succeeds;
	continue the action;

rule for printing a parser error:
	if latest parser error is the not a verb I recognise error:
		if score > 0:
			say "That's not a verb this (stripped down) parser recognizes, and it doesn't contain any magic. Maybe [if player is in stair stones]get up those stair stones, somehow[else if cht of location of player is phbt]look around somewhere else--there doesn't seem to be much left to do here[else]there's a bit more to find here, though[end if].";
		else:
			say "This is a sort of guess-the-verb game. Examining and directions are the main commands. Point scoring actions are verbs to guess, and there is a theme to them.";
		say "[line break]";
		unless player is in gold gaol and player does not have cheap cheat sheep sheet, say "[if sheep sheet is touchable]Since[else]If[end if] you have the sheep sheet handy, you can [b]CC[r] something. ";
		say "You can also type VERBS for a list of valid verbs (it can change as you gain or lose hint items) or ABOUT to see general information.";
		the rule succeeds;

chapter the big rule(s)

this is the verb-checker rule:
	let local-ha-half be false;
	repeat through the table of verb checks:
		let my-count be 0;
		now vc-dont-print is true;
		process the ver-rule entry;
		if the rule failed, next;
		now vc-dont-print is false;
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
			unless the rule succeeded, the rule succeeds;
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
			process the do-rule entry;
			if zap-core-entry is true:
				blank out the core entry;
				now zap-core-entry is false;
			process the notify score changes rule;
			if there is a core entry and core entry is false:
				check-wrmm-progress;
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
			if debug-state is true, say "DEBUG: [ver-rule entry] tipped off half-body tingling.";
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

the wrath ravin' math maven is a boring thing. description is "The wrath ravin['] math maven won't stop complaining, but it's stuck to you, and you know it is good for [ppp]--[wrmm-charges in words] charge[plur of wrmm-charges], to be precise.". bore-text of wrath ravin' math maven is "The math maven only allows for [ppp]."

this is the mistake-checker rule:
	repeat through table-to-scour:
		if the player's command matches mist-cmd entry:
			process the mist-rule entry;
			if the rule succeeded:
				say "[mist-txt entry][line break]";
				if there is a leet-rule entry:
					process the leet-rule entry;
					unless the rule succeeded:
						if there is a still-rule entry: [this is a special case for if you take the sheet and then try DEEP DEET]
							process the still-rule entry;
							unless the rule succeeded, the rule succeeds;
						if got-yet entry is false:
							check-wrmm-progress;
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
					check-wrmm-progress;
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

blight-hint is a truth state that varies.

when play begins: if a random chance of 1 in 2 succeeds, now blight-hint is false.

to say leetclue of (x - a cheattype):
	if sheep sheet is not touchable, continue the action;
	say "You refer to the sheep sheet, noticing it says ";
	if noun is Blight Blear Bight Bier and Think Thug is not moot:
		now blight-hint is whether or not blight-hint is false;
		say "[if blight-hint is true]Blight Blear goes to --[else]Bight Bier goes to ==[end if][one of]. Maybe there's another reading for the other half of this location's name[or][stopping]";
		continue the action;
	say "[if noun is nothing]your effort[else][the noun][end if] goes to [scancol of x]";

to say scancol of (x - a cheattype): say "[if x is letplus]++[else if x is partplus]+=/=+[else if x is leteq]==[else if x is partminus]-=/=-[else if x is letminus]--[else if x is letboth]+-/-+[else if x is phbt]00[else if x is allover]??[no line break][else]BUG[end if]"

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
			process the note right guess wrong time rule;
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
"deep|creep"	"duel|cruel"	true	true	false	vc-deep-duel rule	vr-deep-duel rule	"deep duel" or "creep cruel" [start peep pool]
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

to vcp (t - text): [verb conditional print]
	if vc-dont-print is false, say "[t][line break]";

to vcal (t - text): [verb conditional print, flag already rhymed e.g. if HEAP HEAT and then try it again]
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
		vcal "That's already here.";
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
	say "There is no progress without conflict. You look into the peep pool and wait for an opponent to show. A crash from the steep stool to the east indicates someone has arrived for a deep duel: a creep, cruel![paragraph break]Maybe if you defeat them, you'll be able to go east. But right now, being around them is just annoying.";
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
		now ts-tried-keep is true;
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
	if ts-mulch-more is true:
		vcal "Hoo boy. You have enough mulch.";
		continue the action;
	the rule succeeds;

this is the vr-more-mulch rule:
	say "More mulch appears! It spills out to the peep pool and beyond, probably even back to the stair stones.";
	now ts-mulch-more is true;
	phbt Gore Gulch;
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
		vcal "That's already here.";
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
	say "A huge chunk of the gaster gate breaks off and creates a plaster plate. It's much too big to eat off, but it crumbles quickly apart (probably not Last [']Er Late brand) and is washed away beyond the dark dump.";
	now ts-plaster-plate is true;
	moot master mate;
	phbt gaster gate;
	check-north-flow;

this is the vc-stark-stump rule:
	if player is not in dark dump, the rule fails;
	if ts-stump-stark is true:
		vcal "That's already here.";
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
		vcp "You're not nourished enough to make it far out of the cell. You need food and drink. Even lousy food and drink.";
		now ts-tale-early is true;
		clue-later "TOLD TALE";
		continue the action;
	the rule succeeds;

this is the vr-told-tale rule:
	say "Yeah, that's it. You've had your fun. Time to move on. Your adventures are just silly enough and just believable enough to scare friends or to laugh at things.";
	process the notify score changes rule;
	phbt gold gaol;
	end the story finally saying "BAH?! BOO-YAH, YOU!";
	follow the shutdown rules;

[zzqqnnr]

chapter path pavin

pathpavining is an action applying to nothing.

understand the command "path pavin" as something new.
understand the command "pp" as something new.

understand "path pavin" as pathpavining.
understand "pp" as pathpavining.

in-jerk-jump is a truth state that varies.

to say firstor of (t - indexed text):
	replace the regular expression "\|.*" in t with "";
	say "[t in upper case]";

to wrmm-minus:
	decrement wrmm-charges;
	say "The wrath ravin['] math maven groans[if wrmm-charges is 0] and struggles from your grasp and runs off. Maybe more good guesses will bring it back[one of][or] again[stopping][else], but you grip it tighter[end if].";
	if wrmm-charges is 0, moot wrath ravin' math maven;
	now in-jerk-jump is false;
	increment wrmm-uses;
	process the notify score changes rule;

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
		process the ver-rule entry;
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
			process the do-rule entry;
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
		say "tries to run up the stones and fails miserably. It then points [if stone-filler is 0]north and south[else if ts-mulch-more is true]north[else]south[end if]";

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
	say "NOTE: there is a small tweak for beta testers. PPP gives you enough Path Pavin' charges to get through the game.";

chapter pppjng

ppping is an action applying to nothing.

understand the command "ppp" as something new.

understand "ppp" as ppping.

carry out ppping:
	now wrmm-charges is 14;
	say "Increasing maven charges to 14 for cheap dirty testing[if player does not have maven] and giving you the maven, too[end if].";
	now player has wrath ravin' math maven;
	the rule succeeds.

