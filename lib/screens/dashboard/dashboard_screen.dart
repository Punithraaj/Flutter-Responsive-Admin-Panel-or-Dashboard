import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/Analytics.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/my_files.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/recent_files.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/storage_details.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_admin_dashboard_panel/utils/responsive.dart';

import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      if(Responsive.isDesktop(context))
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [ 
                            Expanded(child: RecentFiles(),),
                            SizedBox(width: defaultPadding),
                            Expanded(child: Container(height: MediaQuery.of(context).size.height/1.35,
                              padding: EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Analytics",
                                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                                        ),
                                      ),
                                      Icon(Icons.more_horiz,color: Colors.blueGrey,),
                                    ],
                                  ),
                                  Analytics(),
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                      if(Responsive.isMobile(context) || Responsive.isTablet(context) )
                          RecentFiles(),  
                      if(Responsive.isMobile(context) || Responsive.isTablet(context))
                        SizedBox(height: defaultPadding),
                      if(Responsive.isMobile(context) || Responsive.isTablet(context))  
                          Container(
                              padding: EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                              ),
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Analytics",
                                          style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),
                                        ),
                                      ),
                                  Icon(Icons.more_horiz,color: Colors.blueGrey,),
                                ],
                              ),
                            Analytics(),
                          ],
                        ),
                      ),
                      if(Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if(Responsive.isMobile(context))
                        StorageDetails(),  
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                    SizedBox(height: defaultPadding * 0.75),
// On Mobile mean screen is less than 850 we dont want to show it  
              if(!Responsive.isMobile(context))
                    Expanded(
                      flex: 3,
                      child: StorageDetails())
              ],
            ),
          ],
        ),
      ),
    );
  }
}