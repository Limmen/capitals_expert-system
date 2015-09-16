/* capitals.pl

Capitals in Europe identification game.
Start with start.
Answer questions with: y,yes,n,no (anything else will be interpreted as "don't know").

For someone unfamiliar with prolog repl: every answer you type need to be followed byt a period (.) and then press Enter.
*/

:- ensure_loaded(['capital_rules.pl','classification_rules.pl', 'user_interaction.pl']).

/* Startup */
start :- undo,
      hypothesize(Capital),
      write('I guess that the capital is: '),
      write(Capital),
      nl,
      undo.

/* hypotheses to be tested */
hypothesize(stockholm)   :- stockholm, !.
hypothesize(reykjavik)     :- reykjavik, !.
hypothesize(helsinki)     :- helsinki, !.
hypothesize(copenhagen)     :- copenhagen, !.
hypothesize(oslo)     :- oslo, !.
hypothesize(amsterdam)     :- amsterdam, !.
hypothesize(athens)     :- athens, !.
hypothesize(berlin)     :- berlin, !.
hypothesize(brussel)     :- brussel, !.
hypothesize(dublin)     :- dublin, !.
hypothesize(madrid)     :- madrid, !.
hypothesize(moscow)     :- moscow, !.
/* Not yet implemented

hypothesize(andorra_la_vella)     :- andorra_la_vella, !.
hypothesize(belgrade)     :- belgrade, !.
hypothesize(bern)     :- bern, !.
hypothesize(bratislava)     :- bratislava, !.
hypothesize(bucharest)     :- bucharest, !.
hypothesize(budapest)     :- budapest, !.
hypothesize(chisinau)     :- chisinau, !.
hypothesize(kiev)     :- kiev, !.
hypothesize(lisbon)     :- lisbon, !.
hypothesize(ljubljana)     :- ljubljana, !.
hypothesize(london)     :- london, !.
hypothesize(luxembourg)     :- luxembourg, !.
hypothesize(minsk)     :- minsk, !.
hypothesize(monaco)     :- monaco, !.
hypothesize(nicosia)     :- nicosia, !.
hypothesize(nuuk)     :- nuuk, !.
hypothesize(paris)     :- paris, !.
hypothesize(podgorica)     :- podgorica, !.
hypothesize(prague)     :- prague, !.
hypothesize(riga)     :- riga, !.
hypothesize(rome)     :- rome, !.
hypothesize(san_marino)     :- san_marino, !.
hypothesize(sarajevo)     :- sarajevo, !.
hypothesize(skopje)     :- skopje, !.
hypothesize(sofia)     :- sofia, !.
hypothesize(tallinn)     :- tallinn, !.
hypothesize(tirana)     :- tirana, !.
hypothesize(vaduz)     :- vaduz, !.
hypothesize(valletta)     :- valletta, !.
hypothesize(vatican_city)     :- vatican_city, !.
hypothesize(vilnius)     :- vilnius, !.
hypothesize(warsaw)     :- warsaw, !.
hypothesize(zagreb)     :- zagreb, !.
*/

/* If no other capital in the knowledgebase can be identified */
hypothesize(unknown).           


