/* capital_rules.pl

This file contains rules for different capitals. 

*/


/* capital identification rules */
stockholm :- verify(is_part_of_scandinavia),
             verify(part_of_EU),
             optional_verify(have_hosted_the_olympics_(summergames)),
             disprove(have_hosted_the_olympics_(vintergames)),
             population_exceeds_1_million,
             verify(capital_of_country_where_snus_originated).

copenhagen :- verify(is_part_of_scandinavia),
              verify(part_of_EU),
              disprove(have_hosted_the_olympics_(summergames)),
              disprove(have_hosted_the_olympics_(vintergames)),
              population_exceeds_1_million,
              verify(hometown_of_Niels_Bohr).

helsinki :- verify(is_part_of_scandinavia),
            verify(part_of_EU),
            optional_verify(have_hosted_the_olympics_(summergames)),
            disprove(have_hosted_the_olympics_(vintergames)),
            population_under_1_million,
            verify(hometown_of_linux).

reykjavik :- verify(is_part_of_scandinavia),
             disprove(part_of_EU),
             disprove(have_hosted_the_olympics_(summergames)),
             population_under_half_a_million,
             verify(the_northernmost_town_in_the_world).

oslo :- verify(is_part_of_scandinavia),
        disprove(part_of_EU),
        disprove(have_hosted_the_olympics_(summergames)),
        verify(have_hosted_the_olympics_(vintergames)),
        population_exceeds_1_million.

amsterdam :- disprove(is_part_of_scandinavia),
             verify(part_of_EU),
             optional_verify(have_hosted_the_olympics_(summergames)),
             disprove(have_hosted_the_olympics_(vintergames)),
             population_exceeds_1_million,
             verify(capital_of_worlds_highest_coffee_consumption_per_capita_country).

athens :- disprove(is_part_of_scandinavia),
          verify(part_of_EU),
          population_exceeds_1_million,
          disprove(have_hosted_the_olympics_(wintergames)),
          have_hosted_the_very_first_olympics.

berlin :- disprove(is_part_of_scandinavia),
          verify(part_of_EU),
          population_exceeds_1_million,
          optional_verify(have_hosted_the_olympics_(summergames)),
          verify(have_been_divided_in_east_and_west_separated_with_a_wall).

brussel :- disprove(is_part_of_scandinavia),
          population_exceeds_1_million,
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          capital_of_EU.

dublin :- disprove(is_part_of_scandinavia),
          verify(part_of_EU),
          population_exceeds_1_million,
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(home_of_Guinness_(the_beer)).

madrid :- disprove(is_part_of_scandinavia),
          verify(part_of_EU),
          population_exceeds_1_million,
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          (verify(highest_located_city_in_europe);
          verify(hometown_of_Raúl_González_Blanco)).

moscow :- disprove(is_part_of_scandinavia),
          disprove(part_of_EU),
          population_exceeds_1_million,
          disprove(have_hosted_the_olympics_(summergames)),
          disprove(have_hosted_the_olympics_(wintergames)),
          verify(most_populous_city_in_europe).

        
