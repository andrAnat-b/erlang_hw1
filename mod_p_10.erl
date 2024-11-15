-module(mod_p_10).
-export([count_duplicates/1]).

count_duplicates(List) -> 
  Mapped = count_duplicates(List, []),
  mod_p_05:reverse_list(Mapped).

count_duplicates([X|T], [[Z,V]|Y]) when X == V ->
  count_duplicates(T, [[Z + 1,V]|Y]);
count_duplicates([X|T], Y) ->
  count_duplicates(T, [[1,X]|Y]);
count_duplicates([], Y) -> Y.