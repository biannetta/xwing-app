import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class LocalStorage {
  
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return new File('$path/xwinghotac.txt');
  }

  Future<int> readStorage() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  Future<File> writeToStorage(int stuff) async {
    final file = await _localFile;
    return file.writeAsString('$stuff');
  }
}