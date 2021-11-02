import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gauge/flutter_gauge.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGuages extends StatefulWidget {
  const RadialGuages({Key key}) : super(key: key);

  @override
  _RadialGuagesState createState() => _RadialGuagesState();
}

class _RadialGuagesState extends State<RadialGuages> {
  double _guageCurrent = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radial Guages',),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Container(
                    child: SfRadialGauge(
                        title: GaugeTitle(
                            text: 'My Guage',
                            textStyle: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                            backgroundColor: Colors.red,
                            borderColor: Colors.blue,
                            borderWidth: 5),
                        backgroundColor: Colors.black12,
                        axes: <RadialAxis>[
                  RadialAxis(
                      minimum: 0,
                      maximum: 150,
                      onAxisTapped: (value) {
                        setState(() {
                          _guageCurrent = value;
                        });
                      },
                      backgroundImage: AssetImage('assets/newsNationBG.png'),
                      canRotateLabels: true,
                      showLastLabel: true,
                      ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 0, endValue: 30, color: Colors.green),
                        GaugeRange(
                            startValue: 30, endValue: 50, color: Colors.blue),
                        GaugeRange(
                            startValue: 50,
                            endValue: 100,
                            color: Colors.orange),
                        GaugeRange(
                            startValue: 100, endValue: 150, color: Colors.red)
                      ],
                      pointers: <GaugePointer>[
                        NeedlePointer(value: _guageCurrent),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Container(
                                child: Text(_guageCurrent.toInt().toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))),
                            angle: 90,
                            positionFactor: 0.5)
                      ])
                ]))),
            SizedBox(height: 20),
            Text('1',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                handSize: 25,
                index: 40.0,
                end: 100,
                number: Number.endAndCenterAndStart,
                circleColor: Color(0xFF47505F),
                secondsMarker: SecondsMarker.secondsAndMinute,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
            SizedBox(height: 20),
            Text('2',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                handSize: 30,
                width: 200,
                index: 65.0,
                fontFamily: "Iran",
                end: 100,
                number: Number.endAndCenterAndStart,
                secondsMarker: SecondsMarker.secondsAndMinute,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
            SizedBox(height: 20),
            Text('3',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                secondsMarker: SecondsMarker.none,
                hand: Hand.short,
                number: Number.none,
                width: 200,
                index: 38.0,
                fontFamily: "Iran",
                counterStyle: TextStyle(color: Colors.black, fontSize: 35),
                counterAlign: CounterAlign.center,
                isDecimal: false),
            SizedBox(height: 20),
            Text('4',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                handSize: 30,
                width: 200,
                index: 80.0,
                fontFamily: "Iran",
                end: 100,
                number: Number.endAndCenterAndStart,
                secondsMarker: SecondsMarker.secondsAndMinute,
                hand: Hand.short,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                )),
            SizedBox(height: 20),
            Text('5',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                handSize: 30,
                width: 200,
                index: 65.0,
                fontFamily: "Iran",
                end: 500,
                number: Number.endAndStart,
                secondsMarker: SecondsMarker.minutes,
                isCircle: false,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
            SizedBox(height: 20),
            Text('6',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            Container(
                color: Colors.black38,
                child: FlutterGauge(
                  inactiveColor: Colors.white38,
                  activeColor: Colors.white,
                  handSize: 30,
                  width: 200,
                  index: 65.0,
                  fontFamily: "Iran",
                  end: 400,
                  number: Number.none,
                  secondsMarker: SecondsMarker.minutes,
                  isCircle: false,
                  hand: Hand.none,
                  counterAlign: CounterAlign.center,
                  counterStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  isDecimal: false,
                )),
            SizedBox(height: 20),
            Text('7',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                width: 200,
                index: 67.3,
                fontFamily: "Iran",
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                ),
                numberInAndOut: NumberInAndOut.outside,
                counterAlign: CounterAlign.center,
                secondsMarker: SecondsMarker.secondsAndMinute,
                hand: Hand.short),
            SizedBox(height: 20),
            Text('8',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                index: 50.0,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
                widthCircle: 10,
                secondsMarker: SecondsMarker.none,
                number: Number.all),
            SizedBox(height: 20),
            Text('9',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
              index: 25.0,
              counterStyle: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
              secondsMarker: SecondsMarker.secondsAndMinute,
              number: Number.all,
              numberInAndOut: NumberInAndOut.outside,
            ),
            SizedBox(height: 20),
            Text('10',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(color: Colors.black),
            FlutterGauge(
                index: 50.0,
                width: 800,
                counterStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
                widthCircle: 10,
                secondsMarker: SecondsMarker.none,
                number: Number.all),
          ],
        ),
      ),
    );
  }
}
