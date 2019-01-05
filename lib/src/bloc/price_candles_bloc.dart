import 'package:crypto_price_tracker/src/model/timeseries_price.dart';
import 'package:crypto_price_tracker/src/resources/repository.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_ticker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:crypto_price_tracker/src/serializers.dart';
//import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc;
import 'dart:convert';


final standardSerializers = (serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..add(Iso8601DateTimeSerializer())).build();

class PriceCandlesBloc {
  Map<String, PublishSubject<List<HitBTCCandles>>> priceCandlesFetcher = Map<String, PublishSubject<List<HitBTCCandles>>>();
  Map<String, PublishSubject<HitBTCTicker>> tickerFetcher = Map<String, PublishSubject<HitBTCTicker>>();

  final _repository = Repository();

  static final PriceCandlesBloc _singleton = PriceCandlesBloc._internal();

  factory PriceCandlesBloc() {
    return _singleton;
  }

  PriceCandlesBloc._internal() {
    final channel  = _repository.getWebSocketChannel();
    channel.stream.listen(_handleWebSocketData);
  }

  Observable<List<HitBTCCandles>> candles(String symbol) {
    if (!priceCandlesFetcher.containsKey(symbol))
      priceCandlesFetcher[symbol] = PublishSubject<List<HitBTCCandles>>();
    return priceCandlesFetcher[symbol].stream;
  }

  Observable<HitBTCTicker> ticker(String symbol) {
    if (!tickerFetcher.containsKey(symbol))
      tickerFetcher[symbol] = PublishSubject<HitBTCTicker>();
    return tickerFetcher[symbol].stream;
  }

  Future<Null> fetchCandles(String symbol) async {
    if (!priceCandlesFetcher.containsKey(symbol))
      priceCandlesFetcher[symbol] = PublishSubject<List<HitBTCCandles>>();
    List<HitBTCCandles> candles = await _repository.getPriceCandles(symbol);
    priceCandlesFetcher[symbol].add(candles);
  }

  Future<void> subscribeCandles(String symbol) async {
    if (!priceCandlesFetcher.containsKey(symbol))
      priceCandlesFetcher[symbol] = PublishSubject<List<HitBTCCandles>>();
    await _repository.subscribeToPriceCandles(symbol);
  }

  Future<void> subscribeTicker(String symbol) async {
    if (!tickerFetcher.containsKey(symbol))
      tickerFetcher[symbol] = PublishSubject<HitBTCTicker>();
    await _repository.subscribeToTicker(symbol);
  }

  _handleWebSocketData(dynamic data) {
    var parsed = json.decode(data);
    if (parsed['method'] == 'snapshotCandles')
      _handleSnapshotCandles(parsed['params']);
    else if (parsed['method'] == 'updateCandles')
      _handleUpdateCandles(parsed['params']);
    else if (parsed['method'] == 'ticker')
      _handleTicker(parsed['params']);
  }

  _symbol(String symbol) => symbol.substring(0, 3);

  _handleSnapshotCandles(Map<String, dynamic> data) {
    if (data['data'] != null) {
      List<HitBTCCandles> candles = parseCandles(data['data']);
      print('Snapshot for ${_symbol(data['symbol'])}');
      priceCandlesFetcher.forEach((s, _) => print(s));
      priceCandlesFetcher[_symbol(data['symbol'])].add(candles);
    }
  }

  _handleUpdateCandles(Map<String, dynamic> data) {
    // TODO: Handle incremental update of candles
  }

  _handleTicker(Map<String, dynamic> data) {
    print(data);
    HitBTCTicker ticker = parseTicker(data);
    print("Ticker: ${ticker.symbol} => ${ticker.last}");
    tickerFetcher[_symbol(data['symbol'])].add(ticker);
  }

  dispose() {
    priceCandlesFetcher.forEach((_, v) => v.close());
  }
}

List<HitBTCCandles> parseCandles(parsed) {
  return parsed.map<HitBTCCandles>((candle) =>
      standardSerializers.deserializeWith(
          HitBTCCandles.serializer, candle)).toList();
}

HitBTCTicker parseTicker(parsed) {
  return standardSerializers.deserializeWith(HitBTCTicker.serializer, parsed);
}

var priceCandlesBloc = PriceCandlesBloc();