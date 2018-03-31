%%%-------------------------------------------------------------------
%%% @author artur
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%   This module provides ONP expression evaluator functionality.
%%%   Project for university Erlang classes.
%%% @end
%%% Created : 15. Mar 2018 13:55
%%%-------------------------------------------------------------------
-module(onp).
-author("artur").
-import([math]).

%% API
-export([onp/1]).


onp(Expression) ->
  evaluate_onp(string:tokens(Expression, " "), []).


% Value, nothing to evaluate
evaluate_onp([], [Value]) ->
  Value;
% Multiplication
evaluate_onp(["*" | T], [Arg1 | [Arg2 | StackT]]) ->
  evaluate_onp(T, [Arg1 * Arg2 | StackT]);
% Division
evaluate_onp(["/" | T], [Arg1 | [Arg2 | StackT]]) ->
  evaluate_onp(T, [Arg2 / Arg1 | StackT]);
% Addition
evaluate_onp(["+" | T], [Arg1 | [Arg2 | StackT]]) ->
  evaluate_onp(T, [Arg1 + Arg2 | StackT]);
% Subtraction
evaluate_onp(["-" | T], [Arg1 | [Arg2 | StackT]]) ->
  evaluate_onp(T, [Arg2 - Arg1 | StackT]);
% Exponentiation
evaluate_onp(["pow" | T], [Arg1 | [Arg2 | StackT]]) ->
  evaluate_onp(T, [hello_world:power(Arg1, Arg2) | StackT]);
% Second root
evaluate_onp(["sqrt" | T], [Arg1 | StackT]) ->
  evaluate_onp(T, [math:sqrt(Arg1) | StackT]);
% Apply sine
evaluate_onp(["sin" | T], [Arg1 | StackT]) ->
  evaluate_onp(T, [math:sin(Arg1) | StackT]);
% Apply cosine
evaluate_onp(["cos" | T], [Arg1 | StackT]) ->
  evaluate_onp(T, [math:cos(Arg1) | StackT]);
% Add number to stack
evaluate_onp([Number | T], Stack) ->
  evaluate_onp(T, [list_to_integer(Number) | Stack]).
% 
