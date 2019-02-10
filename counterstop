-module(counterstop).
-export([stop/1, value/1]).

stop(Counter) -> 
	Counter ! stop.
value(Counter) ->
	Counter ! {self(), value},
	receive
		{Counter, X} -> X
	end.
