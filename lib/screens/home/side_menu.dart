import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/8,
            child:DrawerHeader(
              child: Image.asset("assets/images/logo_1.png"),
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.all(0.0)
            ),
          ),
          DrawerListTile(
            title: "Dashboard", 
            svgSrc: "assets/icons/menu_dashbord.svg", 
            isSelected: false,
            press: (){}
          ),
          DrawerListTile(
            title: "Task", 
            svgSrc: "assets/icons/menu_task.svg", 
            isSelected: false,
            press: (){}
          ),
          DrawerListTile(
            title: "Documents", 
            svgSrc: "assets/icons/menu_doc.svg", 
            isSelected: true,
            press: (){}
          ),
          DrawerListTile(
            title: "Store", 
            svgSrc: "assets/icons/menu_store.svg", 
            isSelected: false,
            press: (){}
          ),
          DrawerListTile(
            title: "Notification", 
            svgSrc: "assets/icons/menu_notification.svg", 
            isSelected: false,
            press: (){}
          ),
          DrawerListTile(
            title: "Profile", 
            svgSrc: "assets/icons/menu_profile.svg", 
            isSelected: false,
            press: (){}
          ),
          DrawerListTile(
            title: "Settings", 
            svgSrc: "assets/icons/menu_setting.svg", 
            isSelected: false,
            press: (){}
          )
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final bool isSelected;
  final VoidCallback press;
  DrawerListTile({Key? key, 
    required this.title, 
    required this.svgSrc, 
    required this.press, required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container (
      width: MediaQuery.of(context).size.width/2,
      padding: EdgeInsets.only(left:16.0),
            decoration: new BoxDecoration (
                color: isSelected ? Colors.blue : Colors.white54,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: new ListTile(
                      onTap: press,
                      horizontalTitleGap: 0.0,
                      leading: SvgPicture.asset(svgSrc,
                      color: Colors.blueGrey,
                      height: 16,
                      ),
                      selected: isSelected,
                      title: Text(
                        title,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    )
        );
  }
}