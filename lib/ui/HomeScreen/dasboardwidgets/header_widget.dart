import 'package:dataterrain_task/constants/images.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';


class HeaderWidget  { 
static Widget header(
      String title, IconData? icon, String buttontext, bool islink) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: LinearGradient(
                          colors: [cardheadertopcolor, cardheaderbottomcolor],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                islink
                    ? SizedBox(
                        width: 12,
                        height: 12,
                        child: Image.asset(
                          linkIcon,
                        ),
                      )
                    : Container()
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              decoration: BoxDecoration(
                color: cardbuttonbgcolor,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Row(
                children: [
                  Text(
                    buttontext,
                    style: TextStyle(
                      fontSize: 12,
                      color: primarycolor,
                    ),
                  ),
                  icon != null
                      ? Column(
                          children: [
                            SizedBox(width: 4),
                            Icon(
                              icon,
                              color: primarycolor,
                              size: 16,
                            ),
                          ],
                        )
                      : Container()
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Divider(),
      ],
    );
  }
}