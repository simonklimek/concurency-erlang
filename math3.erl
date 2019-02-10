-module(math3).
-export([area/1]).

area({square, Side}) ->
	Side * Side;

area({rectangle, Radius
