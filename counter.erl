-module(counter).
-export([start/0, increment/1, loop/1]).

start() -> spawn(counter, loop, [0]).

increment(Counter) -> Counter ! increment.

loop(Val) -> 
	receive
		increment -> loop(Val +1);
		{From, value} ->
			From ! {self(), Val},
			loop(Val);
		stop -> true;
		Other -> loop(Val)
	end.
