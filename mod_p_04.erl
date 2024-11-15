-module(mod_p_04).
-export([find_length/1]).

find_length(List) -> 
  find_length(List, 0).

find_length([_|T], L) -> 
  find_length(T, L + 1);
find_length([], L) -> L.