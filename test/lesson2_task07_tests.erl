-module(lesson2_task07_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task07,[flatten/1]).

flatten_test_() ->
    [?_assert(flatten([a,[],[b,[c,d],e]]) =:= [a, b, c, d, e]),
     ?_assert(flatten([]) =:= []),
     ?_assert(flatten([a, [], b, []]) =:= [a, b])
    ].
