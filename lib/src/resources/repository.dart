import 'dart:async';
import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/resources/cmc_api_provider.dart';

class Repository {
  final cmcApiProvider = CoinMarketCapApiProvider();

  Future<List<Currency>> getCurrencies() => cmcApiProvider.fetchCurrencies();
}