library serializers;

import 'package:built_value/serializer.dart';
import 'model/currency.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Currency,
])

final Serializers serializers = _$serializers;