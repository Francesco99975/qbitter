import 'dart:async';
import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'socket.g.dart';

@Riverpod(keepAlive: true)
class Socket extends _$Socket {
  @override
  SocketChannel build() {
    return SocketChannel();
  }
}

class SocketChannel {
  Option<WebSocketChannel> _channel;
  final StreamController _controller = StreamController.broadcast();

  SocketChannel() : _channel = const Option<WebSocketChannel>.none();

  void init(String baseUrl) {
    if (_channel.isNone()) {
      String uri = baseUrl.replaceFirst("http", "ws");
      _channel = Option.of(WebSocketChannel.connect(Uri.parse("$uri/ws")));
    }

    _channel.match(() => null, (channel) {
      _controller.addStream(channel.stream);
      _controller.stream.listen((message) {
        // Check if the message is a ping
        if (message == 'ping') {
          // Respond with a pong
          channel.sink.add('pong');
        }
      });
    });
  }

  StreamSubscription<dynamic> subscribe(Function(dynamic) cb) {
    return _controller.stream.listen(cb);
  }

  void authenticate(String otp) {
    _channel.match(() {
      _channel = Option.of(
          WebSocketChannel.connect(Uri.parse("ws://localhost:8078/ws")));
      authenticate(otp);
    },
        (channel) => {
              channel.sink.add(jsonEncode({
                "type": "authadmin",
                "payload": {"otp": otp}
              }))
            });
  }

  void close() {
    _channel.match(() => null, (channel) => channel.sink.close());
    _channel = const Option<WebSocketChannel>.none();
  }
}
