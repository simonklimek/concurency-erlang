-module(parraller).
-export([start/0, loop/0]).

start() -> spawn(parraller, loop, []).
loop() -> 
receive
{From, Message} -> 
From ! Message, 
loop()
end.

%%  spawn/3 
