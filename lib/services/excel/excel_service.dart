import 'dart:io';

import 'package:excel/excel.dart';

class ExcelService {
  readFile(String path) async {
    try {
      var bytes = File(path).readAsBytesSync();
      var excel = Excel.decodeBytes(bytes);
      for (var table in excel.tables.keys) {
        print(table); //sheet Name
        print(excel.tables[table]?.maxColumns);
        print(excel.tables[table]?.maxRows);
      }
    } catch (e) {
      print(e);
    }
  }
}
