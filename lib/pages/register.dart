import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  //Color myColor = Color(0xff123456);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Color myColor = Color(0xff393b3f);
  Color pink = Color(0xffeb008b);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: myColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/uluntu-logo-300.png'),
                height: 110.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Welcome to Uluntu',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Some catchy phrase can come here',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Name'),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    style: TextStyle(height: 0.6),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text('ID Number'),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    style: TextStyle(height: 0.6),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text('Cell Number'),
                  SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    style: TextStyle(height: 0.6),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/verify_otp');
                    },
                    child: const Text('Register'),
                    style: TextButton.styleFrom(
                      backgroundColor: pink,
                      primary: Colors.white,
                      minimumSize: Size(double.infinity, 40),
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
