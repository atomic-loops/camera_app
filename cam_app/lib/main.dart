import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import './camera_screen.dart';
import './camera_packages/camera_screen.dart';
import 'camera_packages/start_screen.dart';
// import 'pa';

void main() => runApp(CameraApp());

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        // debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: CamstartPage(),
          ),
        ));
  }
}
