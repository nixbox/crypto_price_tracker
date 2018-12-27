import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class CurrenciesBloc {
  final _repository = Repository();
  final _currenciesFetcher = PublishSubject<List<Currency>>();

  Observable<List<Currency>> get currencies => _currenciesFetcher.stream;

  Future<Null> fetchCurrencies() async {
    List<Currency> currencies = await _repository.getCurrencies();
    _currenciesFetcher.add(currencies);
  }

  dispose() {
    _currenciesFetcher.close();
  }
}

final currenciesBloc = CurrenciesBloc();