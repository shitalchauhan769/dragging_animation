import 'package:dragging_animation/screen/animation/view/animation1_screen.dart';
import 'package:dragging_animation/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';

import '../screen/animation/view/animation2_screen.dart';
Map<String,WidgetBuilder>app_routes={
  '/':(c1)=>const Animation1Screen(),
  'animation':(c1)=>const Animation2Screen(),
  'home':(c1)=>const HomeScreen(),
};