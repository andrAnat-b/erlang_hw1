-module(mod_p_06).
-export([check_is_palindrome/1, check_equal/2]).

check_is_palindrome(List) -> 
  Reversed = mod_p_05:reverse_list(List),
  check_equal(List, Reversed).

check_equal(X,Y) -> X == Y.
