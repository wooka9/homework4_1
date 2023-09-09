-module(lesson2_task05_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task05,[reverse/1]).

reverse_test_() ->
    [?_assert(reverse([1, 2, 3]) =:= [3, 2, 1]),
     ?_assert(reverse([a, [], b, [], c]) =:= [ c, [], b, [], a]),
     ?_assertException(error, function_clause, reverse(abcde))
    ].
