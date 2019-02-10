-module(fibbon).
-export([fibbonaci/1]).
fibbonaci(0) -> 0;
fibbonaci(1) -> 1;
fibbonaci(N) -> fibbonaci(N-1) + fibbonaci(N-2).
