-module(ex_3_4).

-export([new/0, destroy/1, write/3, delete/2, read/2, match/2]).

% Write a module that create a database and is able to store, retrieve, and delete elements in it.

new() -> [].

destroy(_Db) -> ok.

read(_Key, []) -> {error, instance};
read(_Key, [{_Key, Value} | _Tail]) -> Value;
read(Key, [{_Head, _Value} | Tail]) -> read(Key, Tail).

match(_Value, []) -> [];
match(Value, [{Key, Value} | Tail]) -> [Key | match(Value, Tail)];
match(Value, [{_Head, _Value} | Tail]) -> match(Value, Tail).

write(Key, Element, Db) ->
  case read(Key, Db) of
    {error, instance} -> [ {Key, Element} | Db ];
    _ -> Db
  end.

delete(Key, [{Key, _Value} | Tail]) -> delete(Key, Tail);
delete(Key, [Head | Tail]) -> [Head | delete(Key, Tail)];
delete(_Key, []) -> [].
