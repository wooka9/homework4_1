-module(lesson2_task13).
-export([decode/1]).

decode([{1, Element} | Tail]) ->
	[Element | decode(Tail)];
decode([{Count , Element} | Tail]) ->
	[Element | decode([{Count-1, Element} | Tail])];
decode([]) ->
	[].
