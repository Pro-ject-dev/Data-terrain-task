import 'package:dataterrain_task/constants/colors.dart';
import 'package:dataterrain_task/constants/texts.dart';
import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/custom_table.dart';
import 'package:flutter/material.dart';

import '../header_widget.dart';
import '../../../../constants/datas.dart';

class Card3{
    static Widget card3Content() {
    final ScrollController horizontalScrollController = ScrollController();
    return Container(
      decoration: BoxDecoration(
        color: cardbgcolor,
        borderRadius: BorderRadius.zero,
        boxShadow: [
          BoxShadow(
            color: shadowcolor,
              spreadRadius: 0.1,
            blurRadius: 0.1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0,right:16,top:16),
            child: HeaderWidget.header(lbltopprograms, null, lblviewall, true),
          ),
          CustomDataTable(
              columns: topprogramcolumns,
              rows: topprogramdata,
              scrollController: horizontalScrollController)
        ],
      ),
    );
  }

}