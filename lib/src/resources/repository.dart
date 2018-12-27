import 'dart:async';
import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/resources/cmc_api_provider.dart';
import 'package:crypto_price_tracker/src/resources/hitbtc_api_provider.dart';

class Repository {
  final cmcApiProvider = CoinMarketCapApiProvider();
  final hitBTCApiProvider = HitBTCApiProvider();

  Future<List<Currency>> getCurrencies() => cmcApiProvider.fetchCurrencies();
  getPriceCandles() => hitBTCApiProvider.fetchHourlyPriceData("BTC");
}