-module(lesson2_task05).
-export([reverse/1]).

reverse([]) ->
	[];
reverse([Head | Tail]) ->
	reverse(Tail, [Head]).

reverse([Head | Tail], Reversed) ->
	reverse(Tail, [Head | Reversed]);
reverse([], Reversed) ->
	Reversed.
