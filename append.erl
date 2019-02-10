-module(append).
-export([appendix/2].

appendix([], Y) -> 
	Y;

appendix([X|T], Y) -> 
	[X|appendix(T, Y)].
