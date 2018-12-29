import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:http/http.dart' show Client;

import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';
import 'package:crypto_price_tracker/src/serializers.dart';

final standardSerializers = (serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..add(Iso8601DateTimeSerializer())).build();

class HitBTCApiProvider {
  final _apiHost = 'api.hitbtc.com';

  Client client = Client();

  Future<List<HitBTCCandles>> fetchHourlyPriceData(String symbol) async {
    var till = DateTime.now();
    var from = till.subtract(Duration(days: 1));

    var queryParams = {
      'period': 'M30',
      'from': from.toIso8601String(),
      'till': till.toIso8601String(),
      'limit': '48',
    };

    final uri = Uri.https(_apiHost, 'api/2/public/candles/${symbol}USD',
        queryParams);

    final response = await client.get(
      uri,
      headers: {
        "json": "true",
      },
    );
//    print(response.body);
    return compute(parseCandles, response.body);
  }
}

List<HitBTCCandles> parseCandles(String responseBody) {
  final parsed = json.decode(responseBody);
  print(parsed);
  return parsed.map<HitBTCCandles>((candle) {
//    print(candle);
    return standardSerializers.deserializeWith(HitBTCCandles.serializer, candle);
  }).toList();
}
