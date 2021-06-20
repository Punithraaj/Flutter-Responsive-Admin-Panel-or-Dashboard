import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/models/myfiles.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;
  const FileInfoCard({Key? key, required this.info}) : super(key: key);

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color!.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(info.svgSrc!,color:info.color),
              ),
              Icon(Icons.more_vert,color: Colors.blueGrey,)
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ProgressLine(
            color: info.color,
            percentage: info.percentage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles} Files",
                style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.blueGrey.shade600,fontWeight: FontWeight.w400),
              ),
              Text(
                info.totalStorage!,
                style: Theme.of(context).textTheme.caption!
                  .copyWith(color: Colors.black,fontWeight: FontWeight.w800),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  final Color? color;
  final int? percentage;
  const ProgressLine({Key? key, this.color = primaryColor, this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 5,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          )
        )
      ],
    );
  }
}