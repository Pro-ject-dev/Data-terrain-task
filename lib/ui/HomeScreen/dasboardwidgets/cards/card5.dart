import 'package:dataterrain_task/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../constants/colors.dart';
import '../circular_progress_card.dart';
import '../header_widget.dart';
import '../pointer_widget.dart';

class Card5{
  static   Widget card5Content() {
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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget.header(
                  lblprogramtypemetrics, Icons.arrow_drop_down, lblmonth, false),
              const SizedBox(height: 16),
              CircularProgressWidget(
                title: lbltotalprograms,
                percentage: 0.72,
                value: "94",
                valuecolor: circularprogress1color,
                remainingcolor: primarycolor,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PointerWidget.pointerdata(lblpremium, circularprogress1color),
                  const SizedBox(width: 16),
                  Text("40", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 16),

                  PointerWidget.pointerdata(lblfree, primarycolor),
                  const SizedBox(width: 16),
                  Text("54", style: TextStyle(fontWeight: FontWeight.bold)),

                ],
              ),
              


            ],
          ),
        );
  }
}