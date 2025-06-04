import 'package:flutter/material.dart';
import 'package:newsapp/model/Sources_respons.dart';
import 'package:newsapp/widget/tap_item_widget.dart';

class TabContainerWidget extends StatefulWidget {
  TabContainerWidget({super.key, required this.listsources});
  List<Sources> listsources;

  @override
  State<TabContainerWidget> createState() => _TabContainerWidgetState();
}

class _TabContainerWidgetState extends State<TabContainerWidget> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.listsources.length,
      child: TabBar(
        isScrollable: true,
        onTap: (index) {
          selectedindex = index;
          setState(() {});
        },
        tabs: widget.listsources
            .map(
              (Sources) => TapItemWidget(
                sources: Sources,
                isSelected:
                    selectedindex == widget.listsources.indexOf(Sources),
              ),
            )
            .toList(),
      ),
    );
  }
}
