import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Offset> offset;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    offset = Tween<Offset>(begin: Offset(0.0,-1.0), end: Offset(0.0, 0.0))
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Color.fromRGBO(32, 156, 238, 0.5),
                        child: Image.asset(
                          'assets/images/Accoun1ProfileAvatar.png',
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 18),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: 'Darrell Chan    ',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff1e1a15),
                                ),
                                children: [
                                  WidgetSpan(
                                    child: InkWell(
                                      child: Container(
                                        height: 18,
                                        width: 18,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff209CEE), width: 1.5),
                                            borderRadius: BorderRadius.circular(30)),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 9,
                                          color: Color(0xff209CEE),
                                        ),
                                      ),
                                      onTap: (){
                                        Drawer(
                                          child: Container(
                                            height: 50,
                                            width: double.infinity,
                                            color: Colors.cyan,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'abc123@example.com',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'poppins',
                                fontSize: 12,
                                color: Color(0xff1E1A15)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SlideTransition(
                    position: offset,
                    child: Container(
                      height: 96,
                      width: double.infinity,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 155,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(child: Text('Login',style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.white
                              ),)),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              height: 60,
                              width: 155,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Color(0xff979797)
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(child: Text('Sign Up',style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.black87
                              ),)),
                            )
                          ],),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: RaisedButton(
                child: Text('Show / Hide'),
                onPressed: () {
                  switch (controller.status) {
                    case AnimationStatus.dismissed:
                      controller.forward();
                      break;
                    case AnimationStatus.completed:
                      controller.reverse();
                      break;
                    default:
                  }
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}