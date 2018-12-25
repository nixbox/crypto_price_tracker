import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'currency.g.dart';

abstract class Currency implements Built<Currency, CurrencyBuilder> {
  static Serializer<Currency> get serializer => _$currencySerializer;

  String get id;
  String get name;
  String get symbol;
  String get rank;
  String get price_usd;
  String get price_btc;
  @nullable
  String get volume_usd_24h;
  String get market_cap_usd;
  String get available_supply;
  String get total_supply;
  @nullable
  String get max_supply;
  String get percent_change_1h;
  String get percent_change_24h;
  String get percent_change_7d;
  String get last_updated;
  @nullable
  String get price_eur;
  @nullable
  String get volume_eur_24h;
  @nullable
  String get market_cap_eur;

  Currency._();
  factory Currency([updates(CurrencyBuilder b)]) = _$Currency;
}