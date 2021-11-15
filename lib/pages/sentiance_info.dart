import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SentianceInfo extends StatefulWidget {
  @override
  _SentianceInfoState createState() => _SentianceInfoState();
}

class _SentianceInfoState extends State<SentianceInfo> {
  Color myColor = Color(0xff393b3f);
  Color pink = Color(0xffeb008b);
  Color darkPink = Color(0xffaf066a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Sentiance Info'),
        backgroundColor: myColor,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              GFAccordion(
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                collapsedTitleBackgroundColor: pink,
                expandedTitleBackgroundColor: darkPink,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                title: 'Driver event analysis',
                content: 'Some info can come here',
              ),
              GFAccordion(
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                collapsedTitleBackgroundColor: pink,
                expandedTitleBackgroundColor: darkPink,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                title: 'Distracted driver detection',
                content: 'Some info can come here',
              ),
              GFAccordion(
                textStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                collapsedTitleBackgroundColor: pink,
                expandedTitleBackgroundColor: darkPink,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                title: 'Driver score',
                content: 'Some info can come here',
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Text(
                  'Recommended Insurance deals for you',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 350,
                color: myColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Budget',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Monthly payment: R400',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 350,
                color: myColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Miway',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Monthly payment: R400',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 350,
                color: myColor,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Outsurance',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Monthly payment: R400',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
