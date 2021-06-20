import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/models/myfiles.dart';
import 'package:flutter_admin_dashboard_panel/screens/dashboard/components/file_info_card.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_admin_dashboard_panel/utils/responsive.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "MyFiles",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.black,fontWeight: FontWeight.w600, fontSize: 14),
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5 ,
                  vertical: defaultPadding / (Responsive.isMobile(context) ? 2 :1), 
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add,size: 12,), 
              label: Text("Add New" ,style:TextStyle(fontSize: 12) ,),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;
  const FileInfoCardGridView({
    Key? key, 
    this.crossAxisCount = 4, 
    this.childAspectRatio =1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoFiles[index])
    );
  }
}