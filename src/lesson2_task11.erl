-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
	encode_modified(List, 0).

encode_modified([Head, Head | Tail], Count) ->
	encode_modified([Head | Tail], Count+1);
encode_modified([Head | Tail], 0) ->
	[Head | encode_modified(Tail, 0)];
encode_modified([Head | Tail ], Count) ->
	[{Count+1, Head}|encode_modified(Tail, 0)];
encode_modified([], _) ->
	[].
