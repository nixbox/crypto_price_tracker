library serializers;

import 'package:built_value/serializer.dart';
import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Currency,
  HitBTCCandles,
])

final Serializers serializers = _$serializers;