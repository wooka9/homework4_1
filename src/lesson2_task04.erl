-module(lesson2_task04).
-export([len/1]).

len(List) ->
	len(List, 0).

len([_ | Tail], Length) ->
	len(Tail, Length+1);
len([], Length) ->
	Length.
