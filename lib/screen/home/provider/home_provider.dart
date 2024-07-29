import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier
{
  bool isDroopBheem=false;
  bool isDroopMightyRaju=false;
  bool isDroopMickeyMouse=false;
  bool isDroopDorimon=false;
  bool isDroopTomJerry=false;

  void changCartoon1()
  {
    isDroopBheem=true;
    notifyListeners();
  }
  void changCartoon2()
  {
    isDroopMightyRaju=true;
    notifyListeners();
  }
  void changCartoon3()
  {
    isDroopMickeyMouse=true;
    notifyListeners();
  }
  void changCartoon4()
  {
    isDroopDorimon=true;
    notifyListeners();
  }
  void changCartoon5()
  {
    isDroopTomJerry=true;
    notifyListeners();
  }
}