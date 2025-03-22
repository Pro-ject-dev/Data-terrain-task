import 'package:dataterrain_task/constants/colors.dart';
import 'package:dataterrain_task/constants/texts.dart';
import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/custom_drawer.dart';
import 'package:dataterrain_task/constants/images.dart';
import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/cards/card3.dart';
import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/cards/card4.dart';
import 'package:dataterrain_task/ui/HomeScreen/dasboardwidgets/cards/card5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dasboardwidgets/appbar_widget.dart';
import 'dasboardwidgets/cards/card1.dart';
import 'dasboardwidgets/cards/card2.dart';
import 'dasboardwidgets/cards/card6.dart';

class ResponsiveDashboard extends StatefulWidget {
  const ResponsiveDashboard({Key? key}) : super(key: key);

  @override
  State<ResponsiveDashboard> createState() => _ResponsiveDashboardState();
}

class _ResponsiveDashboardState extends State<ResponsiveDashboard> {
  var isTablet = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    isTablet = screenWidth > 600;

    return Scaffold(
      appBar: appbar(context),
      endDrawerEnableOpenDragGesture: true,
      endDrawer: AdminDrawer(),
      body: _selectedIndex == 0 ? dashboardScreen() : comingSoonScreen(),
      bottomNavigationBar: bottomnavigation(),
    );
  }

  BottomNavigationBar bottomnavigation() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            dashboardIcon,
            width: 24,
            height: 24,
            color: _selectedIndex==0? primarycolor:unselectednavationbarcolor,
          ),
          label: lbldasboard,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            programsIcon,
            width: 24,
            height: 24,
            color: _selectedIndex==1? primarycolor:unselectednavationbarcolor,
          ),
          label:lblprograms,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            usersIcon,
            width: 24,
            height: 24,
            color: _selectedIndex==2? primarycolor:unselectednavationbarcolor,
          ),
          label: lblusers,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            requestsIcon,
            width: 24,
            height: 24,
            color: _selectedIndex==3? primarycolor:unselectednavationbarcolor,
          ),
          label: lblrequests,
        ),
      ],
    );
  }

  Widget dashboardScreen() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isTablet ? TabletLayout() : MobileLayout(),
      ),
    );
  }

  Widget comingSoonScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            
            child: 
              SvgPicture.asset(
                commingsoonIcon,
                width: 24,
                height: 24
            ),
          ),
          const SizedBox(height: 10),
          Text(
            lblcomingsoon,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget MobileLayout() {
    return Column(
      children: [
        Card1.card1Content(isTablet),
        const SizedBox(height: 16),
        Card2.card2Content(),
        const SizedBox(height: 16),
        Card3.card3Content(),
        const SizedBox(height: 16),
        Card4.card4Content(),
        const SizedBox(height: 16),
        Card5.card5Content(),
        const SizedBox(height: 16),
        Card6.card6Content(),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget TabletLayout() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Card1.card1Content(isTablet),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Card2.card2Content(),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Card3.card3Content(),
        const SizedBox(height: 16),
        Card4.card4Content(),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Card5.card5Content(),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 1,
              child: Card6.card6Content(),
            ),
          ],
        ),
      ],
    );
  }
}
