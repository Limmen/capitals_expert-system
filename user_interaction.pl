/* user_interaction.pl

This file contains rule for user-interaction in a expert-system where the user can identify properties in the knowledgebase.
*/



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

ask_optional(Question) :-
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
      assert(dont_know(Question)), true).

:- dynamic yes/1,no/1,dont_know/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail;
     (dont_know(S)
     ->
     true;
     ask(S)))).

/* Optional to answer (execution will continue if user doesn't know) */
optional_verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail;
     (dont_know(S)
     ->
     true;
     ask_optional(S)))).

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
