-module(lesson2_task08).
-export([compress/1]).

compress([Head | []]) ->
	[Head];
compress([Head,Head | Tail]) ->
	compress([Head | Tail]);
compress([Head | Tail]) ->
	[Head | compress(Tail)].
