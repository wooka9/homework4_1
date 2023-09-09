-module(lesson2_task06).
-export([is_palindrome/1]).
-import(lesson2_task05, [reverse/1]).

is_palindrome(List) -> List =:= reverse(List).
