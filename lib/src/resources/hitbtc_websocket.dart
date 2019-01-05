import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:json_rpc_2/json_rpc_2.dart' show Client;

import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';

class HitBTCWebSocket {
  WebSocketChannel _channel;
  Client _client;

  static final HitBTCWebSocket _singleton = HitBTCWebSocket._internal();

  factory HitBTCWebSocket() {
    return _singleton;
  }

  HitBTCWebSocket._internal() {
    _channel = IOWebSocketChannel.connect("wss://api.hitbtc.com/api/2/ws");
    _client = Client(_channel.cast<String>());
  }

  WebSocketChannel getChannel() {
    return _channel;
  }

  Future<void> subscribeCandles(String symbol) async {
    await _client.sendRequest(
      "subscribeCandles",
      {
        'symbol': '${symbol}USD',
        'period': 'M30'

      }
    );
  }

  Future<void> subscribeTicker(String symbol) async {
    await _client.sendRequest(
        "subscribeCandles",
        {
          'symbol': '${symbol}USD',
          'period': 'M30'

        }
    );
  }
}

