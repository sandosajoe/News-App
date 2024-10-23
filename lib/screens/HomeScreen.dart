import 'package:flutter/material.dart';
import 'package:test_cases/widgets/CategoriesListView.dart';
//import 'package:test_cases/widgets/CategoriesListView.dart';
import 'package:test_cases/widgets/NewsListView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: Color.fromARGB(164, 220, 237, 200),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            "News",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "Cloud",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 63, 134, 64)),
          ),
        ]),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
               
                 color:Colors.white ,
                border:Border.all(
                  color: Color.fromARGB(255, 63, 134, 64),
                  width: 1
                ) 
              ),
              margin: EdgeInsets.only(
                top: 25,
                bottom: 15,
                right: 6,
                left: 4
              ),
             
              width: double.infinity,
              height: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Center(
                  child: Text("Most Popular News Headlines Trending Now",style: TextStyle(fontSize: 17 , 
                  fontWeight: FontWeight.bold ,
                 // fontFamily: 'Ubuntu',
                  shadows: [
                     Shadow(
                          color: Color.fromARGB(98, 117, 115, 115).withOpacity(.6),
                          offset: Offset(3,4),
                          blurRadius: 5
                        )
                  ]
                  
                  ),
                  
                  ),
                ),
              )),
          ),
          NewsListView()
      
        ],
      )
    );
  }
}
