import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:http/http.dart' show Client;

import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/serializers.dart';

final standardSerializers = (serializers.toBuilder()
  ..addPlugin(
      StandardJsonPlugin())).build();

class CoinMarketCapApiProvider {
  final String _tickerBaseUrl = "https://api.coinmarketcap.com/v1/";

  Client client = Client();

  Future<List<Currency>> fetchCurrencies() async {
    final _url = _tickerBaseUrl + "ticker/?limit=8";
    final response = await client.get(_url);
    return compute(parseCurrencies, response.body);
  }
}

List<Currency> parseCurrencies(String responseBody) {
  final parsed = json.decode(responseBody);
  print(parsed);
  return parsed.map<Currency>((currency) {
    return standardSerializers.deserializeWith(Currency.serializer, currency);
  }).toList();
}
