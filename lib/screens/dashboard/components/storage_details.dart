import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/chart.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_admin_dashboard_panel/utils/responsive.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Responsive.isMobile(context) ? 0 :
        defaultPadding
      ),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: defaultPadding,),
          Chart(),
          StorageInfoCard(
            title: "Document Files", 
            svgSrc: "assets/icons/Documents.svg", 
            amountOfFiles: "1.3GB", 
            numOfFiles: 1248
          ),
          StorageInfoCard(
            title: "Media Files", 
            svgSrc: "assets/icons/media.svg", 
            amountOfFiles: "1.3GB", 
            numOfFiles: 1345
          ),
          StorageInfoCard(
            title: "Other Files", 
            svgSrc: "assets/icons/folder.svg", 
            amountOfFiles: "1.3GB", 
            numOfFiles: 1254
          ),
          StorageInfoCard(
            title: "Unknown", 
            svgSrc: "assets/icons/unknown.svg", 
            amountOfFiles: "1.3GB", 
            numOfFiles: 140
          ),
        ],
    ),
    );
  }
}