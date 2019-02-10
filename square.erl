-module(square).
-export([times/2, count/1]).

times(X, N) ->
	X * N.

count(X) ->
	X * X.
