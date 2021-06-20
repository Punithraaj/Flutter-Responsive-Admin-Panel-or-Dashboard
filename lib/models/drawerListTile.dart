
class DrawerListTile {
  final String title, svgSrc;

  
  DrawerListTile({
    required this.title,
    required this.svgSrc,

  });
}

List drawerlistFiles = [
    DrawerListTile(
            title: "Dashboard", 
            svgSrc: "assets/icons/menu_dashbord.svg", 
          ),
          DrawerListTile(
            title: "Task", 
            svgSrc: "assets/icons/menu_task.svg", 
          ),
          DrawerListTile(
            title: "Documents", 
            svgSrc: "assets/icons/menu_doc.svg", 
          ),
          DrawerListTile(
            title: "Store", 
            svgSrc: "assets/icons/menu_store.svg", 
          ),
          DrawerListTile(
            title: "Notification", 
            svgSrc: "assets/icons/menu_notification.svg", 
          ),
          DrawerListTile(
            title: "Profile", 
            svgSrc: "assets/icons/menu_profile.svg", 
          ),
          DrawerListTile(
            title: "Settings", 
            svgSrc: "assets/icons/menu_setting.svg", 
          )
];