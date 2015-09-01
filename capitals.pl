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
hypothesize(unknown).             /* no diagnosis */

/* capital identification rules */
stockholm :- verify(have_hosted_the_olympics_(summergames)),
             population_exceeds_1_million,
             verify(is_part_of_scandinavia),
             verify(flag_colours_include_yellow_and_blue).

copenhagen :- disprove(have_hosted_the_olympics_(summergames)),
              population_exceeds_1_million,
              verify(is_part_of_scandinavia),
              verify(flag_colours_include_red_and_white).

helsinki :- verify(have_hosted_the_olympics_(summergames)),
            population_under_1_million,
            verify(is_part_of_scandinavia),
            verify(flag_colours_include_blue_and_white).

reykjavik :- disprove(have_hosted_the_olympics_(summergames)),
             population_under_half_a_million,
             verify(is_part_of_scandinavia),
             verify(the_northernmost_town_in_the_world).

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
       assert(no(Question)), fail).

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
