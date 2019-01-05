// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hitbtc_ticker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HitBTCTicker> _$hitBTCTickerSerializer =
    new _$HitBTCTickerSerializer();

class _$HitBTCTickerSerializer implements StructuredSerializer<HitBTCTicker> {
  @override
  final Iterable<Type> types = const [HitBTCTicker, _$HitBTCTicker];
  @override
  final String wireName = 'HitBTCTicker';

  @override
  Iterable serialize(Serializers serializers, HitBTCTicker object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'ask',
      serializers.serialize(object.ask, specifiedType: const FullType(String)),
      'bid',
      serializers.serialize(object.bid, specifiedType: const FullType(String)),
      'last',
      serializers.serialize(object.last, specifiedType: const FullType(String)),
      'open',
      serializers.serialize(object.open, specifiedType: const FullType(String)),
      'low',
      serializers.serialize(object.low, specifiedType: const FullType(String)),
      'high',
      serializers.serialize(object.high, specifiedType: const FullType(String)),
      'volume',
      serializers.serialize(object.volume,
          specifiedType: const FullType(String)),
      'volumeQuote',
      serializers.serialize(object.volumeQuote,
          specifiedType: const FullType(String)),
      'timestamp',
      serializers.serialize(object.timestamp,
          specifiedType: const FullType(DateTime)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HitBTCTicker deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HitBTCTickerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ask':
          result.ask = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bid':
          result.bid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open':
          result.open = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'low':
          result.low = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'high':
          result.high = serializers.deserialize(value,
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
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HitBTCTicker extends HitBTCTicker {
  @override
  final String ask;
  @override
  final String bid;
  @override
  final String last;
  @override
  final String open;
  @override
  final String low;
  @override
  final String high;
  @override
  final String volume;
  @override
  final String volumeQuote;
  @override
  final DateTime timestamp;
  @override
  final String symbol;

  factory _$HitBTCTicker([void updates(HitBTCTickerBuilder b)]) =>
      (new HitBTCTickerBuilder()..update(updates)).build();

  _$HitBTCTicker._(
      {this.ask,
      this.bid,
      this.last,
      this.open,
      this.low,
      this.high,
      this.volume,
      this.volumeQuote,
      this.timestamp,
      this.symbol})
      : super._() {
    if (ask == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'ask');
    }
    if (bid == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'bid');
    }
    if (last == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'last');
    }
    if (open == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'open');
    }
    if (low == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'low');
    }
    if (high == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'high');
    }
    if (volume == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'volume');
    }
    if (volumeQuote == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'volumeQuote');
    }
    if (timestamp == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'timestamp');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('HitBTCTicker', 'symbol');
    }
  }

  @override
  HitBTCTicker rebuild(void updates(HitBTCTickerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HitBTCTickerBuilder toBuilder() => new HitBTCTickerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HitBTCTicker &&
        ask == other.ask &&
        bid == other.bid &&
        last == other.last &&
        open == other.open &&
        low == other.low &&
        high == other.high &&
        volume == other.volume &&
        volumeQuote == other.volumeQuote &&
        timestamp == other.timestamp &&
        symbol == other.symbol;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, ask.hashCode), bid.hashCode),
                                    last.hashCode),
                                open.hashCode),
                            low.hashCode),
                        high.hashCode),
                    volume.hashCode),
                volumeQuote.hashCode),
            timestamp.hashCode),
        symbol.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HitBTCTicker')
          ..add('ask', ask)
          ..add('bid', bid)
          ..add('last', last)
          ..add('open', open)
          ..add('low', low)
          ..add('high', high)
          ..add('volume', volume)
          ..add('volumeQuote', volumeQuote)
          ..add('timestamp', timestamp)
          ..add('symbol', symbol))
        .toString();
  }
}

class HitBTCTickerBuilder
    implements Builder<HitBTCTicker, HitBTCTickerBuilder> {
  _$HitBTCTicker _$v;

  String _ask;
  String get ask => _$this._ask;
  set ask(String ask) => _$this._ask = ask;

  String _bid;
  String get bid => _$this._bid;
  set bid(String bid) => _$this._bid = bid;

  String _last;
  String get last => _$this._last;
  set last(String last) => _$this._last = last;

  String _open;
  String get open => _$this._open;
  set open(String open) => _$this._open = open;

  String _low;
  String get low => _$this._low;
  set low(String low) => _$this._low = low;

  String _high;
  String get high => _$this._high;
  set high(String high) => _$this._high = high;

  String _volume;
  String get volume => _$this._volume;
  set volume(String volume) => _$this._volume = volume;

  String _volumeQuote;
  String get volumeQuote => _$this._volumeQuote;
  set volumeQuote(String volumeQuote) => _$this._volumeQuote = volumeQuote;

  DateTime _timestamp;
  DateTime get timestamp => _$this._timestamp;
  set timestamp(DateTime timestamp) => _$this._timestamp = timestamp;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  HitBTCTickerBuilder();

  HitBTCTickerBuilder get _$this {
    if (_$v != null) {
      _ask = _$v.ask;
      _bid = _$v.bid;
      _last = _$v.last;
      _open = _$v.open;
      _low = _$v.low;
      _high = _$v.high;
      _volume = _$v.volume;
      _volumeQuote = _$v.volumeQuote;
      _timestamp = _$v.timestamp;
      _symbol = _$v.symbol;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HitBTCTicker other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HitBTCTicker;
  }

  @override
  void update(void updates(HitBTCTickerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HitBTCTicker build() {
    final _$result = _$v ??
        new _$HitBTCTicker._(
            ask: ask,
            bid: bid,
            last: last,
            open: open,
            low: low,
            high: high,
            volume: volume,
            volumeQuote: volumeQuote,
            timestamp: timestamp,
            symbol: symbol);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
