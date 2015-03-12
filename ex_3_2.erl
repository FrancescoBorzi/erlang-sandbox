-module(ex_3_2).
-export([create/1, reverse_create/1]).

% Given an integer N, return a list [N, N - 1, ...., 1, 0]

create(N) -> create(N, []).

create(0, List) -> [0 | List];
create(N, List) -> create(N - 1, [N | List]).


% Given an integer N, return a list [0, 1, 2, ..., N-1, N]

reverse_create(N) -> reverse_create(N, 0, []).

reverse_create(N, N, List) -> [N | List];
reverse_create(N, Count, List) -> reverse_create(N, Count + 1, [Count | List]).
