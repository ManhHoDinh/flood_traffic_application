import 'package:climscan/core/helper/AssetHelper.dart';
import 'package:flutter/material.dart';
import 'package:climscan/core/constrants/color.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO\nCLIMASCAN',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Try out all of our wonderful services',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildServiceCard(
                      title: 'Traffic Detection',
                      description:
                          'You will get all objections which are detected from your uploaded photo ',
                      sourceImage: AssetsHelper.detectionSource,
                      destinationSource: AssetsHelper.detectionSource,
                      buttonText: 'Try it',
                      onPressed: () {
                        print("hello");
                      }),
                  _buildServiceCard(
                      title: 'Weather Generation',
                      description:
                          'You will get a photo which has flood based on your uploaded photo',
                      sourceImage: AssetsHelper.detectionSource,
                      destinationSource: AssetsHelper.detectionSource,
                      buttonText: 'Try it',
                      onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCard(
      {required String title,
      required String description,
      required String sourceImage,
      required VoidCallback onPressed,
      required String destinationSource,
      required String buttonText}) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: ColorHelper.primaryColor),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              color: ColorHelper.primaryColor,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Image.asset(
                  AssetsHelper.detectionSource,
                  cacheHeight: 200,
                ),
              ),
               SizedBox(width: 20.0),
         
              Expanded(
                child: Image.asset(
                  AssetsHelper.detectionSource,
                  width: 150.0,
                  cacheHeight: 200,
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
