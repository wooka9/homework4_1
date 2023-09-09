-module(lesson2_task03_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task03,[element_at/2]).

element_at_test_() ->
    [?_assert(element_at([a, b, c, d, e, f], 4) =:= d),
     ?_assert(element_at([a, b, c, d, e, f], 10) =:= undefined),
     ?_assert(element_at([a, b, c, []], 4) =:= [])
    ].
