import 'package:flutter/material.dart';
import 'package:newsapp/api/api.dart';
import 'package:newsapp/model/Sources_respons.dart';
import 'package:newsapp/widget/tab_container_widget.dart';
import 'package:newsapp/widget/tap_item_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Sources> ListSources = [
    Sources(name: "BBC News"),
    Sources(name: "BBC News"),
    Sources(name: "BBC News"),
    Sources(name: "BBC News"),
    Sources(name: "BBC News"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        title: const Text(
          "News App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff1E3A8A),
        centerTitle: true,
      ),
      body: FutureBuilder<SourcesRespons>(
        future: Api.getSource(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text(
                "Wrong",
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xff1E3A8A)),
            );
          }
          var listSources = snapshot.data?.sources ?? [];
          return TabContainerWidget(listsources: listSources);
        },
      ),
    );
  }
}
