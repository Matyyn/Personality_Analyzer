import 'package:flutter/material.dart';
import 'package:personality_analyzer/Form.dart';
import 'package:personality_analyzer/Record_Tracker_CV.dart';
import 'package:personality_analyzer/Record_tracker.dart';
import 'package:personality_analyzer/forgot_password.dart';
import 'package:personality_analyzer/login.dart';
import 'package:personality_analyzer/register.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(primaryColor: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'CV': (context) => CV_Record(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'record': (context) => record_tracker(),
      'forgotPassword': (context) => forgot_password(),
      'form': (context) => form(),
    },
  ));
}
