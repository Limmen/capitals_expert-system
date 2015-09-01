/* animal.pro
  animal identification game.  

    start with ?- go.     */

go :- hypothesize(Capital),
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
/* Not yet implemented

hypothesize(andorra_la_vella)     :- andorra_la_vella, !.
hypothesize(belgrade)     :- belgrade, !.
hypothesize(bern)     :- bern, !.
hypothesize(bratislava)     :- bratislava, !.
hypothesize(bucharest)     :- bucharest, !.
hypothesize(budapest)     :- budapest, !.
hypothesize(chisinau)     :- chisinau, !.
hypothesize(dublin)     :- dublin, !.
hypothesize(kiev)     :- kiev, !.
hypothesize(lisbon)     :- lisbon, !.
hypothesize(ljubljana)     :- ljubljana, !.
hypothesize(london)     :- london, !.
hypothesize(luxembourg)     :- luxembourg, !.
hypothesize(madrid)     :- madrid, !.
hypothesize(minsk)     :- minsk, !.
hypothesize(monaco)     :- monaco, !.
hypothesize(moscow)     :- moscow, !.
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
hypothesize(unknown).             /* no diagnosis */

/* capital identification rules */
stockholm :- verify(is_part_of_scandinavia),
             verify(have_hosted_the_olympics_(summergames)),
             disprove(have_hosted_the_olympics_(vintergames)),
             population_exceeds_1_million,
             verify(capital_of_country_where_snus_originated).

copenhagen :- verify(is_part_of_scandinavia),
              disprove(have_hosted_the_olympics_(summergames)),
              disprove(have_hosted_the_olympics_(vintergames)),
              population_exceeds_1_million,
              verify(hometown_of_Niels_Bohr).

helsinki :- verify(is_part_of_scandinavia),
            verify(have_hosted_the_olympics_(summergames)),
            disprove(have_hosted_the_olympics_(vintergames)),
            population_under_1_million,
            verify(hometown_of_linux).

reykjavik :- verify(is_part_of_scandinavia),
             disprove(have_hosted_the_olympics_(summergames)),
             population_under_half_a_million,
             verify(the_northernmost_town_in_the_world).

oslo :- verify(is_part_of_scandinavia), 
        disprove(have_hosted_the_olympics_(summergames)),
        verify(have_hosted_the_olympics_(vintergames)),
        population_exceeds_1_million.

amsterdam :- disprove(is_part_of_scandinavia),
             verify(have_hosted_the_olympics_(summergames)),
             disprove(have_hosted_the_olympics_(vintergames)),
             population_exceeds_1_million,
             verify(capital_of_worlds_highest_coffee_consumption_per_capita_country).

athens :- disprove(is_part_of_scandinavia),
          population_exceeds_1_million,
          have_hosted_the_very_first_olympics.


        

/* classification rules */

population_under_half_a_million :-
    disprove(population_exceeds_1_million),
    verify(population_under_half_a_million).

population_under_1_million :-
    disprove(population_exceeds_1_million).

population_exceeds_1_million :-
    disprove(population_under_1_million),
    disprove(population_under_half_a_million),
    verify(population_exceeds_1_million).

have_hosted_the_very_first_olympics:-
    verify(have_hosted_the_very_first_olympics),
    assert(yes(have_hosted_the_olympics_(summergames)).
    

/* how to ask questions */
ask(Question) :-
    write('Is this true for the capital: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
      (Response == no ; Response == n)
      ->
          (assert(no(Question)), fail);
      fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* How to disprove something */
disprove(S) :-
   (yes(S) 
    ->
    fail ;
    true).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.
