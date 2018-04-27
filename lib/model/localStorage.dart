import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:path_provider/path_provider.dart';

class LocalStorage {
  String _fileName;

  LocalStorage(this._fileName);

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return new File('$path/${this._fileName}.json');
  }

  Future<Map<String,dynamic>> readStorage() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();

      return json.decode(contents);
    } catch (e) {
      return null;
    }
  }

  Future<File> writeToStorage(int stuff) async {
    final file = await _localFile;
    return file.writeAsString(json.encode(stuff));
  }
}