question(is_part_of_scandinavia):- not(asked(is_part_of_scandinavia)),
                                   disprove(capital_of_a_baltic_country),
                                   disprove(was_part_of_the_soviet_union),
                                   disprove(is_part_of_G7),
                                   assert(asked(is_part_of_scandinavia)).

question(is_part_of_G7):- not(asked(is_part_of_G7)),
                          disprove(capital_of_a_baltic_country),
                          disprove(is_part_of_scandinavia),
                          assert(asked(is_part_of_G7)).

question(capital_of_a_baltic_country):- not(asked(capital_of_a_baltic_country)),
                                        disprove(is_part_of_G7),
                                        disprove(is_part_of_scandinavia),
                                        assert(asked(capital_of_a_baltic_country)).

question(was_part_of_former_yugoslavia):- not(asked(was_part_of_former_yugoslavia)),
                                        disprove(is_part_of_G7),
                                        disprove(is_part_of_scandinavia),
                                        disprove(capital_of_baltic_country),                                        
                                        assert(asked(was_part_of_former_yugoslavia)).


question(part_of_EU):- not(asked(part_of_EU)),
                       assert(asked(part_of_EU)).

question(capital_of_country_where_snus_originated):- not(asked(capital_of_country_where_snus_originated)),
                                                     disprove(capital_of_a_baltic_country),
                                                     disprove(was_part_of_the_soviet_union),
                                                     disprove(official_currency_is_Euro),
                                                     disprove(have_hosted_the_olympics_(vintergames)),
                                                     disprove(is_part_of_G7),
                                                     verify(is_part_of_scandinavia),
                                                     verify(part_of_EU),
                                                     optional_verify(have_hosted_the_olympics_(summergames)),
                                                     population_exceeds_1_million,
                                                     assert(asked(capital_of_country_where_snus_originated)).

question(hometown_of_Niels_Bohr):- not(asked(hometown_of_Niels_Bohr)),
                                   disprove(capital_of_a_baltic_country),
                                   disprove(was_part_of_the_soviet_union),
                                   disprove(official_currency_is_Euro),
                                   disprove(have_hosted_the_olympics_(summergames)),
                                   disprove(have_hosted_the_olympics_(vintergames)),
                                   disprove(is_part_of_G7),
                                   verify(is_part_of_scandinavia),
                                   verify(part_of_EU),
                                   population_exceeds_1_million,
                                   assert(asked(hometown_of_Niels_Bohr)).

question(official_currency_is_Euro):- not(asked(official_currency_is_Euro)),
                                      assert(asked(official_currency_is_Euro)).

question(hometown_of_linux):- not(asked(hometown_of_linux)),
                              disprove(is_part_of_scandinavia),
                              disprove(capital_of_a_baltic_country),
                              disprove(was_part_of_the_soviet_union),
                              disprove(have_hosted_the_olympics_(vintergames)),
                              disprove(is_part_of_G7),
                              verify(part_of_EU),
                              verify(official_currency_is_Euro),
                              optional_verify(have_hosted_the_olympics_(summergames)),
                              population_under_1_million,
                              assert(asked(hometown_of_linux)).

question(the_northernmost_town_in_the_world):- not(asked(the_northernmost_town_in_the_world)),
                                               disprove(is_part_of_scandinavia),
                                               disprove(capital_of_a_baltic_country),
                                               disprove(part_of_EU),
                                               disprove(official_currency_is_Euro),
                                               disprove(have_hosted_the_olympics_(summergames)),
                                               disprove(was_part_of_the_soviet_union),
                                               disprove(is_part_of_G7),
                                               population_under_half_a_million,
                                               assert(asked(the_northernmost_town_in_the_world)).
                                               
question(capital_of_worlds_highest_coffee_consumption_per_capita_country):- not(asked(capital_of_worlds_highest_coffee_consumption_per_capita_country)),
                                                                            disprove(is_part_of_scandinavia),
                                                                            disprove(capital_of_a_baltic_country),
                                                                            disprove(was_part_of_the_soviet_union),
                                                                            disprove(have_hosted_the_olympics_(vintergames)),
                                                                            disprove(is_part_of_G7),
                                                                            verify(part_of_EU),
                                                                            verify(official_currency_is_Euro),
                                                                            optional_verify(have_hosted_the_olympics_(summergames)),
                                                                            population_exceeds_1_million,
                                                                            assert(asked(capital_of_worlds_highest_coffee_consumption_per_capita_country)).



question(have_been_divided_in_east_and_west_separated_with_a_wall):- not(asked(have_been_divided_in_east_and_west_separated_with_a_wall)),
                                                                     disprove(is_part_of_scandinavia),
                                                                     disprove(capital_of_a_baltic_country),
                                                                     disprove(was_part_of_the_soviet_union),
                                                                     verify(part_of_EU),
                                                                     verify(official_currency_is_Euro),
                                                                     verify(is_part_of_G7),
                                                                     assert(asked(have_been_divided_in_east_and_west_separated_with_a_wall)).

question(home_of_Guinness_(the_beer)):- not(asked(home_of_Guinness_(the_beer))),
                                        disprove(is_part_of_scandinavia),
                                        disprove(capital_of_a_baltic_country),
                                        disprove(was_part_of_the_soviet_union),
                                        disprove(have_hosted_the_olympics_(summergames)),
                                        disprove(have_hosted_the_olympics_(wintergames)),
                                        disprove(is_part_of_G7),
                                        verify(part_of_EU),
                                        verify(official_currency_is_Euro),
                                        population_exceeds_1_million,
                                        assert(asked(home_of_Guinness_(the_beer))).

question(hometown_of_Raúl_González_Blanco):- not(asked(hometown_of_Raúl_González_Blanco)),
                                             disprove(is_part_of_scandinavia),
                                             disprove(capital_of_a_baltic_country),
                                             disprove(was_part_of_the_soviet_union),
                                             disprove(have_hosted_the_olympics_(summergames)),
                                             disprove(have_hosted_the_olympics_(wintergames)),
                                             disprove(is_part_of_G7),
                                             verify(part_of_EU),
                                             verify(official_currency_is_Euro),
                                             population_exceeds_1_million,
                                             assert(asked(hometown_of_Raúl_González_Blanco)).

question(highest_located_city_in_europe):- not(asked(highest_located_city_in_europe)),
                                           disprove(is_part_of_scandinavia),
                                           disprove(capital_of_a_baltic_country),
                                           disprove(was_part_of_the_soviet_union),
                                           disprove(have_hosted_the_olympics_(summergames)),
                                           disprove(have_hosted_the_olympics_(wintergames)),
                                           disprove(is_part_of_G7),
                                           verify(part_of_EU),
                                           verify(official_currency_is_Euro),
                                           population_exceeds_1_million,
                                           assert(asked(highest_located_city_in_europe)).

question(most_populous_city_in_europe):- not(asked(most_populous_city_in_europe)),
                                         disprove(is_part_of_scandinavia),
                                         disprove(part_of_EU),
                                         disprove(capital_of_a_baltic_country),
                                         disprove(official_currency_is_Euro),
                                         disprove(is_part_of_G7),
                                         verify(was_part_of_the_soviet_union),
                                         population_exceeds_1_million,
                                         optional_verify(have_hosted_the_olympics_(summergames)),
                                         optional_verify(have_hosted_the_olympics_(wintergames)),
                                         assert(asked(most_populous_city_in_europe)).

question(hometown_of_Jimi_Hendrix):- not(asked(hometown_of_Jimi_Hendrix)),
                                     disprove(is_part_of_scandinavia),
                                     disprove(capital_of_a_baltic_country),
                                     disprove(was_part_of_the_soviet_union),
                                     disprove(official_currency_is_Euro),
                                     disprove(have_hosted_the_olympics_(wintergames)),
                                     verify(part_of_EU),
                                     verify(is_part_of_G7),
                                     assert(asked(hometown_of_Jimi_Hendrix)).


question(location_of_the_big_ben):- not(asked(location_of_the_big_ben)),
                                    disprove(is_part_of_scandinavia),
                                    disprove(capital_of_a_baltic_country),
                                    disprove(was_part_of_the_soviet_union),
                                    disprove(official_currency_is_Euro),
                                    disprove(have_hosted_the_olympics_(wintergames)),
                                    verify(part_of_EU),
                                    verify(is_part_of_G7),
                                    assert(asked(location_of_the_big_ben)).

question(located_on_same_latitude_as_stockholm):- not(asked(located_on_same_latitude_as_stockholm)),
                                                  disprove(is_part_of_scandinavia),
                                                  disprove(have_hosted_the_olympics_(summergames)),
                                                  disprove(have_hosted_the_olympics_(wintergames)),
                                                  disprove(is_part_of_G7),
                                                  population_under_1_million,
                                                  verify(part_of_EU),
                                                  verify(capital_of_a_baltic_country),
                                                  population_under_1_million,
                                                  assert(asked(located_on_same_latitude_as_stockholm)).

question(location_of_a_tragic_supermaket_collapse):- not(asked(location_of_a_tragic_supermaket_collapse)),
                                                     disprove(is_part_of_scandinavia),
                                                     disprove(have_hosted_the_olympics_(summergames)),
                                                     disprove(have_hosted_the_olympics_(wintergames)),
                                                     disprove(located_on_same_latitude_as_stockholm),
                                                     disprove(is_part_of_G7),
                                                     verify(part_of_EU),
                                                     verify(capital_of_a_baltic_country),
                                                     assert(asked(location_of_a_tragic_supermaket_collapse)).

question(has_its_own_silicon_valley) :- not(asked(has_its_own_silicon_valley)),
                                        disprove(is_part_of_scandinavia),
                                        disprove(have_hosted_the_olympics_(summergames)),
                                        disprove(have_hosted_the_olympics_(wintergames)),
                                        disprove(capital_of_a_baltic_country),
                                        disprove(was_part_of_the_soviet_union),
                                        disprove(is_part_of_G7),
                                        disprove(official_currency_is_Euro),
                                        disprove(part_of_EU),
                                        verify(was_part_of_former_yugoslavia),
                                        assert(asked(has_its_own_silicon_valley)).

question(mother_theresa_was_born_and_lived_here) :- not(asked(mother_theresa_was_born_and_lived_here)),
                                                    disprove(is_part_of_scandinavia),
                                                    disprove(have_hosted_the_olympics_(summergames)),
                                                    disprove(have_hosted_the_olympics_(wintergames)),
                                                    disprove(capital_of_a_baltic_country),
                                                    disprove(was_part_of_the_soviet_union),
                                                    disprove(is_part_of_G7),
                                                    disprove(official_currency_is_Euro),
                                                    disprove(part_of_EU),
                                                    verify(was_part_of_former_yugoslavia),
                                                    assert(asked(mother_theresa_was_born_and_lived_here)).


question(declared_official_capital_year_1990):- not(asked(declared_official_capital_year_1990)),
                                                disprove(is_part_of_scandinavia),
                                                disprove(have_hosted_the_olympics_(summergames)),
                                                disprove(have_hosted_the_olympics_(wintergames)),
                                                disprove(is_part_of_G7),
                                                population_under_1_million,
                                                verify(part_of_EU),
                                                verify(capital_of_a_baltic_country),
                                                assert(asked(declared_official_capital_year_1990)).

question(location_of_the_eiffel_tower):- not(asked(location_of_the_eiffel_tower)),
                                         disprove(is_part_of_scandinavia),
                                         disprove(have_hosted_the_olympics_(wintergames)),
                                         disprove(capital_of_a_baltic_country),
                                         disprove(was_part_of_the_soviet_union),
                                         verify(part_of_EU),
                                         verify(official_currency_is_Euro),
                                         verify(is_part_of_G7),
                                         assert(asked(location_of_the_eiffel_tower)).

question(hometown_of_julius_caesar):- not(asked(hometown_of_julius_caesar)),
                                      disprove(is_part_of_scandinavia),
                                      disprove(have_hosted_the_olympics_(wintergames)),
                                      disprove(capital_of_a_baltic_country),
                                      disprove(was_part_of_the_soviet_union),
                                      verify(part_of_EU),
                                      verify(official_currency_is_Euro),
                                      verify(is_part_of_G7),
                                      assert(asked(hometown_of_julius_caesar)).

question(location_of_assasination_that_triggered_word_war_I):- not(asked(location_of_assasination_that_triggered_word_war_I)),
                                                               disprove(is_part_of_scandinavia),
                                                               disprove(have_hosted_the_olympics_(summergames)),
                                                               disprove(capital_of_a_baltic_country),
                                                               disprove(was_part_of_the_soviet_union),
                                                               disprove(part_of_EU),
                                                               disprove(official_currency_is_Euro),
                                                               disprove(is_part_of_G7),
                                                               optional_verify(have_hosted_the_olympics_(wintergames)),
                                                               population_under_1_million,
                                                               verify(was_part_of_former_yugoslavia),
                                                               assert(asked(location_of_assasination_that_triggered_word_war_I)).

question(capital_of_the_westernmost_country_of_the_European_mainland):- not(asked(capital_of_the_westernmost_country_of_the_European_mainland)),
                                                               disprove(is_part_of_scandinavia),
                                                               disprove(have_hosted_the_olympics_(summergames)),
                                                               disprove(have_hosted_the_olympics_(wintergames)),
                                                               disprove(capital_of_a_baltic_country),
                                                               disprove(was_part_of_the_soviet_union),
                                                               disprove(is_part_of_G7),
                                                               verify(part_of_EU),
                                                               verify(official_currency_is_Euro),
                                                               assert(asked(capital_of_the_westernmost_country_of_the_European_mainland)).

question(offers_free_wifi_in_whole_city_centre):- not(asked(offers_free_wifi_in_whole_city_centre)),
                                                  disprove(is_part_of_scandinavia),
                                                  disprove(have_hosted_the_olympics_(summergames)),
                                                  disprove(have_hosted_the_olympics_(wintergames)),
                                                  disprove(capital_of_a_baltic_country),
                                                  disprove(was_part_of_the_soviet_union),
                                                  disprove(is_part_of_G7),
                                                  disprove(official_currency_is_Euro),
                                                  verify(part_of_EU),
                                                  verify(was_part_of_former_yugoslavia),
                                                               assert(asked(offers_free_wifi_in_whole_city_centre)).



question(population_exceeds_1_million):- not(asked(population_exceeds_1_million)),
                                         disprove(population_under_1_million),
                                         disprove(population_under_half_a_million),
                                         assert(asked(population_exceeds_1_million)).


question(population_under_half_a_million) :- not(asked(population_under_half_a_million)),
                                   disprove(population_exceeds_1_million),
                                   assert(asked(population_under_half_a_million)).

question(population_under_1_million) :- not(asked(population_under_1_million)),
                                        not(asked(population_under_half_a_million)),
                                        disprove(population_exceeds_1_million),
                                        assert(asked(population_under_1_million)).

question(have_hosted_the_very_first_olympics) :- not(asked(have_hosted_the_very_first_olympics)),
                                                 disprove(is_part_of_scandinavia),
                                                 disprove(capital_of_a_baltic_country),
                                                 disprove(was_part_of_the_soviet_union),
                                                 disprove(have_hosted_the_olympics_(wintergames)),
                                                 disprove(is_part_of_G7),
                                                 verify(part_of_EU),
                                                 verify(official_currency_is_Euro),
                                                 population_exceeds_1_million,
                                                 assert(asked(have_hosted_the_very_first_olympics)).

question(capital_of_EU):- not(asked(capital_of_EU)),
                          disprove(is_part_of_scandinavia),
                          disprove(capital_of_a_baltic_country),
                          disprove(was_part_of_the_soviet_union),
                          disprove(official_currency_is_Euro),
                          disprove(have_hosted_the_olympics_(summergames)),
                          disprove(have_hosted_the_olympics_(wintergames)),
                          disprove(is_part_of_G7),
                          population_exceeds_1_million,
                          verify(part_of_EU),
                          assert(asked(capital_of_EU)).


question(have_hosted_the_olympics_(summergames)):- not(asked(have_hosted_the_olympics_(summergames))),
                                                   assert(asked(have_hosted_the_olympics_(summergames))).

question(have_hosted_the_olympics_(vintergames)):- not(asked(have_hosted_the_olympics_(vintergames))),
                                                   assert(asked(have_hosted_the_olympics_(vintergames))).

question(done).

