/* capitals.pl

Capitals in Europe identification game.
Start with start.
Answer questions with: y,yes,n,no (anything else will be interpreted as "don't know").

For someone unfamiliar with prolog repl: every answer you type need to be followed byt a period (.) and then press Enter.
*/

:- ensure_loaded(['capital_rules.pl','classification_rules.pl', 'user_interaction.pl', 'questions.pl']).

/* Startup */
start(Request) :-
      hypothesize(Capital),
      render(Capital, Request).

/* hypotheses to be tested */
hypothesize(stockholm)   :- stockholm, !.
hypothesize(paris)     :- paris, !.
hypothesize(reykjavik)     :- reykjavik, !.
hypothesize(tallinn)     :- tallinn, !.
hypothesize(helsinki)     :- helsinki, !.
hypothesize(copenhagen)     :- copenhagen, !.
hypothesize(oslo)     :- oslo, !.
hypothesize(amsterdam)     :- amsterdam, !.
hypothesize(athens)     :- athens, !.
hypothesize(berlin)     :- berlin, !.
hypothesize(brussel)     :- brussel, !.
hypothesize(dublin)     :- dublin, !.
hypothesize(zagreb)     :- zagreb, !.
hypothesize(madrid)     :- madrid, !.
hypothesize(moscow)     :- moscow, !.
hypothesize(london)     :- london, !.
hypothesize(riga)     :- riga, !.
hypothesize(vilnius)     :- vilnius, !.
hypothesize(paris)     :- paris, !.
hypothesize(rome)     :- rome, !.
hypothesize(sarajevo)     :- sarajevo, !.
hypothesize(lisbon)     :- lisbon, !.
/* Not yet implemented

hypothesize(andorra_la_vella)     :- andorra_la_vella, !.
hypothesize(belgrade)     :- belgrade, !.
hypothesize(bern)     :- bern, !.
hypothesize(bratislava)     :- bratislava, !.
hypothesize(bucharest)     :- bucharest, !.
hypothesize(budapest)     :- budapest, !.
hypothesize(chisinau)     :- chisinau, !.
hypothesize(kiev)     :- kiev, !.
hypothesize(ljubljana)     :- ljubljana, !.
hypothesize(luxembourg)     :- luxembourg, !.
hypothesize(minsk)     :- minsk, !.
hypothesize(monaco)     :- monaco, !.
hypothesize(nicosia)     :- nicosia, !.
hypothesize(nuuk)     :- nuuk, !.
hypothesize(podgorica)     :- podgorica, !.
hypothesize(prague)     :- prague, !.
hypothesize(san_marino)     :- san_marino, !.
hypothesize(skopje)     :- skopje, !.
hypothesize(sofia)     :- sofia, !.
hypothesize(tirana)     :- tirana, !.
hypothesize(vaduz)     :- vaduz, !.
hypothesize(valletta)     :- valletta, !.
hypothesize(vatican_city)     :- vatican_city, !.
hypothesize(warsaw)     :- warsaw, !.
*/

/* If no other capital in the knowledgebase can be identified */
hypothesize(unknown).           


