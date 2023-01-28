import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/news_model.dart';

Future<List<NewsModel>> getNewsFromAPI() async {
  var data = await http.get(Uri.parse("Keep your URL"));

  var jsonData = json.decode(data.body);

  return (jsonData['articles'] as List)
      .map((e) => NewsModel.fromJSON(e))
      .toList();
}

Future<Stream<List<NewsModel>>> getNewsFromAPIStream() async {
  try {
    var streamData = http.get(Uri.parse("Keep your URL")).asStream();

    return streamData.map((event) {
      var jsonData = json.decode(event.body);

      return (jsonData['articles'] as List)
          .map((e) => NewsModel.fromJSON(e))
          .toList();
    });
  } catch (e) {
    return Stream.value([]);
  }
}