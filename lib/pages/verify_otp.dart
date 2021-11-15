import 'package:flutter/material.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  Color myColor = Color(0xff393b3f);
  Color pink = Color(0xffeb008b);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: myColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/uluntu-logo-300.png'),
              height: 110.0,
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              'Verification',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Please insert your otp number that was sent to your email',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter OTP number'),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Verify'),
              style: TextButton.styleFrom(
                backgroundColor: pink,
                primary: Colors.white,
                minimumSize: Size(150, 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}
