-module(mod_p_05).
-export([reverse_list/1]).

reverse_list(List) -> 
  reverse_list(List, []).

reverse_list([X|T], Y) -> 
  reverse_list(T, [X | Y]);
reverse_list([], Y) -> Y.