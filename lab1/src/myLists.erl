%%%-------------------------------------------------------------------
%%% @author artur
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Mar 2018 13:34
%%%-------------------------------------------------------------------
-module(myLists).
-author("artur").

%% API
-export([contains/2,
         duplicateElements/1,
         sumFloats/2]).

contains([], _) ->
  false;
contains([H | T], Value) ->
  case H of
    Value -> true;
    _ -> contains(T, Value)
  end.

duplicateElements([]) ->
  [];
duplicateElements([H | T]) ->
  [H, H] ++ duplicateElements(T).

sumFloats([], Acc) ->
  Acc;
sumFloats([H | T], Acc) when is_float(H) ->
  sumFloats(T, Acc + H);
sumFloats([_ | T], Acc) ->
  sumFloats(T, Acc).
