-module('001').
-export([solve/0])

solve() ->
  check(999,0).

check(3,Acc) -> 3 + Acc;
check(N,Acc) when (N rem 3 = 0) or (N rem 5 = 0) -> check(N-1,Acc + N);
check(N,Acc) -> check(N-1,Acc).
