import 'package:dataterrain_task/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/images.dart';
appbar(context)=>AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: primarycolor,
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Image.asset(
                profileImg,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              searchIcon,
              width: 28,
              height: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              notificationIcon,
              width: 28,
              height: 28,
            ),
            onPressed: () {},
          ),
          Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                menuIcon,
                width: 14,
                height: 14,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          )
        ],
      );
