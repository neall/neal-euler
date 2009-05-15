-module('002').
-export([start/0]).

start() -> io:format("Answer: ~B~n",[sumfib()]).

sumfib() -> sumfib(1, 2, 0).

sumfib(_, B, Acc) when B > 4000000 -> Acc;
sumfib(A, B, Acc) -> sumfib(A + 2*B, 2*A + 3*B, Acc + B).
