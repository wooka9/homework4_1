-module(lesson2_task15_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task15,[replicate/2]).

replicate_test_() ->
    [?_assert(replicate([a, b, c], 3) =:= [a, a, a, b, b, b, c, c, c])
    %?_assert(replicate([], 1) =:= [])
    %?_assertException(error, function_clause, replicate("abcd", 0))
    ].
