-module(lesson2_task15).
-export([replicate/2]).

replicate([Head | Tail], Replicas) ->
	replicate([Head | Tail], Replicas, Replicas).

replicate([Head | Tail], Replicas, 1) ->
	[Head | replicate(Tail, Replicas, Replicas)];
replicate([Head | Tail], Replicas, Count) ->
	[Head | replicate([Head | Tail], Replicas, Count-1)];
replicate([], _, _) ->
	[].
