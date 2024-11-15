-module(mod_p_11).
-export([count_duplicates_only/1]).

count_duplicates_only(List) -> 
  Counted = mod_p_10:count_duplicates(List),
  Mapped = count_duplicates_only(Counted, []),
  mod_p_05:reverse_list(Mapped).

count_duplicates_only([[1, X]|T], Y) ->
  count_duplicates_only(T, [X|Y]);

count_duplicates_only([X|T], Y) ->
  count_duplicates_only(T, [X|Y]);

count_duplicates_only([], Y) -> Y.