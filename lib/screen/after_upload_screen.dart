import 'dart:ui';

import 'package:climscan/screen/detect_screen.dart';
import 'package:climscan/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class AfterUploadScreen extends StatelessWidget {
  AfterUploadScreen({super.key});

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
                padding: EdgeInsets.only(top: 50, bottom: 10),
                child: Text (
                "UPLOADED PHOTO",
                style: TextStyle (
                  color: Color(0xFF7FC7D9),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                  )
              ),),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 50),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage('assets/upload_image.png'),
                    fit: BoxFit.fill)
                  )
              ),
              Center (
                child: Padding (
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  child: SizedBox (
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFF7FC7D9)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,)), 
                      padding: MaterialStateProperty.all(EdgeInsets.only(left: 26)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
                      alignment: Alignment.center,
                    ),
                    child: Text("Detect", textAlign: TextAlign.center,),
                  ),
                )),
              ),
            ],
            )
        ),
      ),
      ],
    );
  }
}


