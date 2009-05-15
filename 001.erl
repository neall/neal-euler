-module('001').
-export([start/0]).

start() -> io:format("Answer: ~B~n",[sum35(1000)]).

sum35(Limit) -> sum35(Limit, 0).

sum35(3, Acc) -> 3 + Acc;
sum35(Limit, Acc) when Limit rem 3 == 0 -> sum35(Limit - 1,Acc+Limit);
sum35(Limit, Acc) when Limit rem 5 == 0 -> sum35(Limit - 1,Acc+Limit);
sum35(Limit, Acc) -> sum35(Limit - 1,Acc).
