library serializers;

import 'package:built_value/serializer.dart';
import 'package:crypto_price_tracker/src/model/currency.dart';
part 'package:crypto_price_tracker/src/serializers.g.dart';

@SerializersFor(const [
  Currency,
])

final Serializers serializers = _$serializers;