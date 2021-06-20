import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_dashboard_panel/utils/constants.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage;
  final int? numOfFiles, percentage;
  final Color? color;
  CloudStorageInfo({
    this.svgSrc, 
    this.title, 
    this.numOfFiles, 
    this.totalStorage,
    this.percentage,
    this.color,
  });
}

 List demoFiles = [
    CloudStorageInfo(
      title: "Documents",
      numOfFiles: 1328,
      svgSrc: "assets/icons/Documents.svg",
      totalStorage: "1.3GB",
      color: primaryColor,
      percentage: 35,
    ),
    CloudStorageInfo(
      title: "Google Drive",
      numOfFiles: 2329,
      svgSrc: "assets/icons/google_drive.svg",
      totalStorage: "2.9GB",
      color: Color(0xFFFFA113),
      percentage: 25,
    ),
    CloudStorageInfo(
      title: "One Drive",
      numOfFiles: 1916,
      svgSrc: "assets/icons/one_drive.svg",
      totalStorage: "1.7GB",
      color: Colors.indigo.shade900,
      percentage: 78,
    ),
    CloudStorageInfo(
      title: "Drop Box",
      numOfFiles: 328,
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "1.1GB",
      color: Color(0xFF007EE5),
      percentage: 67,
    ),
  ];
