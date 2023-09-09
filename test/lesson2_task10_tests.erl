-module(lesson2_task10_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task10,[encode/1]).

encode_test_() ->
    [?_assert(encode([a, a, a, a, b, c, c, a, a, d, e, e, e, e]) =:= [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]),
     ?_assert(encode([]) =:= []),
     ?_assertException(error, function_clause, encode(abcd))
    ].
