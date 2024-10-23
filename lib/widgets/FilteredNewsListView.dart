// import 'package:flutter/material.dart';
// import 'package:test_cases/models/FilteredNewsModel.dart';
// import 'package:test_cases/services/filteredNewsServices.dart';
// import 'package:test_cases/widgets/FilteredNewsCard.dart';

// class FilteredNewsListView extends StatefulWidget {
//   const FilteredNewsListView({super.key});

//   @override
//   State<FilteredNewsListView> createState() => _FilteredNewsListViewState();
// }

// class _FilteredNewsListViewState extends State<FilteredNewsListView> {
//   List<FilteredNewsModel> data = [];
//   @override
//   void initState() {
//     super.initState();
//     // TODO: implement initState
//     getNews();
//   }
// Future<void> getNews() async {
//   List<FilteredNewsModel> news = await FilteredNewsServices().getNews();
//   setState(() {
//     data = news;
//   });
// }
//   // Future<void> getNews() async {
//   //   FilteredNewsServices().getNews();
//   //   setState(() {});
//   // }

//   Widget build(BuildContext context) {
//     Map<String, dynamic> arguments =
//         ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//     final int id = arguments["id"];
//     final String name = arguments["name"];
//     FilteredNewsServices().getId(id);
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         centerTitle: true,
//         title: Row(mainAxisSize: MainAxisSize.min, children: [
//           Text(
//             "$name",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             "Cloud",
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 63, 134, 64)),
//           ),
//         ]),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return FilteredNewsCard(filteredNewsModel: data[index]);
//         },
//         itemCount: data.length,
//       ),
//     );
//   }
// }



// // class FilteredNewsListView extends StatefulWidget {
// //   final int id;
// //   final String name;

// //   const FilteredNewsListView({Key? key, required this.id, required this.name})
// //       : super(key: key);

// //   @override
// //   State<FilteredNewsListView> createState() => _FilteredNewsListViewState();
// // }

// // class _FilteredNewsListViewState extends State<FilteredNewsListView> {
// //   List<FilteredNewsModel> data = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     getNews(widget.id);
// //   }

// //   Future<void> getNews(int id) async {
// //     List<FilteredNewsModel> news = await FilteredNewsServices().getNews(id);
// //     setState(() {
// //       data = news;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         elevation: 0.0,
// //         centerTitle: true,
// //         title: Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Text(
// //               "${widget.name}",
// //               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
// //             ),
// //             Text(
// //               "Cloud",
// //               style: TextStyle(
// //                 fontSize: 25,
// //                 fontWeight: FontWeight.bold,
// //                 color: Color.fromARGB(255, 63, 134, 64),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: ListView.builder(
// //         itemBuilder: (context, index) {
// //           return FilteredNewsCard(filteredNewsModel: data[index]);
// //         },
// //         itemCount: data.length,
// //       ),
// //     );
// //   }
// // }












//==================================

// import 'package:flutter/material.dart';
// import 'package:test_cases/models/FilteredNewsModel.dart';
// import 'package:test_cases/services/filteredNewsServices.dart';
// import 'package:test_cases/widgets/FilteredNewsCard.dart';

// class FilteredNewsListView extends StatefulWidget {
//   const FilteredNewsListView({super.key});

//   @override
//   State<FilteredNewsListView> createState() => _FilteredNewsListViewState();
// }

// class _FilteredNewsListViewState extends State<FilteredNewsListView> {
//   List<FilteredNewsModel> data = [];
//   late Map<String, dynamic> arguments;

//   @override
//   void initState() {
//     super.initState();
//     arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//     getNews();
//   }

//   Future<void> getNews() async {
//     int id = arguments["id"];
//     List<FilteredNewsModel> news = await FilteredNewsServices().getNews(id);
//     setState(() {
//       data = news;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String name = arguments["name"];
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         centerTitle: true,
//         title: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               name,
//               style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//             ),
//            const Text(
//               "Cloud",
//               style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromARGB(255, 63, 134, 64),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return FilteredNewsCard(filteredNewsModel: data[index]);
//         },
//         itemCount: data.length,
//       ),
//     );
//   }
// }


//==========================================
import 'package:flutter/material.dart';
import 'package:test_cases/models/FilteredNewsModel.dart';
import 'package:test_cases/services/filteredNewsServices.dart';
import 'package:test_cases/widgets/FilteredNewsCard.dart';

class FilteredNewsListView extends StatefulWidget {
  const FilteredNewsListView({Key? key});

  @override
  State<FilteredNewsListView> createState() => _FilteredNewsListViewState();
}

class _FilteredNewsListViewState extends State<FilteredNewsListView> {
  List<FilteredNewsModel> data = [];
  late Map<String, dynamic> arguments;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    arguments = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    getNews();
  }

  Future<void> getNews() async {
    int id = arguments["id"];
    List<FilteredNewsModel> news = await FilteredNewsServices().getNews(id);
    setState(() {
      data = news;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String name = arguments["name"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
           const Text(
              "Cloud",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 63, 134, 64),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FilteredNewsCard(filteredNewsModel: data[index]);
        },
        itemCount: data.length,
      ),
    );
  }
}
