import 'package:flutter/material.dart';
//import 'package:test_cases/screens/HomeScreen.dart';

class oops extends StatelessWidget {
  const oops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/photo_2024-04-27_09-57-06 (3).jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        // child: InkWell(
        //     onTap: () {
        //       Navigator.push(context, MaterialPageRoute(builder: (_) {
        //         return HomeScreen();
        //       }));
        //     },
        //     child: Text("gg")),

        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Container(
              //margin: EdgeInsets.only(),
              width: double.infinity,
              height: 180,
              child: Image.asset(
                "images/photo_2024-04-29_09-51-54-removebg-preview.png",
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              "The service you are attempting to access is currently not permitted or authorized according to prevailing regulations or policies. As a responsible organization, we are committed to adhering to legal and ethical guidelines, which include complying with all applicable laws and regulations."
              //,softWrap: true,
              //textAlign: TextAlign.left,
              ,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
            margin: EdgeInsets.only(left: 100, right: 100),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.lightGreen[200],
              //color: other ? Colors.brown : Color.fromARGB(255, 66, 52, 52),
              //color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color.fromARGB(
                    148, 35, 30, 30), // Set the border color here
                width: 1.5, // Set the border width here
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "oops");
                // Navigator.push(context, MaterialPageRoute(builder: (_) {
                //   return HomeScreen();
                // }));
              },
              child: Center(
                child: Text(
                  "go back",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(148, 35, 30, 30)),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
