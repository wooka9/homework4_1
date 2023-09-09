-module(lesson2_task12_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task12,[decode_modified/1]).

decode_modified_test_() ->
    [?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
     ?_assert(decode_modified([]) =:= []),
     ?_assertException(error, function_clause, decode_modified(abcd))
    ].
