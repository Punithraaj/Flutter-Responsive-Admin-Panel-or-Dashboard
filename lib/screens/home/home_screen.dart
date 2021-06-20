import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/controllers/menu_controller.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_admin_dashboard_panel/utils/responsive.dart';
import 'package:provider/provider.dart';
import 'side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //we want this side menu only for Large screen
            if(Responsive.isDesktop(context))
            Expanded(
              child: SideMenu()
            ),
            Expanded(
              flex: 5,
              child: DashboardScreen()
            ),
          ],
        ),
      ),
    );
  }
}