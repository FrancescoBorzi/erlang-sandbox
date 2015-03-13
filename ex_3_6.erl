-module(ex_3_6).

-export([quicksort/1]).

% Quicksort
% - the head of the list is taken as the pivot
% - the list is then split according to those elements smaller than the pivot and the rest
% - thse two list are then recursively sorted by quicksort, and joined toghether, with the pivot betweem them

quicksort([]) -> [];
quicksort([X1 | L]) -> quicksort([X || X <- L, X < X1]) ++ [X1] ++ quicksort([X || X <- L, X >= X1]).
