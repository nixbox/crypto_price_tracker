import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:crypto_price_tracker/src/model/timeseries_price.dart';
import 'package:crypto_price_tracker/src/bloc/price_candles_bloc.dart';
import 'package:crypto_price_tracker/src/model/hitbtc_candles.dart';

class TimeSeriesPriceChart extends StatefulWidget {
  final String symbol;

  TimeSeriesPriceChart({Key key, this.symbol}) : super(key: key);

  @override
  TimeSeriesPriceChartState createState() {
    return new TimeSeriesPriceChartState();
  }
}

class TimeSeriesPriceChartState extends State<TimeSeriesPriceChart> {
  List<charts.Series<TimeSeriesPrice, DateTime>> seriesList;
  List<HitBTCCandles> candles;

  @override
  Widget build(BuildContext context) {
    priceCandlesBlocMap[widget.symbol] = PriceCandlesBloc(widget.symbol);
    priceCandlesBlocMap[widget.symbol].fetchCandles();
    return StreamBuilder(
      stream: priceCandlesBlocMap[widget.symbol].candles,
      builder: (BuildContext context,
          AsyncSnapshot<List<HitBTCCandles>> snapshot) {
        if (snapshot.hasData) {
          candles = snapshot.data;
          candlesToSeriesList();
          // Convert candles into seriesList
          return charts.TimeSeriesChart(
            seriesList,
            animate: true,
            dateTimeFactory: const charts.LocalDateTimeFactory(),
            domainAxis: charts.DateTimeAxisSpec(
              renderSpec: charts.NoneRenderSpec<DateTime>(),
              showAxisLine: false,
            ),
            primaryMeasureAxis: charts.NumericAxisSpec(
              renderSpec: charts.NoneRenderSpec<num>(),
              tickProviderSpec: charts.NumericEndPointsTickProviderSpec(),
              showAxisLine: false
            ),
          );
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else {
          return Row();
        }
//        } else {
//          return CircularProgressIndicator();
//        }
      },
    );
  }

  candlesToSeriesList() {
    final timeSeries = candles.map(
            (candle) => TimeSeriesPrice(
                candle.timestamp,
                double.parse(candle.close))).toList();

    seriesList = [
      charts.Series<TimeSeriesPrice, DateTime>(
        id: 'Price',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesPrice price, _) => price.time,
        measureFn: (TimeSeriesPrice price, _) => price.price,
        strokeWidthPxFn: (_, __) => 0.75,
        data: timeSeries,
      )
    ];
  }
}