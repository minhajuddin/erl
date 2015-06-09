-module(hello).
-compile(export_all).

printit()->
  io:format("Hello, World!~n").
