-module(lesson2_task08).
-export([compress/1]).
-import(lesson2_task05, [reverse/1]).

compress(List) ->
	reverse(compress(List, [])).

compress([Head, Head | Tail], Compressed) ->
	compress([Head | Tail], Compressed);
compress([Head | Tail], Compressed) ->
	compress(Tail, [Head | Compressed]);
compress([], Compressed) ->
	Compressed.
