Version 1/221103 of Quite Queer Night Near Definitions by Andrew Schultz begins here.

"This should briefly describe the purpose of Quite Queer Night Near Definitions."

volume rules needed by core

to decide whether (ru - a rule) is spaceable: [annoying space breaks in inform]
	no;

to decide whether (r1 - a room) and (r2 - a room) are gong-adjacent:
	if r1 is adjacent to r2, yes;
	no;

to decide whether (di - a direction) is blocked: no;

this is the narrative-checking rule: make no decision;

to decide whether good-say-guess: ["SAY" generally wipes out the starting say, but for some good guesses, it plays straight-up]
	no;

this is the flag bad goto to rule: do nothing;

this is the stuck-right-now rule: do nothing;

this is the flag bad goto from rule:
	if player is in Gold Gaol, say "There's no way back!" instead;

this is the did-i-ll rule: do nothing;

to say optional-hint-think-item: say "";

definition: a room (called rm) is available-from-here:
	if rm is unvisited, no;
	yes;

to decide whether too-distracted: no; [been buggin stuff]

to decide whether immediate-attention of (ru - a rule):
	no;

volume numbers determined

to decide which number is pump-block: [ the rhymes that help the pump ]
	decide on boolval of sco-stark-stump + boolval of sco-bark-bump;

Quite Queer Night Near Definitions ends here.

---- DOCUMENTATION ----
