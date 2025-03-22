import 'package:dataterrain_task/constants/colors.dart';
import 'package:flutter/material.dart';
var columnStyle =TextStyle(fontWeight: FontWeight.bold,fontSize: 16);

List<DataColumn> topprogramcolumns = [
   DataColumn(label: Text('Name' ,style: columnStyle,)),
 DataColumn(label: Text('Category',style: columnStyle)),
 DataColumn(label: Text('Created By',style: columnStyle)),
   DataColumn(label: Text('Rating',style: columnStyle)),
];


List<DataColumn> topmentorcolumns = [
  DataColumn(label: Text('Name',style: columnStyle)),
   DataColumn(label: Text('Program',style: columnStyle)),
   DataColumn(label: Text('Email',style: columnStyle)),
   DataColumn(label: Text('Rating',style: columnStyle)),
];

List<DataRow> topmentordata = [
  DataRow(cells: [
    DataCell(FlexibleText('John Kennedy')),
    DataCell(FlexibleText('Teaching Program')),
    DataCell(FlexibleText('johnk@gmail.com')),
    DataCell(_buildRatingCell(4.9)),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Jenifer Smith')),
    DataCell(FlexibleText('Teaching Program')),
    DataCell(FlexibleText('jenny@gmail.com')),
    DataCell(_buildRatingCell(4.8)),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Thomas Shelby')),
    DataCell(FlexibleText('Teaching Program')),
    DataCell(FlexibleText('thomas@gmail.com')),
    DataCell(_buildRatingCell(4.7)),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('John Miller')),
    DataCell(FlexibleText('Teaching Program')),
    DataCell(FlexibleText('miller@gmail.com')),
    DataCell(_buildRatingCell(4.5)),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Jason Morgan')),
    DataCell(FlexibleText('Teaching Program')),
    DataCell(FlexibleText('jason@gmail.com')),
    DataCell(_buildRatingCell(4.8)),
  ]),
];

List<DataRow> topprogramdata = [
  DataRow(cells: [
    DataCell(FlexibleText('Leadership Growth')),
    DataCell(FlexibleText('Engineer')),
    DataCell(FlexibleText('(202) 555-0191')),
    DataCell(FlexibleText('contact@gmail.com')),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Tech Mentorship')),
    DataCell(FlexibleText('Doctor')),
    DataCell(FlexibleText('(303) 555-0123')),
    DataCell(FlexibleText('support@gmail.com')),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Career Guidance')),
    DataCell(FlexibleText('Artist')),
    DataCell(FlexibleText('(404) 555-0145')),
    DataCell(FlexibleText('info@gmail.com')),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Business Skills')),
    DataCell(FlexibleText('Chef')),
    DataCell(FlexibleText('(505) 555-0167')),
    DataCell(FlexibleText('hello@gmail.com')),
  ]),
  DataRow(cells: [
    DataCell(FlexibleText('Soft Skills')),
    DataCell(FlexibleText('Teacher')),
    DataCell(FlexibleText('(606) 555-0189')),
    DataCell(FlexibleText('team@gmail.com')),
  ]),
];




Widget FlexibleText(String text) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        child: Text(
          text,
          softWrap: false, 
          overflow: TextOverflow.visible, 
        ),
      ),
    ],
  );
}

Widget _buildRatingCell(double rating) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: ratingcolor),
      SizedBox(width: 4),
      Flexible(
        child: Text(
          rating.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: primarycolor,fontSize: 14),
          softWrap: false,
          overflow: TextOverflow.visible,
        ),
      ),
    ],
  );
}
