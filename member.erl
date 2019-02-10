-module(member).
-export([member/2]).

member(_, []) -> false;
member(X, [X | _]) -> true;
member(X, [_ | T]) -> member(X, T).


%% member:member(1,[1, 2, 3]).
%% true
