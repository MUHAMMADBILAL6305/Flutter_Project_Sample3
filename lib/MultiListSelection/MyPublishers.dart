import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPublishers extends StatefulWidget {
  List publishers;

  MyPublishers(this.publishers, {Key key}) : super(key: key);

  @override
  _MyPublishersState createState() => _MyPublishersState();
}

class _MyPublishersState extends State<MyPublishers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: InkWell(
              onTap: () {
                setState(() {
                  widget.publishers[index].isSelected =
                      !widget.publishers[index].isSelected;
                });
              },
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: new AssetImage(
                                        widget.publishers[index].bgImageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Image.asset(
                                  widget.publishers[index].imageUrl,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              SizedBox(width: 24),
                              Text(widget.publishers[index].title),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.checkCircle,
                            size: 18,
                            color: widget.publishers[index].isSelected
                                ? Color(0xff209CEE)
                                : Color(0xffC4C4C4),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(thickness: 0.5, color: Color(0x16212449)),
                ],
              ),
            ),
          );
        },
        itemCount: widget.publishers.length,
      ),
    ));
  }
}
