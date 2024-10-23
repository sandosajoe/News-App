import 'package:flutter/material.dart';
import 'package:test_cases/models/CategoryModel.dart';
import 'package:test_cases/widgets/CategoryCard.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({super.key});

  final List<CategoryModel> categories =  [
    
    
    
    CategoryModel(image: "images/businessjpg.jpg", categoryName: "Business",id: 1),
    CategoryModel(image: "images/technology.jpg", categoryName: "Technology",id: 2),
    
    CategoryModel(image: "images/entertainment.jpg", categoryName: "Entertainment",id: 3),
    CategoryModel(image: "images/science.jpg", categoryName: "Science",id: 4),
    CategoryModel(image: "images/healthjpg.jpg", categoryName: "Health",id: 5),
    CategoryModel(image: "images/photo_2024-04-29_08-42-01.jpg", categoryName: "General",id: 6),
    CategoryModel(image: "images/sports.jpg", categoryName: "Sports",id: 7),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return categoryCard(category: categories[index]);
        },
      ),
    );
  }
}
