import 'package:crypto_price_tracker/src/model/timeseries_price.dart';
import 'package:crypto_price_tracker/src/resources/repository.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';
import 'package:rxdart/rxdart.dart';

class PriceCandlesBloc {
  final String symbol;
  final _repository = Repository();
  final _priceCandlesFetcher = PublishSubject<List<HitBTCCandles>>();

  PriceCandlesBloc(this.symbol);

  Observable<List<HitBTCCandles>> get candles => _priceCandlesFetcher.stream;

  Future<Null> fetchCandles() async {
    List<HitBTCCandles> candles = await _repository.getPriceCandles(symbol);
    _priceCandlesFetcher.add(candles);
  }

  dispose() {
    _priceCandlesFetcher.close();
  }
}

var priceCandlesBlocMap = Map<String, PriceCandlesBloc>();