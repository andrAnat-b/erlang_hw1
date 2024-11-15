-module(mod_p_01).
-export([find_last/1]).

find_last([X]) -> X;
find_last([_|T]) -> 
  find_last(T).
