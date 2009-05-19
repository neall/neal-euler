-module('003').
-export([start/0]).

start() -> io:format("Answer: ~B~n",[maxfactor(600851475143)]).

maxfactor(Target) -> maxfactor(2, 1, Target).

maxfactor(Try, _, Target) when Try * Try > Target -> Target;
maxfactor(Try, _, Target) when Target rem Try == 0 ->
  maxfactor(Try, Try, Target div Try);
maxfactor(2, Max, Target) -> maxfactor(3, Max, Target);
maxfactor(Try, Max, Target) -> maxfactor(Try + 2, Max, Target).
