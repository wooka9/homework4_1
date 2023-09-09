-module(lesson2_task11_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task11,[encode_modified/1]).

encode_modified_test_() ->
    [?_assert(encode_modified([a, a, a, a, b, c, c, a, a, d, e, e, e, e]) =:= [{4,a},b,{2,c},{2,a},d,{4,e}]),
     ?_assert(encode_modified([]) =:= []),
     ?_assertException(error, function_clause, encode_modified(abcd))
    ].
