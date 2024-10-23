import 'package:flutter/material.dart';
import 'package:test_cases/models/ArticlesModel.dart';
import 'package:test_cases/screens/loaging.dart';

//import 'package:test_cases/screens/oops.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(boxShadow: [
        const BoxShadow(
            color: Color.fromARGB(72, 208, 204, 204),
            offset: Offset(5, 7),
            blurRadius: 8,
            blurStyle: BlurStyle.solid)
      ]),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articlesModel.image!,
                height: 168,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    "images/photo_2024-04-29_08-41-50.jpg",
                    height: 170,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  );
                },
              )),
          SizedBox(
            height: 8.3,
          ),
          InkWell(
            onTap: () {
              //Navigator.pushNamed(context, "oops");
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                // return oops();
                return LoadingPage();
              }));
            },
            child: Text(
              articlesModel.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 5.5,
          ),
          Text(
            //articlesModel.subTitle!,
            "${(articlesModel.subTitle != null) ? articlesModel.subTitle! : "we can't display more details for You right now, please come back here again lately."}",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.grey[700]),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
