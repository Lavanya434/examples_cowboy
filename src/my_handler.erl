-module(my_handler).
-behaviour(cowboy_http_handler).

-export([init/3]).
-export([handle/2]).
-export([terminate/3]).

-record(state, {
}).

init(_, Req, _Opts) ->
	{ok, Req, #state{}}.

%handle(Req, State=#state{}) ->
	%Body = [<<"<h1>Test</h1>">>, <<"hi">>],
  %{ok, Req2} = cowboy_req:reply(200, [], Body, Req),
  %{ok, Req2, State}.
	%Body = <<"hi">>,
	%{ok, Req3} = cowboy_req:reply(200,[{<<"content-type">>,<<"text/plain">>}], 
	%	<<"hi">>, Req),
	%{ok, Req3, State}.
handle(Req, State) ->

	{ok, Reply} = cowboy_req:reply(
        302,
        [{<<"Location">>, <<"http://www.google.com">>}],
        <<"Redirecting with Header!">>,
        Req
    ),
    %it will redirect to new url
    io:format("hi"),
	{ok, Reply, State}.
terminate(_Reason, _Req, _State) ->
	ok.
