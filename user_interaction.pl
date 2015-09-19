/* user_interaction.pl

This file contains rule for user-interaction in a expert-system where the user can identify properties in the knowledgebase.
*/


:- dynamic yes/1,no/1,dont_know/1, asked/1.

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
     false))).


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
     true))).


/* How to disprove something */
disprove(S) :-
   (yes(S) 
    ->
    fail ;
    true).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo :- retract(asked(_)),fail.
undo.
