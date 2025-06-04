import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapp/model/News_Response.dart';
import 'package:newsapp/model/Sources_respons.dart';

class Api {
  static Future<SourcesRespons> getSource() async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources", {
      "apiKey": "f2a0be9f61c548cb9a51fa6a00d7d830",
    });

    var response = await http.get(url);
    String responseBody = response.body;
    Map<String, dynamic> json = jsonDecode(responseBody);
    return SourcesRespons.fromJson(json);
  }

  // https://newsapi.org/v2/everything?q=bitcoin&apiKey=f2a0be9f61c548cb9a51fa6a00d7d830
  static Future<NewsResponse> getNews() async {
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "apikey": "f2a0be9f61c548cb9a51fa6a00d7d830",
    });
    var response = await http.get(url);
    var responseBody = response.statusCode;
    var json = jsonDecode(responseBody as String);
    return NewsResponse.fromJson(json);
  }
}
