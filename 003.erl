-module('003').
-export([start/0]).

start() -> io:format("Answer: ~B~n",[maxfactor(600851475143)]).

maxfactor(Target) -> maxfactor(2, 1, Target).

maxfactor(Try, Max, Target) when Try * Max >= Target -> Target;
maxfactor(Try, _, Target) when Target rem Try == 0 ->
  maxfactor(Try, Try, Target div Try);
maxfactor(2, Max, Target) when Target rem 2 > 0 ->
  maxfactor(3, Max, Target);
maxfactor(Try, Max, Target) when Target rem Try > 0 ->
  maxfactor(Try + 2, Max, Target).
