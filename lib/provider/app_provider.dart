import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  TextEditingController? _searchController;

  TextEditingController get searchController {
    _searchController ??= TextEditingController();
    return _searchController!;
  }

  String? word;

  giveMeTheWord(String word) {
    this.word = word;
    notifyListeners();
  }
}
