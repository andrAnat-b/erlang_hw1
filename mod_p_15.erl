-module(mod_p_15).
-export([duplicate_list_elements_n_times/2]).

duplicate_list_elements_n_times(List, Number) -> 
  Mapped = duplicate_list_elements_n_times(List, [], Number, 0),
  mod_p_05:reverse_list(Mapped).

duplicate_list_elements_n_times([X|T], [V|Y], N, C) when ((X == V) and (C < N)) ->  %% спробуйте без охоронного виразу
  duplicate_list_elements_n_times([X|T], [X|[V|Y]], N, C + 1);

duplicate_list_elements_n_times([_|T], Y, N, C) when C == N ->  %% спробуйте без охоронного виразу
  duplicate_list_elements_n_times(T, Y, N, 0);

duplicate_list_elements_n_times([X|T], Y, N, _) ->
  duplicate_list_elements_n_times([X|T], [X|Y], N, 1);

duplicate_list_elements_n_times([], Y, _, _) -> Y.