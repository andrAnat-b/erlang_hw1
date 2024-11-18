-module(mod_p_03).
-export([find_kth_element/2]).

find_kth_element(List, Number) ->
  find_kth_element(List, Number, 1).

find_kth_element([X|_], K, K) -> X;
find_kth_element([_|T], K, I) -> 
  find_kth_element(T, K, I + 1).
  %% спробуйте переробити без додаткового аргумента