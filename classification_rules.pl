/* classification_rules.pl

This file contains rules for classifying capitals

*/


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
    assert(yes(have_hosted_the_olympics_(summergames))).
    
