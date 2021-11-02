import 'package:flutter/material.dart';
import 'package:pratice/MultiListSelection/Publishers.dart';
import 'DropDownDatePicker/DropDownDatePicker.dart';
import 'Guage/GaugeTypes.dart';
import 'Guage/RadialGuages.dart';

void main() {
  runApp(MyApp());
}

List<Publishers> publishers = [
  Publishers('All Category', 'assets/category.png',
      bgImageUrl: 'assets/categoryBG.png'),
  Publishers('News Nation', 'assets/newsNation.png',
      bgImageUrl: 'assets/newsNationBG.png'),
  Publishers('Times Of India', 'assets/timesOfIndia.png',
      bgImageUrl: 'assets/timesOfIndiaBG.png'),
  Publishers('News Nation', 'assets/newsNationIndia.png',
      bgImageUrl: 'assets/newsNationIndia.png'),
  Publishers('Gadgets Now', 'assets/gadgetsNews.png',
      bgImageUrl: 'assets/gadgetsNews.png'),
  Publishers('India Today', 'assets/indiaToday.png',
      bgImageUrl: 'assets/indiaToday.png'),
  Publishers('Swirister', 'assets/swirlster.png',
      bgImageUrl: 'assets/swirlsterBG.png'),
];

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.blue),
     ),
      home: Scaffold(
        body: GaugeTypes(),
      ),
    );
  }
}
