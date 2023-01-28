import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../model/news_model.dart';
import '../repositories/news_repo.dart';

class NewsController extends ControllerMVC {
  List<NewsModel> newsModelList = [];

  var globalkey = GlobalKey<ScaffoldState>();

  NewsController() {
    //getTodayNews();
  }

  getTodayNews() async {
    try {
      newsModelList = await getNewsFromAPI();
      setState(() {});
    } catch (e) {

    }
  }

  getTodayNewsAsStream() async {
    Stream<List<NewsModel>> dataStream = await getNewsFromAPIStream();
    dataStream.listen(
            (List<NewsModel> event) {
          setState(() {
            this.newsModelList = event;
          });

          print("getTodayNewsAsStream" + newsModelList.length.toString());
        },
        onDone: () {},
        onError: (e) {
          print("getTodayNewsAsStream " + e.toString());
        });
  }
}