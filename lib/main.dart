import 'package:dragging_animation/screen/animation/provider/animation_provider.dart';
import 'package:dragging_animation/screen/home/provider/home_provider.dart';
import 'package:dragging_animation/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider()),
        ChangeNotifierProvider.value(value: AnimationProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: app_routes,
      ),
    ),
  );
}
