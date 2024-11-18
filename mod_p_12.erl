-module(mod_p_12).
-export([append_counted_duplicates/1]).

append_counted_duplicates(List) -> 
  Mapped = append_counted_duplicates(List, [], 0),
  mod_p_05:reverse_list(Mapped).

append_counted_duplicates([[N,X]|T], [], _) ->  %% спробуйте без додаткового аргумента
  append_counted_duplicates([[N,X]|T], [X|[]], N - 1);

append_counted_duplicates([[N,X]|T], [V|Y], _) when (X /= V) ->  %% спробуйте без охоронного виразу
  append_counted_duplicates([[N,X]|T], [X|[V|Y]], N - 1);

append_counted_duplicates([[N,X]|T], [V|Y], C) when ((X == V) and (C > 0)) ->  %% спробуйте без охоронного виразу
  append_counted_duplicates([[N,X]|T], [X|[V|Y]], C - 1);

append_counted_duplicates([[_,X]|T], [V|Y], C) when ((X == V) and (C == 0)) ->  %% спробуйте без охоронного виразу
  append_counted_duplicates(T, [V|Y], 0);

append_counted_duplicates([X|T], Y, _) ->
  append_counted_duplicates(T, [X|Y], 0);

append_counted_duplicates([], Y, _) -> Y.