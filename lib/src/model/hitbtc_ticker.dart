import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:crypto_price_tracker/src/serializers.dart';

part 'hitbtc_ticker.g.dart';

abstract class HitBTCTicker
    implements Built<HitBTCTicker, HitBTCTickerBuilder> {
  HitBTCTicker._();

  factory HitBTCTicker([updates(HitBTCTickerBuilder b)]) = _$HitBTCTicker;

  @BuiltValueField(wireName: 'ask')
  String get ask;
  @BuiltValueField(wireName: 'bid')
  String get bid;
  @BuiltValueField(wireName: 'last')
  String get last;
  @BuiltValueField(wireName: 'open')
  String get open;
  @BuiltValueField(wireName: 'low')
  String get low;
  @BuiltValueField(wireName: 'high')
  String get high;
  @BuiltValueField(wireName: 'volume')
  String get volume;
  @BuiltValueField(wireName: 'volumeQuote')
  String get volumeQuote;
  @BuiltValueField(wireName: 'timestamp')
  DateTime get timestamp;
  @BuiltValueField(wireName: 'symbol')
  String get symbol;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HitBTCTicker.serializer, this));
  }

  static HitBTCTicker fromJson(String jsonString) {
    return serializers.deserializeWith(
        HitBTCTicker.serializer, json.decode(jsonString));
  }

  static Serializer<HitBTCTicker> get serializer => _$hitBTCTickerSerializer;
}
