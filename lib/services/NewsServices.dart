import 'package:dio/dio.dart';
import 'package:test_cases/models/ArticlesModel.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticlesModel>> getNews() async {
    Response response = await dio.get(
      //"https://newsapi.org/v2/everything?q=tesla&from=2024-02-25&sortBy=publishedAt&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
      //"https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
       "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
      // "https://newsapi.org/v2/top-headlines?country=gb&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
      //"https://newsapi.org/v2/top-headlines?country=jp&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticlesModel> articlesList = [];
    for (var i in articles) {
      if(i["urlToImage"]!=null){
        ArticlesModel articlesModel = ArticlesModel(
          image: i["urlToImage"], title: i["title"], subTitle: i["description"]);
      articlesList.add(articlesModel);
      }
      
    }
    return articlesList;
  }
}
