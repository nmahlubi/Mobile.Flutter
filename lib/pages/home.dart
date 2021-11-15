import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color myColor = Color(0xff393b3f);
  Color pink = Color(0xffeb008b);
  Color lightBrowm = Color(0xffe5e5e5);

  Widget introSection() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Some info related to Luke',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa senectus ultricies tortor, porttitor in. . ',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Leaderboard'),
              style: TextButton.styleFrom(
                backgroundColor: pink,
                primary: Colors.white,
                minimumSize: Size(200, 40),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget productSection() {
    return Column(
      children: <Widget>[
        Container(
          color: lightBrowm,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Choose the right techniques that fit best for your use case',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ),
        Container(
          color: lightBrowm,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, '/sentiance_info')},
                  color: pink,
                  padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Motor",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Icon(Icons.car_rental, color: Colors.white),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () => {},
                  color: pink,
                  padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Health",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Icon(
                        Icons.health_and_safety,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Luke'),
        centerTitle: true,
        backgroundColor: myColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          introSection(),
          SizedBox(
            height: 30.0,
          ),
          productSection(),
        ],
      ),
    );
  }
}
