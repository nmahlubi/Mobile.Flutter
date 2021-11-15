import 'package:flutter/material.dart';
import 'package:uluntu_v2/pages/home.dart';
import 'package:uluntu_v2/pages/loading.dart';
import 'package:uluntu_v2/pages/register.dart';
import 'package:uluntu_v2/pages/sentiance_info.dart';
import 'package:uluntu_v2/pages/verify_otp.dart';

void main() => runApp(MaterialApp(initialRoute: '/register', routes: {
      '/': (context) => Loading(),
      '/register': (context) => Register(),
      '/verify_otp': (context) => VerifyOtp(),
      '/home': (context) => Home(),
      '/sentiance_info': (context) => SentianceInfo(),
    }));
