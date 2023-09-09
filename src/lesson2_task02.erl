-module(lesson2_task02).
-export([but_last/1]).

but_last([Last | []]) ->
	[Last, []];
but_last([Previous, Last | []]) ->
	[Previous, Last];
but_last([_ | Tail]) ->
	but_last(Tail).
