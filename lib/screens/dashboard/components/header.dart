import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/controllers/menu_controller.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_admin_dashboard_panel/utils/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
            onPressed:context.read<MenuController>().controlMenu, 
            icon: Icon(Icons.menu)
          ),
        if(!Responsive.isMobile(context))
          Text("Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if(!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1
          ),
          Expanded(
            child: SearchField(),
          ),
          ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding /2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/profile_pic.png", height: 38,),
          if(!Responsive.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2,),
              child: Text("Sameeksha Umesh", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Icon(Icons.keyboard_arrow_down,color: Colors.blueGrey,),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10),
        ),
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin:EdgeInsets.symmetric(horizontal: defaultPadding /2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset("assets/icons/Search.svg"),
        )
      ),
    ),
    );
  }
}