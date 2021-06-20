class RecentFile {
    final String? icon,title,date,size;

  RecentFile({this.icon, this.title, this.date, this.size});

}

List demoRecentFiles = [
  RecentFile(
    icon : "assets/icons/xd_file.svg",
    title: "XD File",
    date: "2021-03-01", 
    size: "3.5mb"
  ),
  RecentFile(
    icon : "assets/icons/Figma_file.svg",
    title: "Figma File",
    date: "2021-02-27", 
    size: "19.0mb"
  ),
  RecentFile(
    icon : "assets/icons/doc_file.svg",
    title: "Documents",
    date: "2021-02-23", 
    size: "32.5mb"
  ),
  RecentFile(
    icon : "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "2021-02-21", 
    size: "3.5mb"
  ),
  RecentFile(
    icon : "assets/icons/media_file.svg",
    title: "Media File",
    date: "2021-02-23", 
    size: "3.5gb"
  ),
  RecentFile(
    icon : "assets/icons/pdf_file.svg",
    title: "PDF File",
    date: "2021-03-04", 
    size: "3.5mb"
  ),
  RecentFile(
    icon : "assets/icons/excel_file.svg",
    title: "Excel File",
    date: "2021-03-11", 
    size: "32.5mb"
  ),
];