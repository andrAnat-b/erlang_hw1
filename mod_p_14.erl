-module(mod_p_14).
-export([duplicate_list_elements/1]).

duplicate_list_elements(List) -> 
  Mapped = duplicate_list_elements(List, []),
  mod_p_05:reverse_list(Mapped).

duplicate_list_elements([X|T], Y) ->
  duplicate_list_elements(T, [X|[X|Y]]);

duplicate_list_elements([], Y) -> Y.