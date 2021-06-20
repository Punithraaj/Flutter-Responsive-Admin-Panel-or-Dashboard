import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/controllers/menu_controller.dart';
import 'package:flutter_admin_dashboard_panel/screens/home/home_screen.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admin Dashborad Panel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade50,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Colors.black),
        canvasColor: Colors.white,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController(),),
        ],
        child: HomeScreen(),
      ),
    );
  }
}
