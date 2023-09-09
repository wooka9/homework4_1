-module(lesson2_task09_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task09,[pack/1]).

pack_test_() ->
    [ ?_assert(pack([a, a, a, a, b, c, c, a, a, d, e, e, e, e]) =:= [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]),
     ?_assert(pack([]) =:= []),
     ?_assertException(error, function_clause, pack(abcd))
    ].
