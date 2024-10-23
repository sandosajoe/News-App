import 'package:dio/dio.dart';
//import 'package:test_cases/models/ArticlesModel.dart';
import 'package:test_cases/models/FilteredNewsModel.dart';

class FilteredNewsServices {

  //FilteredNewsServices();
  // final int  id = 0;

  // getId(int id) {
  //   id = this.id;
  // }

  final Dio dio = Dio();

  Future<List<FilteredNewsModel>> getNews(id) async {
    String url;
    if (id == 1)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else if (id == 2)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else if (id == 3)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else if (id == 4)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else if (id == 5)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else if (id == 6)
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
    else
      url =
          "https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=c24d0be398cd48da967b41f1a8bb80a3";

    Response response = await dio.get(url
        //"https://newsapi.org/v2/everything?q=tesla&from=2024-02-25&sortBy=publishedAt&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        //"https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        //"https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        // "https://newsapi.org/v2/top-headlines?country=gb&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        //"https://newsapi.org/v2/top-headlines?country=jp&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3"
        );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<FilteredNewsModel> filteredNewsList = [];
    for (var i in articles) {
      if (i["urlToImage"] != null) {
        FilteredNewsModel articlesModel = FilteredNewsModel(
            image: i["urlToImage"],
            title: i["title"],
            subTitle: i["description"]);
        filteredNewsList.add(articlesModel);
      }
    }
    return filteredNewsList;
  }
}













// import 'package:dio/dio.dart';
// import 'package:test_cases/models/FilteredNewsModel.dart';

// class FilteredNewsServices {
//   final Dio dio = Dio();

//   Future<List<FilteredNewsModel>> getNews(int id) async {
//     String url;
//     if (id == 1)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else if (id == 2)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else if (id == 3)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else if (id == 4)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else if (id == 5)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else if (id == 6)
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=c24d0be398cd48da967b41f1a8bb80a3";
//     else
//       url =
//           "https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=c24d0be398cd48da967b41f1a8bb80a3";

//     Response response = await dio.get(url);
//     Map<String, dynamic> jsonData = response.data;
//     List<dynamic> articles = jsonData["articles"];
//     List<FilteredNewsModel> filteredNewsList = [];
//     for (var i in articles) {
//       if (i["urlToImage"] != null) {
//         FilteredNewsModel articlesModel = FilteredNewsModel(
//           image: i["urlToImage"],
//           title: i["title"],
//           subTitle: i["description"],
//         );
//         filteredNewsList.add(articlesModel);
//       }
//     }
//     return filteredNewsList;
//   }
// }
