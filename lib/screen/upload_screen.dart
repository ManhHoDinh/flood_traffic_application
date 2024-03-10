import 'dart:ui';

import 'package:climscan/screen/detect_screen.dart';
import 'package:climscan/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatelessWidget {
  UploadScreen({super.key});

  Widget build(BuildContext context) {
    return Stack (
      children: [
        Image(
          image: AssetImage('assets/traffic.png')
        ),
        Positioned(
          top: 120,
          left: 0, 
          right: 0,
          child: Center (
            child: Text (
            "Traffic Detection",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration:TextDecoration.none
            ),
          ),
          )
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Center (
            child: Image (image: AssetImage('assets/back.png'),)
          )
        ),
        Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 500,
          decoration: BoxDecoration (
            borderRadius: BorderRadius.only( 
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            color: Colors.white,
          ),
          child: Column (
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: Text (
                "You need to upload",
                style: TextStyle (
                  color: Color(0xFF7FC7D9),
                  fontSize: 24,
                  fontWeight: FontWeight.w200,
                  decoration: TextDecoration.none
                  )
              ),),
              Text(
                "TRANSPORT PHOTO",
                style: TextStyle(
                  color: Color(0xFF7FC7D9),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              ),
              CustomIconButton(key: Key("1"), icon: Icons.camera_alt, label: "Take a photo", onPressed: () {}, top: 50, backgroundColor: Color(0xFF7FC7D9), foregroundColor: Colors.white,),
              Padding(
                padding: EdgeInsets.only(top: 30), 
                child: Text(
                  "__________or__________",
                  style: TextStyle (
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(40, 0, 0, 0),
                    decoration: TextDecoration.none,
                  ),
                ),),
              CustomIconButton(key: Key("2"), icon: Icons.photo_album_outlined, label: "Select a photo from your gallery", onPressed: () {}, top: 30, foregroundColor: Color(0xFF7FC7D9), backgroundColor: Colors.white,)
            ],
            )
        ),
      ),
      ],
    );
  }
}


