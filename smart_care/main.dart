// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_smartapp/Login.dart';
import 'package:my_smartapp/done.dart';
import 'package:my_smartapp/newlogic.dart';
import 'package:my_smartapp/nopass.dart';
import 'package:my_smartapp/surenew.dart';
import 'package:my_smartapp/surepass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: " /Login",
      routes: {
        '/': (context) => const Login(),
        '/Nopass': (context) => const Nopass(),
          '/Surepass': (context) => const Surepass(),
            '/DONE': (context) => const DONE(),
              '/Newlogic': (context) => const Newlogic(),
                '/Surenew': (context) => const Surenew(),
            
      },
    );
  }
}
