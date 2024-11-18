-module(mod_p_09).
-export([separate_duplicates/1]).

separate_duplicates(List) -> 
  Mapped = separate_duplicates(List, []),
  mod_p_05:reverse_list(Mapped).

separate_duplicates([X|T], [[Z|V]|Y]) when X == Z ->  %% спробуйте без охоронного виразу
  separate_duplicates(T, [[X|[Z|V]]|Y]);
separate_duplicates([X|T], Y) ->
  separate_duplicates(T, [[X]|Y]);
separate_duplicates([], Y) -> Y.