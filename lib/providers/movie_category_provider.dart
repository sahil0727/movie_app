import 'package:flutter/material.dart';

class MovieCategoryProvider extends ChangeNotifier {
  int index = 0;
  void getIndex({required int index}) {
    this.index = index;
    notifyListeners();
  }
}
