-module(ex_3_5).
-export([filter/2, reverse/1, concatenate/1, flatten/1]).


% Write a function that, given a list of integers and an integer, will return all integers smaller than or equal to that integer

filter([], _N) -> [];
filter([Head | Tail], N) when Head =< N -> [Head | filter(Tail, N)];
filter([_Head | Tail], N) -> filter(Tail, N).


% Write a function that, given a list, will reverse the order of the elements

reverse(List) -> reverse(List, []).

reverse([], Newlist) -> Newlist;
reverse([Head | Tail], Newlist) -> reverse(Tail, [Head | Newlist]).


% Write a function that, given a list of lists, will concatenate them

concatenate(Lists) -> concatenate(Lists, []).

concatenate([], Newlist) -> reverse(Newlist);
concatenate([[] | Lists], Newlist) -> concatenate(Lists, Newlist);
concatenate([[Head | Tail] | Lists], Newlist) -> concatenate([Tail | Lists], [Head | Newlist]).


% Write a function that, given a list of nested lists, will return a flat list

%% DOESN'T WORK!!!

flatten(Lists) -> flatten(Lists, []).

flatten([], Newlist) -> reverse(Newlist);
flatten([[] | Lists], Newlist) -> flatten(Lists, Newlist);
flatten([[Head | Tail] | Lists], Newlist) when is_list(Head) -> flatten([Tail | Lists], [flatten(Head) | Newlist]);
flatten([[Head | Tail] | Lists], Newlist) -> flatten([Tail | Lists], [Head | Newlist]).

