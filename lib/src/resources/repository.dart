import 'dart:async';
import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/resources/cmc_api_provider.dart';
import 'package:crypto_price_tracker/src/resources/hitbtc_api_provider.dart';
import 'package:crypto_price_tracker/src/resources/hitbtc_websocket.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Repository {
  final cmcApiProvider = CoinMarketCapApiProvider();
  final hitBTCApiProvider = HitBTCApiProvider();
  final hitBTCWebSocket = HitBTCWebSocket();

  WebSocketChannel getWebSocketChannel() => hitBTCWebSocket.getChannel();

  Future<List<Currency>> getCurrencies() async =>
      cmcApiProvider.fetchCurrencies();

  Future<List<HitBTCCandles>> getPriceCandles(String symbol) async =>
      hitBTCApiProvider.fetchHourlyPriceData(symbol);

  Future<void> subscribeToPriceCandles(String symbol) async =>
      hitBTCWebSocket.subscribeCandles(symbol);
}