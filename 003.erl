-module('003').
-export([start/0]).

% What is the largest prime factor of the number 600851475143?
%
% Strategy:
% Factor out prime numbers starting with the lowest.
% Divide by the factors as we find them.
% When no more factorization can be done, the result is the
% largest prime factor.

start() -> io:format("Answer: ~B~n",[maxfactor(600851475143)]).

% Start by checking the lowest prime: 2
maxfactor(Target) -> maxfactor(2, Target).


% when the factor we are trying is > the square root of
% Target, Target is the largest prime factor
maxfactor(Try, Target) when Try * Try > Target -> Target;

% When we find a factor, factor it out and try it again
maxfactor(Try, Target) when Target rem Try == 0 ->
  maxfactor(Try, Target div Try);

% After we factor out any 2s, start us off on odd numbers
maxfactor(2, Target) -> maxfactor(3, Target);

% Try the next odd number (easier than figuring out primes)
maxfactor(Try, Target) -> maxfactor(Try + 2, Target).
