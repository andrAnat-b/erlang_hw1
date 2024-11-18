-module(mod_p_13).
-export([count_duplicates_only/1]).

count_duplicates_only(List) -> 
  Mapped = count_duplicates_only(List, []),
  mod_p_05:reverse_list(Mapped).

count_duplicates_only([X|T], [[Z,V]|Y]) when X == V ->  %% спробуйте без охоронного виразу
  count_duplicates_only(T, [[Z + 1,V]|Y]);

count_duplicates_only([X|T], [V|Y]) when X == V ->  %% спробуйте без охоронного виразу
  count_duplicates_only(T, [[2,V]|Y]);

count_duplicates_only([X|T], Y) ->
  count_duplicates_only(T, [X|Y]);

count_duplicates_only([], Y) -> Y.