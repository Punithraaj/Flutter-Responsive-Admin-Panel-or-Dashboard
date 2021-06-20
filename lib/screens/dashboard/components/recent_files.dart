import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/models/recent_file.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_admin_dashboard_panel/utils/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  "Recent Files",
                  style:TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('See More'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(15),
                  shape: StadiumBorder(),
                  side: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
              )
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ],
              rows: List.generate(demoRecentFiles.length,
                 (index) => recentFileDataRow(demoRecentFiles[index],index)
                 ),
            )
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo, int index){
  return DataRow(
    color: MaterialStateColor.resolveWith((states) {
                return index % 2 != 0 ? Colors.deepPurple.shade50 : Colors.white54; //make tha magic!
              }),
    cells: [DataCell(
      Row(
        children: [
          SvgPicture.asset(fileInfo.icon!,height: 30, width: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title!, style:TextStyle(fontWeight: FontWeight.w600,fontSize: 12)),
          ),
        ],
      ),
    ),
    DataCell(Text(fileInfo.date!,style:TextStyle(fontSize: 12))),
    DataCell(Text(fileInfo.size!,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 12)),)
    ],
  );
}