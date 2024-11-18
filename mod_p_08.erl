-module(mod_p_08).
-export([remove_duplicates/1]).

remove_duplicates(List) -> 
  Filtered = remove_duplicates(List, []),
  mod_p_05:reverse_list(Filtered).

remove_duplicates([X|T], [Z|Y]) when X == Z -> %% спробуйте без охоронного виразу
  remove_duplicates(T, [Z|Y]);
remove_duplicates([X|T], Y) ->
  remove_duplicates(T, [X|Y]);
remove_duplicates([], Y) -> Y.