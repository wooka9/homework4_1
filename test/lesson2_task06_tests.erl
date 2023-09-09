-module(lesson2_task06_tests).
-include_lib("eunit/include/eunit.hrl").
-import(lesson2_task06,[is_palindrome/1]).

is_palindrome_test_() ->
    [?_assert(is_palindrome([1, 2, 3, 2, 1]) =:= true),
     ?_assert(is_palindrome([]) =:= true),
     ?_assert(is_palindrome([a, b, c, d, e]) =:= false),
     ?_assertException(error, function_clause, is_palindrome(12345))
    ].
