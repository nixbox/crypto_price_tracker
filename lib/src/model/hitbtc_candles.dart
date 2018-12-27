import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:crypto_price_tracker/src/serializers.dart';

part 'hitbtc_candles.g.dart';

abstract class HitBTCCandles
    implements Built<HitBTCCandles, HitBTCCandlesBuilder> {
  HitBTCCandles._();

  factory HitBTCCandles([updates(HitBTCCandlesBuilder b)]) = _$HitBTCCandles;

  @BuiltValueField(wireName: 'timestamp')
  DateTime get timestamp;
  @BuiltValueField(wireName: 'open')
  String get open;
  @BuiltValueField(wireName: 'close')
  String get close;
  @BuiltValueField(wireName: 'min')
  String get min;
  @BuiltValueField(wireName: 'max')
  String get max;
  @BuiltValueField(wireName: 'volume')
  String get volume;
  @BuiltValueField(wireName: 'volumeQuote')
  String get volumeQuote;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HitBTCCandles.serializer, this));
  }

  static HitBTCCandles fromJson(String jsonString) {
    return serializers.deserializeWith(
        HitBTCCandles.serializer, json.decode(jsonString));
  }

  static Serializer<HitBTCCandles> get serializer => _$hitBTCCandlesSerializer;
}
