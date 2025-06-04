import 'package:flutter/material.dart';
import 'package:newsapp/model/Sources_respons.dart';

class TapItemWidget extends StatelessWidget {
  TapItemWidget({super.key, required this.sources, required this.isSelected});
  Sources sources;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xff1E3A8A), width: 2),
        color: isSelected ? const Color(0xff1E3A8A) : Colors.transparent,
      ),
      child: Text(
        sources.name ?? "",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: isSelected ? const Color(0xff202020) : Colors.white,
        ),
      ),
    );
  }
}
