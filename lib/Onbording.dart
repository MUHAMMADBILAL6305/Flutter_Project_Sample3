import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExplanationData {
  final String title;
  final String description;
  final String localImageSrc;
  final Color backgroundColor;

  ExplanationData(
      {this.title, this.description, this.localImageSrc, this.backgroundColor});
}

final List<ExplanationData> data = [
  ExplanationData(
      description:
          "Labore do ex cillum fugiat anim nulla pariatur est. Elit laboris eiusmod ex occaecat do ea officia esse culpa.",
      title: "A Day at the Park",
      localImageSrc: "assets/onboarding1.png",
      backgroundColor: Colors.orange[500]),
  ExplanationData(
      description:
          "Sit ullamco anim deserunt aliquip mollit id. Occaecat labore laboris magna reprehenderit sint in sunt ea.",
      title: "Playing Fetch",
      localImageSrc: "assets/onboarding2.png",
      backgroundColor: Colors.orange[700]),
  ExplanationData(
      description:
          "Eiusmod aliqua laboris duis eiusmod ea ea commodo dolore. Ullamco nulla nostrud et officia.",
      title: "Relaxing Walk",
      localImageSrc: "assets/onboarding3.png",
      backgroundColor: Colors.green[800]),
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> /*with ChangeNotifier*/ {
  final _controller = PageController();

  int _currentIndex = 0;

  // OpenPainter _painter = OpenPainter(3, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: SafeArea(
              child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = data.length - 1;
                      });
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                      textAlign: TextAlign.right,
                    )),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: PageView(
                              scrollDirection: Axis.horizontal,
                              controller: _controller,
                              onPageChanged: (value) {
                                // _painter.changeIndex(value);
                                setState(() {
                                  _currentIndex = value;
                                });
                                // notifyListeners();
                              },
                              children: data
                                  .map((e) => ExplanationPage(data: e))
                                  .toList())),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            // margin: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(data.length,
                              (index) => createCircle(index: index)),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          child: Container(
                            height: 60,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Color(0xff27272E),
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(39, 39, 46, 0.12),
                                      blurRadius: 40,
                                      offset: Offset(0.0, 20.0))
                                ]),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/message 1.png'),
                                  SizedBox(width: 15),
                                  Text(
                                    'Continue with Email',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90,
                              height: 60,
                              margin: EdgeInsets.only(bottom: 50),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.only(bottom: 2),
                                icon: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Color(0xff4385F5),
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('facebook pressed');
                                },
                              ),
                            ),
                            Container(
                                width: 90,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Image.asset(
                                  'assets/icons/google.png',
                                  height: 30,
                                  width: 30,
                                )),
                            Container(
                              width: 90,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.only(bottom: 2),
                                icon: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Color(0xff55ACEE),
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('twitter pressed');
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          ))),
    );
  }

  createCircle({int index}) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.only(right: 4),
        height: 5,
        width: _currentIndex == index ? 15 : 5,
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(3)));
  }
}

class ExplanationPage extends StatelessWidget {
  final ExplanationData data;

  ExplanationPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 24),
            child: Image.asset(data.localImageSrc,
                height: MediaQuery.of(context).size.height * 0.33,
                alignment: Alignment.center)),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.title,
              style: TextStyle(
                color: Color(0xff1A1A1A),
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
                backgroundColor: Colors.red,
                fontSize: 24,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

class BottomButtons extends StatelessWidget {
  final int currentIndex;
  final int dataLength;
  final PageController controller;

  const BottomButtons(
      {Key key, this.currentIndex, this.dataLength, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: currentIndex == dataLength - 1
          ? [
              Expanded(
                child: ConstrainedBox(
                    constraints: new BoxConstraints(
                      maxHeight: 70.0,
                    ),
                    child: FlatButton(
                        onPressed: () {},
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.1,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        // add this
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide.none),
                        child: Container(
                            child: Text(
                          "Get started",
                          style: Theme.of(context).textTheme.button,
                        )))),
              )
            ]
          : [
              FlatButton(
                minWidth: 0.0,
                onPressed: () {
                  controller.jumpToPage(dataLength - 1);
                },
                child: Text(
                  "Skip",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Row(
                children: [
                  FlatButton(
                    padding: EdgeInsets.zero,
                    minWidth: 0.0,
                    onPressed: () {
                      controller.nextPage(
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut);
                    },
                    child: Text(
                      "Next",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ))
                ],
              )
            ],
    );
  }
}
