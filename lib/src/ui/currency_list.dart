import 'package:flutter/material.dart';
import 'package:crypto_price_tracker/src/model/currency.dart';
import 'package:crypto_price_tracker/src/bloc/currencies_bloc.dart';

class CurrencyList extends StatefulWidget {
  CurrencyList({Key key}) : super(key: key);

  @override
  CurrencyListState createState() {
    return new CurrencyListState();
  }
}

class CurrencyListState extends State<CurrencyList> {
  final String _iconBaseUrl =
      "https://raw.githubusercontent.com/atomiclabs/cryptocurrency-icons/master/128/color/";

  List<Currency> currencies = List<Currency>();

  @override
  initState() {
    super.initState();
    _refresh();
  }

  Future<Null> _refresh() {
//    return fetchCurrencies(http.Client()).then((_currencies) {
//      setState(() => currencies = _currencies);
//    });
    return currenciesBloc.fetchCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    currenciesBloc.fetchCurrencies();
    return StreamBuilder(
        stream: currenciesBloc.currencies,
        builder: (BuildContext context, AsyncSnapshot<List<Currency>> snapshot) {
          if (snapshot.hasData) {
            return _buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        }
    );
  }

  Widget _buildList(AsyncSnapshot<List<Currency>> snapshot) {
    currencies = snapshot.data;
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          var name = currencies[index].name;
          var price = double.parse(currencies[index].price_usd).toStringAsFixed(2);
          var gain = double.parse(currencies[index].percent_change_24h) > 0;
          var percentChange = currencies[index].percent_change_24h;
          var iconUrl = _iconBaseUrl + currencies[index].symbol.toLowerCase() + ".png";
          var priceTextStyle;
          if (gain) {
            priceTextStyle = TextStyle(fontSize: 20, color: Colors.green);
          } else {
            priceTextStyle = TextStyle(fontSize: 20, color: Colors.red);
          }

          return InkWell(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                  padding: new EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.network(iconUrl),
                      ),
                      Expanded(
                        child: Container(
                          padding: new EdgeInsets.only(left: 10),
                          child: Text(name, style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(price, style: priceTextStyle, textAlign: TextAlign.right),
                          Row(
                            children: <Widget>[
                              gain ? Icon(Icons.arrow_drop_up) :
                              Icon(Icons.arrow_drop_down),
                              DefaultTextStyle.merge(
                                  style: priceTextStyle,
                                  child: Text(percentChange,
                                    style: TextStyle(fontSize: 10),
//                              textAlign: TextAlign.right,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  )
              )
          );
        },
      ),
    );
  }
}
