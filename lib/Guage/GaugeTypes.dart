import 'package:flutter/material.dart';
import 'package:pratice/Guage/RadialGuages.dart';

import 'LinearGuages.dart';

class GaugeTypes extends StatelessWidget {
  const GaugeTypes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gauge Types'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RadialGuages()));
                    },
                    child: Text('Radial Guages'))),
            Center(
                child: ElevatedButton(
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LinearGuages()));}, child: Text('Linear Guages'))),
            SizedBox(height: MediaQuery.of(context).size.height),
            Center(
                child: ElevatedButton(
                    onPressed: () {}, child: Text('ElevatedButton'))),
            MaterialButton(
              onPressed: () {},
              child: Text('MaterialButton'),
            ),
            FlatButton(onPressed: () {}, child: Text('FlatButton')),
            OutlineButton(onPressed: () {}, child: Text('OutlineButton')),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            RaisedButton(onPressed: () {}, child: Text('RaisedButton')),
            BackButton(),
            CloseButton(),
            FloatingActionButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  'FloatingActionButton',
                  style: TextStyle(fontSize: 10),
                ))),
            TextButton(onPressed: () {}, child: Text('TextButton')),
          ],
        ),
      ),
    );
  }
}
