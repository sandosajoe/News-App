import 'package:flutter/material.dart';
import 'package:test_cases/models/CategoryModel.dart';
//import 'package:test_cases/widgets/FilteredNewsListView.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "F",
            arguments: {"id": category.id, 'name': category.categoryName});
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        height: 90,
        width: 165,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Color.fromARGB(255, 65, 99, 67),
            width: 1.3,
          ),
          image: DecorationImage(
              image: AssetImage(category.image), opacity: .5, fit: BoxFit.fill),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white
               //color: Color.fromARGB(255, 33, 33, 33),
                //backgroundColor: const Color.fromARGB(56, 255, 255, 255)
                ),
          ),
        ),
      ),
    );
  }
}
