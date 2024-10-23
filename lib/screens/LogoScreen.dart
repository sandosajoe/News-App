import 'package:flutter/material.dart';
import 'dart:async';

import 'package:test_cases/screens/HomeScreen.dart';


class logoScreen extends StatefulWidget {
  const logoScreen({super.key});

  @override
  State<logoScreen> createState() => _logoScreenState();
}

class _logoScreenState extends State<logoScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(Duration(seconds: 11), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(108, 214, 209, 209),
      body: Center(
        child: Container(
               decoration: BoxDecoration(
    image: DecorationImage(
      image: AssetImage("images/photo_2024-04-29_09-11-56.jpg"),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.white.withOpacity(1), BlendMode.dstATop),
    ),
  ),
          //margin: EdgeInsets.only(top: 310),
          alignment: Alignment.center,
          //al
          //height: 20,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 295,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "News",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: const Color.fromARGB(255, 117, 115, 115).withOpacity(.9),
                        offset: Offset(6,8),
                        blurRadius: 9
                      )
                    ],
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Cloud",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        color: const Color.fromARGB(255, 117, 115, 115).withOpacity(.9),
                        offset: Offset(6,8),
                        blurRadius: 9
                      )
                    ],
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 63, 134, 64)),
                ),
              ],
            ),
            Text(
              " .. العـالم بيـن يديـك",
              style: TextStyle(
                shadows: [
                      Shadow(
                        color: const Color.fromARGB(255, 117, 115, 115).withOpacity(.9),
                        offset: Offset(6,8),
                        blurRadius: 9
                      )
                    ],
                fontWeight: FontWeight.bold, 
                fontSize: 24),
            )
          ]),
        ),
      ),
    );
  }
}
