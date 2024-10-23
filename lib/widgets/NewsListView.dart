import 'package:flutter/material.dart';
import 'package:test_cases/models/ArticlesModel.dart';
import 'package:test_cases/services/NewsServices.dart';
//import 'package:test_cases/widgets/CategoryCard.dart';
import 'package:test_cases/widgets/NewsCard.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    data = await NewsServices().getNews();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return NewsCard(articlesModel: data[index]);
    }, childCount: data.length));
  }
}
