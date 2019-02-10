-module(lists2).
-export([flat_length/2]).

%% flat_lenght/1 - length

%% flat length (list)
%% calculate the lenght of a list of lists

flat_length(List) -> flat_length(List, 0).

flat_length([H|T], N) when list(H) -> flat_length(H, flat_length(T, N));
flat_length([H|T], N) -> flat_length(T, N + 1);
flat_length([], N) -> N.


%% executing the function:
%% lists2:flat_length([1, 2, 3, 4, 5]).
