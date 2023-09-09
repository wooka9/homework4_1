-module(lesson2_task03).
-export([element_at/2]).

element_at([Element | _], 1) ->
	Element;
element_at([_ | Tail], Position) ->
	element_at(Tail, Position-1);
element_at([], _) ->
	undefined.
