import 'dart:core';
import 'package:flutter/material.dart';


class CircularProgressWidget extends StatelessWidget {
final String title;
final String value;
final double percentage;
final Color valuecolor;
final Color remainingcolor;

  const CircularProgressWidget({
    super.key,
    required this.title,
    required this.value,
    required this.percentage,
    required this.valuecolor,
    required this.remainingcolor
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          height: 150,
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: CircularProgressIndicator(
                    value: percentage,
                    strokeWidth: 20,
                    backgroundColor: remainingcolor,
                    valueColor: AlwaysStoppedAnimation<Color>(valuecolor),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              
                    Text(
                      title,
                      style:const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(height: 4),Text(
                      value,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
