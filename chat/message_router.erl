-module(message_router).
-compile(export_all).

route_messages () ->
  receive
    {send_chat_msg, Addressee, MessageBody} ->
      Addressee ! {recv_chat_msg, MessageBody};
    {recv_chat_msg, MessageBody} -> 
      io:format("Received message ~p~n", [MessageBody]);
    Wild ->
      io:format("Warning! Received message ~p~n", [Wild]),
      route_messages()
  end.
