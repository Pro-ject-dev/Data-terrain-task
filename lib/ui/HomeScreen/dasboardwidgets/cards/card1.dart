  import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/header_widget.dart';
import 'package:dataterrain_task/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class Card1{
static Widget card1Content(bool istablet) {
    return Container(
      height: istablet?506:null,
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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget.header(
              lblplannedprograms, null, lblviewall, false),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CountCard(programscount, lblprograms, countcard1bgcolor),
                const SizedBox(height: 8),
                CountCard(mentorscount, lblmentors, countcard2bgcolor),
                const SizedBox(height: 8),
                CountCard(menteescount, lblmentees, countcard3bgcolor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

   Widget CountCard(String value, String label, Color backgroundColor) {
    return Row(
      children: [
        Container(
          height: 76,
          width: 76,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:textcolor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Text(
          label,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
