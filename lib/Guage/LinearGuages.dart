import 'package:flutter/material.dart';
import 'package:flutter_gauge/flutter_gauge.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LinearGuages extends StatefulWidget {
  const LinearGuages({Key key}) : super(key: key);

  @override
  _LinearGuagesState createState() => _LinearGuagesState();
}

class _LinearGuagesState extends State<LinearGuages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Linear Guages',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            FlutterGauge(
                backgroundColor: Colors.yellow,
                width: 200,
                activeColor: Colors.blue,
                hand: Hand.short,
                handColor: Colors.red,
                inactiveColor: Colors.teal,
                indicatorColor: Colors.yellow,
                isCircle: true,
                isDecimal: true,
                widthCircle: 12,
                handSize: 50,
                index: 30.0,
                end: 100,
                number: Number.all,
                circleColor: Color(0xFF47505F),
                secondsMarker: SecondsMarker.all,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ))
          ],
        ),
      ),
    );
  }
}
