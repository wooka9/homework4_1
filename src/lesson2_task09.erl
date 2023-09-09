-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
	pack(List, []).
pack([Head, Head | Tail], Packed) ->
	pack([Head | Tail], [Head | Packed]);
pack([Head | Tail], Packed) ->
	[[Head | Packed] | pack(Tail, [])];
pack([],_) ->
	[].
