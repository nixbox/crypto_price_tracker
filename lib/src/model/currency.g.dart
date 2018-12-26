// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Currency> _$currencySerializer = new _$CurrencySerializer();

class _$CurrencySerializer implements StructuredSerializer<Currency> {
  @override
  final Iterable<Type> types = const [Currency, _$Currency];
  @override
  final String wireName = 'Currency';

  @override
  Iterable serialize(Serializers serializers, Currency object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'symbol',
      serializers.serialize(object.symbol,
          specifiedType: const FullType(String)),
      'rank',
      serializers.serialize(object.rank, specifiedType: const FullType(String)),
      'price_usd',
      serializers.serialize(object.price_usd,
          specifiedType: const FullType(String)),
      'price_btc',
      serializers.serialize(object.price_btc,
          specifiedType: const FullType(String)),
      'market_cap_usd',
      serializers.serialize(object.market_cap_usd,
          specifiedType: const FullType(String)),
      'available_supply',
      serializers.serialize(object.available_supply,
          specifiedType: const FullType(String)),
      'total_supply',
      serializers.serialize(object.total_supply,
          specifiedType: const FullType(String)),
      'percent_change_1h',
      serializers.serialize(object.percent_change_1h,
          specifiedType: const FullType(String)),
      'percent_change_24h',
      serializers.serialize(object.percent_change_24h,
          specifiedType: const FullType(String)),
      'percent_change_7d',
      serializers.serialize(object.percent_change_7d,
          specifiedType: const FullType(String)),
      'last_updated',
      serializers.serialize(object.last_updated,
          specifiedType: const FullType(String)),
    ];
    if (object.volume_usd_24h != null) {
      result
        ..add('volume_usd_24h')
        ..add(serializers.serialize(object.volume_usd_24h,
            specifiedType: const FullType(String)));
    }
    if (object.max_supply != null) {
      result
        ..add('max_supply')
        ..add(serializers.serialize(object.max_supply,
            specifiedType: const FullType(String)));
    }
    if (object.price_eur != null) {
      result
        ..add('price_eur')
        ..add(serializers.serialize(object.price_eur,
            specifiedType: const FullType(String)));
    }
    if (object.volume_eur_24h != null) {
      result
        ..add('volume_eur_24h')
        ..add(serializers.serialize(object.volume_eur_24h,
            specifiedType: const FullType(String)));
    }
    if (object.market_cap_eur != null) {
      result
        ..add('market_cap_eur')
        ..add(serializers.serialize(object.market_cap_eur,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Currency deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrencyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'symbol':
          result.symbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rank':
          result.rank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_usd':
          result.price_usd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_btc':
          result.price_btc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volume_usd_24h':
          result.volume_usd_24h = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'market_cap_usd':
          result.market_cap_usd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'available_supply':
          result.available_supply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_supply':
          result.total_supply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'max_supply':
          result.max_supply = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'percent_change_1h':
          result.percent_change_1h = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'percent_change_24h':
          result.percent_change_24h = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'percent_change_7d':
          result.percent_change_7d = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_updated':
          result.last_updated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price_eur':
          result.price_eur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volume_eur_24h':
          result.volume_eur_24h = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'market_cap_eur':
          result.market_cap_eur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Currency extends Currency {
  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String rank;
  @override
  final String price_usd;
  @override
  final String price_btc;
  @override
  final String volume_usd_24h;
  @override
  final String market_cap_usd;
  @override
  final String available_supply;
  @override
  final String total_supply;
  @override
  final String max_supply;
  @override
  final String percent_change_1h;
  @override
  final String percent_change_24h;
  @override
  final String percent_change_7d;
  @override
  final String last_updated;
  @override
  final String price_eur;
  @override
  final String volume_eur_24h;
  @override
  final String market_cap_eur;

  factory _$Currency([void updates(CurrencyBuilder b)]) =>
      (new CurrencyBuilder()..update(updates)).build();

  _$Currency._(
      {this.id,
      this.name,
      this.symbol,
      this.rank,
      this.price_usd,
      this.price_btc,
      this.volume_usd_24h,
      this.market_cap_usd,
      this.available_supply,
      this.total_supply,
      this.max_supply,
      this.percent_change_1h,
      this.percent_change_24h,
      this.percent_change_7d,
      this.last_updated,
      this.price_eur,
      this.volume_eur_24h,
      this.market_cap_eur})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Currency', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Currency', 'name');
    }
    if (symbol == null) {
      throw new BuiltValueNullFieldError('Currency', 'symbol');
    }
    if (rank == null) {
      throw new BuiltValueNullFieldError('Currency', 'rank');
    }
    if (price_usd == null) {
      throw new BuiltValueNullFieldError('Currency', 'price_usd');
    }
    if (price_btc == null) {
      throw new BuiltValueNullFieldError('Currency', 'price_btc');
    }
    if (market_cap_usd == null) {
      throw new BuiltValueNullFieldError('Currency', 'market_cap_usd');
    }
    if (available_supply == null) {
      throw new BuiltValueNullFieldError('Currency', 'available_supply');
    }
    if (total_supply == null) {
      throw new BuiltValueNullFieldError('Currency', 'total_supply');
    }
    if (percent_change_1h == null) {
      throw new BuiltValueNullFieldError('Currency', 'percent_change_1h');
    }
    if (percent_change_24h == null) {
      throw new BuiltValueNullFieldError('Currency', 'percent_change_24h');
    }
    if (percent_change_7d == null) {
      throw new BuiltValueNullFieldError('Currency', 'percent_change_7d');
    }
    if (last_updated == null) {
      throw new BuiltValueNullFieldError('Currency', 'last_updated');
    }
  }

  @override
  Currency rebuild(void updates(CurrencyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBuilder toBuilder() => new CurrencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Currency &&
        id == other.id &&
        name == other.name &&
        symbol == other.symbol &&
        rank == other.rank &&
        price_usd == other.price_usd &&
        price_btc == other.price_btc &&
        volume_usd_24h == other.volume_usd_24h &&
        market_cap_usd == other.market_cap_usd &&
        available_supply == other.available_supply &&
        total_supply == other.total_supply &&
        max_supply == other.max_supply &&
        percent_change_1h == other.percent_change_1h &&
        percent_change_24h == other.percent_change_24h &&
        percent_change_7d == other.percent_change_7d &&
        last_updated == other.last_updated &&
        price_eur == other.price_eur &&
        volume_eur_24h == other.volume_eur_24h &&
        market_cap_eur == other.market_cap_eur;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(0,
                                                                            id.hashCode),
                                                                        name.hashCode),
                                                                    symbol.hashCode),
                                                                rank.hashCode),
                                                            price_usd.hashCode),
                                                        price_btc.hashCode),
                                                    volume_usd_24h.hashCode),
                                                market_cap_usd.hashCode),
                                            available_supply.hashCode),
                                        total_supply.hashCode),
                                    max_supply.hashCode),
                                percent_change_1h.hashCode),
                            percent_change_24h.hashCode),
                        percent_change_7d.hashCode),
                    last_updated.hashCode),
                price_eur.hashCode),
            volume_eur_24h.hashCode),
        market_cap_eur.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Currency')
          ..add('id', id)
          ..add('name', name)
          ..add('symbol', symbol)
          ..add('rank', rank)
          ..add('price_usd', price_usd)
          ..add('price_btc', price_btc)
          ..add('volume_usd_24h', volume_usd_24h)
          ..add('market_cap_usd', market_cap_usd)
          ..add('available_supply', available_supply)
          ..add('total_supply', total_supply)
          ..add('max_supply', max_supply)
          ..add('percent_change_1h', percent_change_1h)
          ..add('percent_change_24h', percent_change_24h)
          ..add('percent_change_7d', percent_change_7d)
          ..add('last_updated', last_updated)
          ..add('price_eur', price_eur)
          ..add('volume_eur_24h', volume_eur_24h)
          ..add('market_cap_eur', market_cap_eur))
        .toString();
  }
}

class CurrencyBuilder implements Builder<Currency, CurrencyBuilder> {
  _$Currency _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _symbol;
  String get symbol => _$this._symbol;
  set symbol(String symbol) => _$this._symbol = symbol;

  String _rank;
  String get rank => _$this._rank;
  set rank(String rank) => _$this._rank = rank;

  String _price_usd;
  String get price_usd => _$this._price_usd;
  set price_usd(String price_usd) => _$this._price_usd = price_usd;

  String _price_btc;
  String get price_btc => _$this._price_btc;
  set price_btc(String price_btc) => _$this._price_btc = price_btc;

  String _volume_usd_24h;
  String get volume_usd_24h => _$this._volume_usd_24h;
  set volume_usd_24h(String volume_usd_24h) =>
      _$this._volume_usd_24h = volume_usd_24h;

  String _market_cap_usd;
  String get market_cap_usd => _$this._market_cap_usd;
  set market_cap_usd(String market_cap_usd) =>
      _$this._market_cap_usd = market_cap_usd;

  String _available_supply;
  String get available_supply => _$this._available_supply;
  set available_supply(String available_supply) =>
      _$this._available_supply = available_supply;

  String _total_supply;
  String get total_supply => _$this._total_supply;
  set total_supply(String total_supply) => _$this._total_supply = total_supply;

  String _max_supply;
  String get max_supply => _$this._max_supply;
  set max_supply(String max_supply) => _$this._max_supply = max_supply;

  String _percent_change_1h;
  String get percent_change_1h => _$this._percent_change_1h;
  set percent_change_1h(String percent_change_1h) =>
      _$this._percent_change_1h = percent_change_1h;

  String _percent_change_24h;
  String get percent_change_24h => _$this._percent_change_24h;
  set percent_change_24h(String percent_change_24h) =>
      _$this._percent_change_24h = percent_change_24h;

  String _percent_change_7d;
  String get percent_change_7d => _$this._percent_change_7d;
  set percent_change_7d(String percent_change_7d) =>
      _$this._percent_change_7d = percent_change_7d;

  String _last_updated;
  String get last_updated => _$this._last_updated;
  set last_updated(String last_updated) => _$this._last_updated = last_updated;

  String _price_eur;
  String get price_eur => _$this._price_eur;
  set price_eur(String price_eur) => _$this._price_eur = price_eur;

  String _volume_eur_24h;
  String get volume_eur_24h => _$this._volume_eur_24h;
  set volume_eur_24h(String volume_eur_24h) =>
      _$this._volume_eur_24h = volume_eur_24h;

  String _market_cap_eur;
  String get market_cap_eur => _$this._market_cap_eur;
  set market_cap_eur(String market_cap_eur) =>
      _$this._market_cap_eur = market_cap_eur;

  CurrencyBuilder();

  CurrencyBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _symbol = _$v.symbol;
      _rank = _$v.rank;
      _price_usd = _$v.price_usd;
      _price_btc = _$v.price_btc;
      _volume_usd_24h = _$v.volume_usd_24h;
      _market_cap_usd = _$v.market_cap_usd;
      _available_supply = _$v.available_supply;
      _total_supply = _$v.total_supply;
      _max_supply = _$v.max_supply;
      _percent_change_1h = _$v.percent_change_1h;
      _percent_change_24h = _$v.percent_change_24h;
      _percent_change_7d = _$v.percent_change_7d;
      _last_updated = _$v.last_updated;
      _price_eur = _$v.price_eur;
      _volume_eur_24h = _$v.volume_eur_24h;
      _market_cap_eur = _$v.market_cap_eur;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Currency other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Currency;
  }

  @override
  void update(void updates(CurrencyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Currency build() {
    final _$result = _$v ??
        new _$Currency._(
            id: id,
            name: name,
            symbol: symbol,
            rank: rank,
            price_usd: price_usd,
            price_btc: price_btc,
            volume_usd_24h: volume_usd_24h,
            market_cap_usd: market_cap_usd,
            available_supply: available_supply,
            total_supply: total_supply,
            max_supply: max_supply,
            percent_change_1h: percent_change_1h,
            percent_change_24h: percent_change_24h,
            percent_change_7d: percent_change_7d,
            last_updated: last_updated,
            price_eur: price_eur,
            volume_eur_24h: volume_eur_24h,
            market_cap_eur: market_cap_eur);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
