import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:video_player/video_player.dart';
// import './CameraScreen.dart';
// import 'package:flutter_camera_app/camera_packages/camera_screen.dart';
// import 'camera_screen.dart';
import 'package:cam_app/camera_packages/camera_screen.dart';

// class Camstart extends StatefulWidget {}

class CamstartPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Hello There! Let\'s Capture a Moment!!',
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          child: Icon(
            Icons.camera,
            color: Colors.red,
          ),
          // shape: null,
          //  BoxShape.circle,
          // visualDensity: null,
          onPressed: () => CameraScreen(),
        )
      ],
    );
  }
}

class CamstartPage extends StatefulWidget {
  @override
  _CamstartPageState createState() => _CamstartPageState();
}

class _CamstartPageState extends State<CamstartPage> {
  void startCamera() {
    setState(() {
      CameraScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Hello There! Let\'s Capture a Moment!!',
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: RaisedButton(
            padding: EdgeInsets.all(5.0),
            elevation: 5.0,
            color: Colors.red,
            shape: new CircleBorder(),
            hoverElevation: 30.0,
            child: Icon(
              Icons.camera,
              color: Colors.grey[350],
              size: 35.0,
            ),
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CameraScreen();
            })),
          ),
        )
      ],
    );
  }
}
