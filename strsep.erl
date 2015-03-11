-module(strsep).

-export([splitString/2, splitString2/2]).


%% Without using ++

splitString([], _Sep) -> [];
splitString([Head | Tail], Sep) -> splitString([Head | Tail], Sep, [], []).

splitString([], _Sep, List, []) -> lists:reverse(List);
splitString([], _Sep, List, Elem) -> [lists:reverse(Elem) | List];
splitString([Sep | Tail], Sep, List, []) -> splitString(Tail, Sep, List, []);
splitString([Sep | Tail], Sep, List, Elem) -> splitString(Tail, Sep, [lists:reverse(Elem) | List], []);
splitString([Head | Tail], Sep, List, Elem) -> splitString(Tail, Sep, List, [Head | Elem]).



%% Using ++

splitString2([], _Sep) -> [];
splitString2([Head | Tail], Sep) -> splitString2([Head | Tail], Sep, [], []).

splitString2([], _Sep, List, []) -> List;
splitString2([], _Sep, List, Elem) -> List ++ [Elem];
splitString2([Sep | Tail], Sep, List, []) -> splitString2(Tail, Sep, List, []);
splitString2([Sep | Tail], Sep, List, Elem) -> splitString2(Tail, Sep, List ++ [Elem], []);
splitString2([Head | Tail], Sep, List, Elem) -> splitString2(Tail, Sep, List, Elem ++ [Head]).


