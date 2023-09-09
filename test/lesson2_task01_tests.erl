-module(lesson2_task01_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task01,[last/1]).

last_test_() ->
    [?_assert(last([a, b, c, d, e, f]) =:= f),
     ?_assert(last([a]) =:= a),
     ?_assert(last([]) =:= []),
     ?_assertException(error, function_clause, last(abcd))
    ].
