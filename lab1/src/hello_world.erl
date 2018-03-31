%%%-------------------------------------------------------------------
%%% @author artur
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Mar 2018 13:25
%%%-------------------------------------------------------------------
-module(hello_world).
-author("artur").

%% API
-export([power/2]).

power(0, _) ->
  0;
power(1, _) ->
  1;
power(Number, 1) ->
  Number;
power(Number, To_power) ->
  power(Number * Number, To_power - 1).