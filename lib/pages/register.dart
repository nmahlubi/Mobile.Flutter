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

  var _autovalidate = false;
  var _name;
  var _surname;
  var _email;

  bool isCheckedTc = false;
  bool isCheckedPopia = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: myColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
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
                    autovalidate: _autovalidate,
                    key: _formKey,
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
                            onSaved: (value) {
                              _name = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text('Surname'),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                            style: TextStyle(height: 0.6),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            onSaved: (value) {
                              _surname = value;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            }),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text('Email'),
                        SizedBox(
                          height: 5.0,
                        ),
                        TextFormField(
                          validator: (val) => val!.isEmpty || !val.contains("@")
                              ? "enter a valid eamil"
                              : null,
                          style: TextStyle(height: 0.6),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          onSaved: (value) {
                            _email = value;
                          },
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Accept terms and conditions'),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isCheckedTc,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedTc = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('Accept POPIA'),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isCheckedPopia,
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedPopia = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/verify_otp');
                            // if (_formKey.currentState!.validate()) {
                            //   _formKey.currentState!.save();
                            //   print(_name);
                            //   print(_password);
                            //   print(_confirmPassword);
                            // } else {
                            //   setState(() {
                            //     _autovalidate = true;
                            //   });
                            // }
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
          ),
        ));
  }
}
