-module(lesson2_task09).
-export([pack/1]).
-import(lesson2_task05, [reverse/1]).

pack(List) ->
	reverse(pack(List, [], [])).

pack([Head, Head | Tail], Acc, Packed) ->
	pack([Head | Tail], [Head | Acc], Packed);
pack([Head | Tail], Acc, Packed) ->
	pack(Tail, [], [[Head | Acc] | Packed]);
pack([], [], Packed) ->
	Packed.
