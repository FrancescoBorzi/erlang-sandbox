-module(ex_3_3).

-export([print/1, print_even/1]).

% Write a function that prints out the integers between 1 and N

print(N) when N =< 0 -> 0;
print(N) -> print(N, 1).

print(Count, Count) -> io:format("Number: ~p~n", [Count]);
print(N, Count) -> io:format("Number: ~p~n", [Count]), print(N, Count + 1).

% Write a function that prints out the even integers between 1 and N

print_even(N) when N =< 1 -> 0;
print_even(N) -> print_even(N, 2).

print_even(N, Count) when Count =< N -> io:format("Number: ~p~n", [Count]), print_even(N, Count + 2);
print_even(_N, _Count) -> ok.
