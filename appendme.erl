-module(appendme).
-export(append/1).

append([],Y) -> false;
append([X | T], Y) -> [Y | append(T, Y)]. %% second part not working
