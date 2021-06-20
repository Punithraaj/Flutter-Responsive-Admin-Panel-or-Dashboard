import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageInfoCard extends StatelessWidget {
  final String title,svgSrc, amountOfFiles;
  final int numOfFiles;
  const StorageInfoCard({
    Key? key, 
    required this.title, 
    required this.svgSrc, 
    required this.amountOfFiles, 
    required this.numOfFiles
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(width:2,color:primaryColor.withOpacity(0.15)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(height:20,width:20,child:SvgPicture.asset(svgSrc)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$numOfFiles Files",
                    style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blueGrey.shade600,fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ) 
          ),
          Text(amountOfFiles,
          style: Theme.of(context).textTheme.caption!
                  .copyWith(color: Colors.black,fontWeight: FontWeight.w800),),
        ],
      ),
    );
  }
}