-module(mod_p_07).
-export([flatten_list/1, concat_lists/2]).

flatten_list(List) -> 
  Flattened = flatten_list(List, []),
  mod_p_05:reverse_list(Flattened).

flatten_list([[Xh|Xt]|T], Y) -> 
  X = flatten_list([Xh|Xt]),
  C = concat_lists(X, Y),
  flatten_list(T, C);
flatten_list([X|T], Y) ->
  flatten_list(T, [X|Y]);
flatten_list([], Y) -> Y.

concat_lists([X|T], Y) -> 
  concat_lists(T, [X|Y]);
concat_lists([], Y) -> Y.

%% спробуйте спростити