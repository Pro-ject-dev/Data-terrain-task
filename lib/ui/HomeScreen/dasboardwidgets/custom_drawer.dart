import 'package:dataterrain_task/constants/images.dart';
import 'package:dataterrain_task/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: appbarbgcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
               Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    lbladmin,
                    style: TextStyle(
                      color: primarycolor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 10,
                 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                color: appbarbgcolor,
                margin: const EdgeInsets.symmetric(horizontal: 26),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: primarycolor,
                          width: 5,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                                       profileImg,
                                  
                                      ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      lblprofilename,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      lbldesignation,
                      style: TextStyle(
                        fontSize: 14,
                        color:textcolor,
                      ),
                    ),
                const SizedBox(height: 8),
          
          
                    Divider(),
                           
                const SizedBox(height: 16),
                menu(calendarIcon, lblschedular),
                menu(timesheetIcon, lbltimesheet),
                menu(discussionsIcon, lbldiscussion),
                menu(reportsIcon, lblreports),
                menu(feedbackIcon, lblfeedback),
                menu(certificatesIcon, lblcertificates),
                menu(feedIcon, lblfeed),
                menu(analyticsIcon, lblanalytics),
                          ],
                        ),
              ),
             ],
              ),
        ),
      ),
    );
  }

  Widget menu(String icon, String title) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
            width: 22,
            height: 22,
            child: SvgPicture.asset(
              fit: BoxFit.fill,
            icon,
            
              ),
                ),
                const SizedBox(width: 24),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

