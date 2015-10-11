/* capital_rules.pl

This file contains rules for different capitals. 

*/


/* capital identification rules */
stockholm :- disprove(capital_of_a_baltic_country),
             disprove(was_part_of_the_soviet_union),
             disprove(official_currency_is_Euro),
             disprove(have_hosted_the_olympics_(vintergames)),
             disprove(is_part_of_G7),
             verify(is_part_of_scandinavia),
             verify(part_of_EU),
             optional_verify(have_hosted_the_olympics_(summergames)),
             population_exceeds_1_million,
             verify(capital_of_country_where_snus_originated).

copenhagen :- disprove(capital_of_a_baltic_country),
              disprove(was_part_of_the_soviet_union),
              disprove(official_currency_is_Euro),
              disprove(have_hosted_the_olympics_(summergames)),
              disprove(have_hosted_the_olympics_(vintergames)),
              disprove(is_part_of_G7),
              verify(is_part_of_scandinavia),
              verify(part_of_EU),
              population_exceeds_1_million,
              verify(hometown_of_Niels_Bohr).

helsinki :- disprove(is_part_of_scandinavia),
            disprove(capital_of_a_baltic_country),
            disprove(was_part_of_the_soviet_union),
            disprove(have_hosted_the_olympics_(vintergames)),
            disprove(is_part_of_G7),
            verify(part_of_EU),
            verify(official_currency_is_Euro),
            optional_verify(have_hosted_the_olympics_(summergames)),
            population_under_1_million,
            verify(hometown_of_linux).

reykjavik :- disprove(is_part_of_scandinavia),
             disprove(capital_of_a_baltic_country),
             disprove(part_of_EU),
             disprove(official_currency_is_Euro),
             disprove(have_hosted_the_olympics_(summergames)),
             disprove(was_part_of_the_soviet_union),
             disprove(is_part_of_G7),
             population_under_half_a_million,
             verify(the_northernmost_town_in_the_world).

oslo :- disprove(capital_of_a_baltic_country),
        disprove(part_of_EU),
        disprove(official_currency_is_Euro),
        disprove(have_hosted_the_olympics_(summergames)),
        disprove(was_part_of_the_soviet_union),
        disprove(is_part_of_G7),
        verify(is_part_of_scandinavia),
        verify(have_hosted_the_olympics_(vintergames)),
        population_exceeds_1_million.

amsterdam :- disprove(is_part_of_scandinavia),
             disprove(capital_of_a_baltic_country),
             disprove(was_part_of_the_soviet_union),
             disprove(have_hosted_the_olympics_(vintergames)),
             disprove(is_part_of_G7),
             verify(part_of_EU),
             verify(official_currency_is_Euro),
             optional_verify(have_hosted_the_olympics_(summergames)),
             population_exceeds_1_million,
             verify(capital_of_worlds_highest_coffee_consumption_per_capita_country).

athens :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(have_hosted_the_olympics_(wintergames)),
          disprove(is_part_of_G7),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          have_hosted_the_very_first_olympics.

berlin :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          verify(is_part_of_G7),
          verify(have_been_divided_in_east_and_west_separated_with_a_wall).

brussel :- disprove(is_part_of_scandinavia),
           disprove(capital_of_a_baltic_country),
           disprove(was_part_of_the_soviet_union),
           disprove(official_currency_is_Euro),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           disprove(is_part_of_G7),
           population_exceeds_1_million,
           verify(part_of_EU),
           capital_of_EU.

dublin :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          disprove(is_part_of_G7),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          verify(home_of_Guinness_(the_beer)).

madrid :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          disprove(is_part_of_G7),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          (verify(highest_located_city_in_europe);
          verify(hometown_of_Raúl_González_Blanco)).

moscow :- disprove(is_part_of_scandinavia),
          disprove(part_of_EU),
          disprove(capital_of_a_baltic_country),
          disprove(official_currency_is_Euro),
          disprove(is_part_of_G7),
          verify(was_part_of_the_soviet_union),
          population_exceeds_1_million,
          optional_verify(have_hosted_the_olympics_(summergames)),
          optional_verify(have_hosted_the_olympics_(wintergames)),
          verify(most_populous_city_in_europe).

london :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(official_currency_is_Euro),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(part_of_EU),
          verify(is_part_of_G7),
          (verify(hometown_of_Jimi_Hendrix);
           verify(location_of_the_big_ben)).

tallinn :- disprove(is_part_of_scandinavia),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           disprove(is_part_of_G7),
           population_under_1_million,
           verify(part_of_EU),
           verify(capital_of_a_baltic_country),
           population_under_1_million,
           verify(located_on_same_latitude_as_stockholm).

riga :- disprove(is_part_of_scandinavia),
        disprove(have_hosted_the_olympics_(summergames)),
        disprove(have_hosted_the_olympics_(wintergames)),
        disprove(located_on_same_latitude_as_stockholm),
        disprove(is_part_of_G7),
        verify(part_of_EU),
        verify(capital_of_a_baltic_country),
        verify(location_of_a_tragic_supermaket_collapse).


vilnius :- disprove(is_part_of_scandinavia),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           disprove(is_part_of_G7),
           population_under_1_million,
           verify(part_of_EU),
           verify(capital_of_a_baltic_country),          
           verify(declared_official_capital_year_1990).

paris :- disprove(is_part_of_scandinavia),
         disprove(have_hosted_the_olympics_(wintergames)),
         disprove(capital_of_a_baltic_country),
         disprove(was_part_of_the_soviet_union),
         verify(part_of_EU),
         verify(official_currency_is_Euro),
         verify(is_part_of_G7),
         verify(location_of_the_eiffel_tower).

rome :- disprove(is_part_of_scandinavia),
        disprove(have_hosted_the_olympics_(wintergames)),
        disprove(capital_of_a_baltic_country),
        disprove(was_part_of_the_soviet_union),
        verify(part_of_EU),
        verify(official_currency_is_Euro),
        verify(is_part_of_G7),
        verify(hometown_of_julius_caesar).

sarajevo :- disprove(is_part_of_scandinavia),
            disprove(have_hosted_the_olympics_(summergames)),
            disprove(capital_of_a_baltic_country),
            disprove(was_part_of_the_soviet_union),
            disprove(part_of_EU),
            disprove(official_currency_is_Euro),
            disprove(is_part_of_G7),
            optional_verify(have_hosted_the_olympics_(wintergames)),
            population_under_1_million,
            verify(location_of_assasination_that_triggered_word_war_I).

lisbon :- disprove(is_part_of_scandinavia),
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(is_part_of_G7),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          verify(capital_of_the_westernmost_country_of_the_European_mainland).



