-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([{1, Element} | Tail]) ->
	[ Element | decode_modified(Tail)];
decode_modified([{Count, Element} | Tail]) ->
	[ Element | decode_modified([{Count-1, Element} | Tail])];
decode_modified([Head | Tail]) ->
	[Head | decode_modified(Tail)];
decode_modified([]) ->
	[].
