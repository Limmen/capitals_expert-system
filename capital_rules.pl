/* capital_rules.pl

This file contains rules for different capitals. 

*/


/* capital identification rules */
stockholm :- disprove(capital_of_a_baltic_country),
             disprove(was_part_of_the_soviet_union),
             disprove(official_currency_is_Euro),
             disprove(have_hosted_the_olympics_(vintergames)),
             verify(is_part_of_scandinavia),
             verify(part_of_EU),
             optional_verify(have_hosted_the_olympics_(summergames)),
             verify(was_a_part_of_the_swedish_empire),
             population_exceeds_1_million,
             verify(capital_of_country_where_snus_originated).

copenhagen :- disprove(capital_of_a_baltic_country),
              disprove(was_part_of_the_soviet_union),
              disprove(official_currency_is_Euro),
              disprove(have_hosted_the_olympics_(summergames)),
              disprove(have_hosted_the_olympics_(vintergames)),
              verify(is_part_of_scandinavia),
              verify(part_of_EU),
              optional_verify(was_a_part_of_the_swedish_empire),
              population_exceeds_1_million,
              verify(hometown_of_Niels_Bohr).

helsinki :- disprove(is_part_of_scandinavia),
            disprove(capital_of_a_baltic_country),
            disprove(was_part_of_the_soviet_union),
            disprove(have_hosted_the_olympics_(vintergames)),
            verify(part_of_EU),
            verify(official_currency_is_Euro),
            optional_verify(have_hosted_the_olympics_(summergames)),
            optional_verify(was_a_part_of_the_swedish_empire),
            population_under_1_million,
            verify(hometown_of_linux).

reykjavik :- disprove(is_part_of_scandinavia),
             disprove(capital_of_a_baltic_country),
             disprove(part_of_EU),
             disprove(official_currency_is_Euro),
             disprove(have_hosted_the_olympics_(summergames)),
             disprove(was_part_of_the_soviet_union),
             disprove(was_a_part_of_the_swedish_empire),
             population_under_half_a_million,
             verify(the_northernmost_town_in_the_world).

oslo :- disprove(capital_of_a_baltic_country),
        disprove(part_of_EU),
        disprove(official_currency_is_Euro),
        disprove(have_hosted_the_olympics_(summergames)),
        disprove(was_part_of_the_soviet_union),
        verify(is_part_of_scandinavia),
        verify(have_hosted_the_olympics_(vintergames)),
        optional_verify(was_a_part_of_the_swedish_empire),
        population_exceeds_1_million.

amsterdam :- disprove(is_part_of_scandinavia),
             disprove(capital_of_a_baltic_country),
             disprove(was_part_of_the_soviet_union),
             disprove(was_a_part_of_the_swedish_empire),
             disprove(have_hosted_the_olympics_(vintergames)),
             verify(part_of_EU),
             verify(official_currency_is_Euro),
             optional_verify(have_hosted_the_olympics_(summergames)),
             population_exceeds_1_million,
             verify(capital_of_worlds_highest_coffee_consumption_per_capita_country).

athens :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(was_a_part_of_the_swedish_empire),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          have_hosted_the_very_first_olympics.

berlin :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          optional_verify(have_hosted_the_olympics_(summergames)),
          %optional_verify(was_a_part_of_the_swedish_empire),
          verify(have_been_divided_in_east_and_west_separated_with_a_wall).

brussel :- disprove(is_part_of_scandinavia),
           disprove(capital_of_a_baltic_country),
           disprove(was_part_of_the_soviet_union),
           disprove(was_a_part_of_the_swedish_empire),
           disprove(official_currency_is_Euro),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           population_exceeds_1_million,
           verify(part_of_EU),
           capital_of_EU.

dublin :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(was_a_part_of_the_swedish_empire),
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          verify(home_of_Guinness_(the_beer)).

madrid :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(was_a_part_of_the_swedish_empire),
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(part_of_EU),
          verify(official_currency_is_Euro),
          population_exceeds_1_million,
          (verify(highest_located_city_in_europe);
          verify(hometown_of_Raúl_González_Blanco)).

moscow :- disprove(is_part_of_scandinavia),
          disprove(part_of_EU),
          disprove(capital_of_a_baltic_country),
          disprove(official_currency_is_Euro),
          verify(was_part_of_the_soviet_union),
          population_exceeds_1_million,
          optional_verify(have_hosted_the_olympics_(summergames)),
          optional_verify(have_hosted_the_olympics_(wintergames)),
          optional_verify(was_a_part_of_the_swedish_empire),
          verify(most_populous_city_in_europe).

london :- disprove(is_part_of_scandinavia),
          disprove(capital_of_a_baltic_country),
          disprove(was_part_of_the_soviet_union),
          disprove(was_a_part_of_the_swedish_empire),
          disprove(official_currency_is_Euro),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(part_of_EU),
          population_exceeds_1_million,
          verify(have_hosted_the_olympics_(summergames)),
          (verify(hometown_of_Jimi_Hendrix);
           verify(location_of_the_big_ben)).

tallinn :- disprove(is_part_of_scandinavia),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           verify(part_of_EU),
           verify(capital_of_a_baltic_country),
           %          verify(official_currency_is_Euro),
           %          optional_verify(was_part_of_the_soviet_union),
           %          optional_verify(was_a_part_of_the_swedish_empire),
           population_under_1_million,
           verify(located_on_same_latitude_as_stockholm).

riga :- disprove(is_part_of_scandinavia),
        disprove(have_hosted_the_olympics_(summergames)),
        disprove(have_hosted_the_olympics_(wintergames)),
        disprove(located_on_same_latitude_as_stockholm),
        verify(part_of_EU),
        verify(capital_of_a_baltic_country),
        %          verify(official_currency_is_Euro),
        %          optional_verify(was_part_of_the_soviet_union),
        %          optional_verify(was_a_part_of_the_swedish_empire),
        verify(location_of_a_tragic_supermaket_collapse).


vilnius :- disprove(is_part_of_scandinavia),
           disprove(have_hosted_the_olympics_(summergames)),
           disprove(have_hosted_the_olympics_(wintergames)),
           verify(part_of_EU),
           verify(capital_of_a_baltic_country),
           %          verify(official_currency_is_Euro),
           %          optional_verify(was_part_of_the_soviet_union),
           %          optional_verify(was_a_part_of_the_swedish_empire),
           verify(declared_official_capital_year_1990).       
