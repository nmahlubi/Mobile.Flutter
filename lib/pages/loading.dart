import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  Color myColor = Color(0xff393b3f);
  Color pink = Color(0xffeb008b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRipple(
          color: pink,
          size: 100.0,
        ),
      ),
    );
  }
}
