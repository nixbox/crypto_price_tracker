// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hitbtc_candles.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HitBTCCandles> _$hitBTCCandlesSerializer =
    new _$HitBTCCandlesSerializer();

class _$HitBTCCandlesSerializer implements StructuredSerializer<HitBTCCandles> {
  @override
  final Iterable<Type> types = const [HitBTCCandles, _$HitBTCCandles];
  @override
  final String wireName = 'HitBTCCandles';

  @override
  Iterable serialize(Serializers serializers, HitBTCCandles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(DateTime)),
      'open',
      serializers.serialize(object.open, specifiedType: const FullType(String)),
      'close',
      serializers.serialize(object.close,
          specifiedType: const FullType(String)),
      'min',
      serializers.serialize(object.min, specifiedType: const FullType(String)),
      'max',
      serializers.serialize(object.max, specifiedType: const FullType(String)),
      'volume',
      serializers.serialize(object.volume,
          specifiedType: const FullType(String)),
      'volumeQuote',
      serializers.serialize(object.volumeQuote,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HitBTCCandles deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HitBTCCandlesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'close':
          result.close = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'max':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volume':
          result.volume = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volumeQuote':
          result.volumeQuote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HitBTCCandles extends HitBTCCandles {
  @override
  final DateTime timestamp;
  @override
  final String open;
  @override
  final String close;
  @override
  final String min;
  @override
  final String max;
  @override
  final String volume;
  @override
  final String volumeQuote;

  factory _$HitBTCCandles([void updates(HitBTCCandlesBuilder b)]) =>
      (new HitBTCCandlesBuilder()..update(updates)).build();

  _$HitBTCCandles._(
      {this.timestamp,
      this.open,
      this.close,
      this.min,
      this.max,
      this.volume,
      this.volumeQuote})
      : super._() {
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'timestamp');
    }
    if (open == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'open');
    }
    if (close == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'close');
    }
    if (min == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'min');
    }
    if (max == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'max');
    }
    if (volume == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'volume');
    }
    if (volumeQuote == null) {
      throw new BuiltValueNullFieldError('HitBTCCandles', 'volumeQuote');
    }
  }

  @override
  HitBTCCandles rebuild(void updates(HitBTCCandlesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HitBTCCandlesBuilder toBuilder() => new HitBTCCandlesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HitBTCCandles &&
        timestamp == other.timestamp &&
        open == other.open &&
        close == other.close &&
        min == other.min &&
        max == other.max &&
        volume == other.volume &&
        volumeQuote == other.volumeQuote;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, timestamp.hashCode), open.hashCode),
                        close.hashCode),
                    min.hashCode),
                max.hashCode),
            volume.hashCode),
        volumeQuote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HitBTCCandles')
          ..add('timestamp', timestamp)
          ..add('open', open)
          ..add('close', close)
          ..add('min', min)
          ..add('max', max)
          ..add('volume', volume)
          ..add('volumeQuote', volumeQuote))
        .toString();
  }
}

class HitBTCCandlesBuilder
    implements Builder<HitBTCCandles, HitBTCCandlesBuilder> {
  _$HitBTCCandles _$v;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  String _open;
  String get open => _$this._open;
  set open(String open) => _$this._open = open;

  String _close;
  String get close => _$this._close;
  set close(String close) => _$this._close = close;

  String _min;
  String get min => _$this._min;
  set min(String min) => _$this._min = min;

  String _max;
  String get max => _$this._max;
  set max(String max) => _$this._max = max;

  String _volume;
  String get volume => _$this._volume;
  set volume(String volume) => _$this._volume = volume;

  String _volumeQuote;
  String get volumeQuote => _$this._volumeQuote;
  set volumeQuote(String volumeQuote) => _$this._volumeQuote = volumeQuote;

  HitBTCCandlesBuilder();

  HitBTCCandlesBuilder get _$this {
    if (_$v != null) {
      _timestamp = _$v.timestamp;
      _open = _$v.open;
      _close = _$v.close;
      _min = _$v.min;
      _max = _$v.max;
      _volume = _$v.volume;
      _volumeQuote = _$v.volumeQuote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HitBTCCandles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HitBTCCandles;
  }

  @override
  void update(void updates(HitBTCCandlesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HitBTCCandles build() {
    final _$result = _$v ??
        new _$HitBTCCandles._(
            timestamp: timestamp,
            open: open,
            close: close,
            min: min,
            max: max,
            volume: volume,
            volumeQuote: volumeQuote);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
