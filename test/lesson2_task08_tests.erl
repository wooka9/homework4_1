-module(lesson2_task08_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task08,[compress/1]).

compress_test_() ->
    [?_assert(compress([a,a,a,a,b,c,c,a,d,e,e,e,e]) =:= [a, b, c, a, d, e]),
     ?_assert(compress([]) =:= []),
     ?_assertException(error, function_clause, compress(abcd))
    ].
