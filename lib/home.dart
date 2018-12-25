import 'dart:async';
import 'dart:convert';

import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model/currency.dart';
import 'serializers.dart';

final String url = "https://api.coinmarketcap.com/v1/ticker/?limit=8";
final String iconBaseUrl =
    "https://raw.githubusercontent.com/atomiclabs/cryptocurrency-icons/master/128/color/";
final standardSerializers = (serializers.toBuilder()..addPlugin(
    StandardJsonPlugin())).build();

class PriceTracker extends StatefulWidget {
  PriceTracker({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _PriceTrackerState createState() => _PriceTrackerState();
}

class _PriceTrackerState extends State<PriceTracker> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: CurrencyList(),
    );
  }
}

Future<List<Currency>> fetchCurrencies(http.Client client) async {
  final response = await client.get(url);
  return compute(parseCurrencies, response.body);
}

List<Currency> parseCurrencies(String responseBody) {
  final parsed = json.decode(responseBody);
  print(parsed);
  return parsed.map<Currency>((currency) {
    return standardSerializers.deserializeWith(Currency.serializer, currency);
  }).toList();
}

class CurrencyList extends StatefulWidget {
  CurrencyList({Key key}) : super(key: key);

  @override
  CurrencyListState createState() {
    return new CurrencyListState();
  }
}

class CurrencyListState extends State<CurrencyList> {
  List<Currency> currencies = List<Currency>();

  @override
  initState() {
    super.initState();
    _refresh();
  }

  Future<Null> _refresh() {
    return fetchCurrencies(http.Client()).then((_currencies) {
      setState(() => currencies = _currencies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          var name = currencies[index].name;
          var price = double.parse(currencies[index].price_usd).toStringAsFixed(2);
          var gain = double.parse(currencies[index].percent_change_24h) > 0;
          var percentChange = currencies[index].percent_change_24h;
          var iconUrl = iconBaseUrl + currencies[index].symbol.toLowerCase() + ".png";
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
