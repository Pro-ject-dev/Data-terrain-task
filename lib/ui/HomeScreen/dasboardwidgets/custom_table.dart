import 'package:dataterrain_task/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final ScrollController? scrollController;

  const CustomDataTable({
    Key? key,
    required this.columns,
    required this.rows,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Scrollbar(
        
        controller: scrollController,
        thumbVisibility: true,
        thickness: 6,
        radius: Radius.circular(10),
        child: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          child: DataTableTheme(
            data: DataTableThemeData(
              headingRowColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) => tableheadercolor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom:12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: DataTable(
                
                  border: TableBorder.symmetric(
                    outside: BorderSide(color: tablelinecolor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  columns: columns,
                  rows: rows,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
