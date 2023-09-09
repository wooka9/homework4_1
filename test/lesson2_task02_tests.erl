-module(lesson2_task02_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task02,[but_last/1]).

but_last_test_() ->
    [?_assert(but_last([a, b, c, d, e, f]) =:= [e, f]),
     ?_assert(but_last([a, b, [], d]) =:= [[], d]),
     ?_assert(but_last([a]) =:= [a, []]),
     ?_assertException(error, function_clause, but_last([]))
    ].
