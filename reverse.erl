-module(reverse).
-export([reverse_list/1]).


reverse_list(L) -> 
	reverse_list(L, []).

reverse_list([H|T], L) -> 
	reverse_list(T, [H|L]);

reverse_list([], L) -> L.
