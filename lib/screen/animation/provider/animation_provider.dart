import 'package:flutter/cupertino.dart';

class AnimationProvider with ChangeNotifier
{
  bool isClike=false;

  void changButton()
  {
    isClike!=isClike;
    notifyListeners();
  }
}