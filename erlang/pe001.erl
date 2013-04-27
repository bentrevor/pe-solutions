-module(pe001).
-export([mult_of_three/1, mult_of_five/1, mult_of_either/1, sum_of_multiples/1, show_answer/0]).
-include_lib("eunit/include/eunit.hrl").

mult_of_three_test() -> ?assert(pe001:mult_of_three(2) == false),
                        ?assert(pe001:mult_of_three(3) == true),
                        ?assert(pe001:mult_of_three(6) == true).

mult_of_five_test() -> ?assert(pe001:mult_of_five(2) == false),
                       ?assert(pe001:mult_of_five(5) == true),
                       ?assert(pe001:mult_of_five(10) == true).

mult_of_either_test() -> ?assert(pe001:mult_of_either(2) == false),
                         ?assert(pe001:mult_of_either(3) == true),
                         ?assert(pe001:mult_of_either(5) == true),
                         ?assert(pe001:mult_of_either(6) == true),
                         ?assert(pe001:mult_of_either(10) == true).

sum_of_multiples_test() -> ?assert(pe001:sum_of_multiples(2) == 0),
                           ?assert(pe001:sum_of_multiples(3) == 0),
                           ?assert(pe001:sum_of_multiples(5) == 3),
                           ?assert(pe001:sum_of_multiples(6) == 8),
                           ?assert(pe001:sum_of_multiples(7) == 14),
                           ?assert(pe001:sum_of_multiples(10) == 23).



mult_of_three(X) -> X rem 3 == 0.

mult_of_five(X) -> X rem 5 == 0.

mult_of_either(X) -> mult_of_three(X) or mult_of_five(X).

sum_of_multiples(X) -> lists:sum([N || N <- lists:seq(1, X - 1), mult_of_three(N) or mult_of_five(N)]).

show_answer() -> erlang:display(sum_of_multiples(1000)).

