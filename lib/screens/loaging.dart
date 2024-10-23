
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:test_cases/screens/oops.dart';


class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class  _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>oops()));
    });
  }

  Widget build(BuildContext context) {




    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/photo_2024-04-27_09-57-06 (3).jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.green[200],
              ),  // A circular progress indicator
              SizedBox(height: 16.0),  // Adds some vertical spacing
              Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}