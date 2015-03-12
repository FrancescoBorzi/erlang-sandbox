-module(ex_3_1).
-export([sum/1, sum_interval/2]).

% Write a function sum/1 which, given a positive integer N, will return the sum of all the integers between 1 and N.

sum(N) -> sum(N, 0).

sum(0, Count) -> Count;
sum(N, Count) -> sum(N - 1, Count + N).


% Write a function sum/2 which, given two integers N and M, will return the sum of the interval between N and M.

sum_interval(N, M) when (N > M) -> sum_interval(M, N, 0);
sum_interval(N, M) -> sum_interval(N, M, 0).

sum_interval(M, M, Count) -> Count;
sum_interval(N, M, Count) -> sum_interval(N + 1, M, Count + 1).
