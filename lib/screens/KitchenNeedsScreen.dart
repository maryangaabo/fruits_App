import 'package:fluits_app/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KitchenNeedsScreen extends StatelessWidget {
  const KitchenNeedsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(72),
              bottomRight: Radius.circular(72),
            ),
            color: Color(0XFF76cea8),
          ),
          child: Center(
            child: Image.asset(
              "assets/image-removebg-preview.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 4,
      ),
      Container(
        margin: EdgeInsets.all(10),
        color: Colors.white,
        width: 500,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: 'All your \n',
                    style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // First color
                    ),
                  ),
                  TextSpan(
                    text: 'Kitchen Needs,\n',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF449e91), // Second color
                    ),
                  ),
                  TextSpan(
                    text: 'are Here',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Return to first color
                    ),
                  )
                ])),
              ),
              SizedBox(height: 16),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sit facilisis cum duis bibendum tempus aliquam sed.'
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                'Sit facilisis cum duis bibendum tempus aliquam sed.',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 34),
              Container(
                width: 180,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF449e91),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  child: Text(
                    'Get start now',
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
