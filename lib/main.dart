import 'package:flutter/material.dart';
import 'package:newsapp/Home_Screen.dart';
import 'package:newsapp/api/api.dart';
import 'package:newsapp/model/Sources_respons.dart';

Future<void> main() async {
  Api api = Api();
  SourcesRespons sourcesRespons = await api.getSource();
  print(sourcesRespons.sources!.length);
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
