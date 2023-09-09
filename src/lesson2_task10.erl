-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
	encode(List, 0).

encode([Head, Head | Tail], Count) ->
	encode([Head | Tail], Count+1);
encode([Head | Tail ], Count) ->
	[{Count+1, Head} | encode(Tail, 0)];
encode([], _) ->
	[].
