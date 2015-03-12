-module(ex_3_1a).

% Write a function sum/1 which, given a positive integer N, will return the sum of all the integers between 1 and N.

-export([sum/1]).

sum(N) -> sum(N, 0).

sum(0, Count) -> Count;
sum(N, Count) -> sum(N - 1, Count + N).
