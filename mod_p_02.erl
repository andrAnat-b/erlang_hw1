-module(mod_p_02).
-export([find_last_two/1]).

find_last_two([X,Y]) -> [X,Y];
find_last_two([_|T]) ->
  find_last_two(T).
