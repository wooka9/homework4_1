-module(lesson2_task04_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task04,[len/1]).

len_test_() ->
    [?_assert(len([]) =:= 0),
     ?_assert(len([a, b, c, d]) =:= 4),
     ?_assert(len([a, []]) =:= 2),
     ?_assertException(error, function_clause, len(abcd))
    ].
