-module(lesson2_task14_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task14,[duplicate/1]).

duplicate_test_() ->
    [?_assert(duplicate([a, b, c, c, d]) =:= [a, a, b, b, c, c, c, c, d, d]),
     ?_assert(duplicate([]) =:= []),
     ?_assertException(error, function_clause, duplicate(abcd))
    ].
