-module(lesson2_task13_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task13,[decode/1]).

decode_test_() ->
    [?_assert(decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
     ?_assert(decode([]) =:= []),
     ?_assertException(error, function_clause, decode(abcd))
    ].
