import 'dart:ui';

import 'package:dragging_animation/screen/animation/provider/animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Animation2Screen extends StatefulWidget {
  const Animation2Screen({super.key});

  @override
  State<Animation2Screen> createState() => _Animation2ScreenState();
}

class _Animation2ScreenState extends State<Animation2Screen> {
  AnimationProvider? providerW;
  AnimationProvider? providerR;
  int index=0;

  @override
  Widget build(BuildContext context) {
    providerW=context.watch<AnimationProvider>();
    providerR=context.read<AnimationProvider>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(140),
                  bottomLeft: Radius.circular(140),
                ),
                color: Colors.orange.shade100,
              ),
              child: Hero(
                tag: "DemoTag",
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/img6.png",
                    height: 230,
                    width: 230,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "\$150",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "purse",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade200),
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    providerR!.changButton();
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    child: Container(
                      height: 60,
                      width: providerW!.isClike?100:MediaQuery.sizeOf(context).width,
                      color: Colors.orange.shade100,
                      child: const Card(
                        child: AnimatedAlign(
                          duration: Duration(seconds: 3),
                          alignment: Alignment.center,
                          child: Text("Add to Cart",style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
