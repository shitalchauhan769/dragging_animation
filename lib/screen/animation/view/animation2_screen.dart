import 'dart:math';
import 'dart:ui';

import 'package:dragging_animation/screen/animation/provider/animation_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Animation2Screen extends StatefulWidget {
  const Animation2Screen({super.key});

  @override
  State<Animation2Screen> createState() => _Animation2ScreenState();
}

class _Animation2ScreenState extends State<Animation2Screen> with SingleTickerProviderStateMixin {
  AnimationProvider? providerW;
  AnimationProvider? providerR;
  int index = 0;
  AnimationController? animationController;
  Animation? sizeTween;
  Animation? colorsTween;
  @override
  void initState() {
    // TODO: implement initState
    animationController=AnimationController(vsync:this ,duration: const Duration(seconds: 2));
    sizeTween =Tween<double>(end: 0,begin: 5).animate(animationController!);
    colorsTween=Tween<double>(begin:0 ,end:5 ).animate(animationController!);
    animationController!.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<AnimationProvider>();
    providerR = context.read<AnimationProvider>();
    int index = ModalRoute
        .of(context)!
        .settings
        .arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop", style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.orange.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: MediaQuery
                  .sizeOf(context)
                  .width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(140),
                  bottomLeft: Radius.circular(140),
                ),
                color: Colors.orange.shade100,


              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedBuilder(animation: animationController! , builder: (context, child) {
                    return Transform.translate(
                      // angle: (pi*2) * animationController!.value,
                      // scale:sizeTween!.value,
                      offset:  Offset(0,100*animationController!.value),
                      child: child,
                    );
                  },
                    child: Hero(
                      tag: "$index",
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/img6.png",
                          height: 230,
                          width: 230,
                          //sizeTween!.value
                        ),
                      ),
                    ),
                  ),

                  // TweenAnimationBuilder(
                  //   tween: Tween<double>(begin: 0, end: 5),
                  //   duration: const Duration(seconds: 1),
                  //   builder: (context, value, child) {
                  //     return Transform.rotate(
                  //         angle: (pi * 2)*value,
                  //       // scale: value,
                  //       // offset: const Offset(100,200),
                  //       child: child,
                  //     );
                  //   },
                  //   child: Hero(
                  //     tag: "$index",
                  //     child: Align(
                  //       alignment: Alignment.center,
                  //       child: Image.asset(
                  //         "assets/images/img6.png",
                  //         height: 230,
                  //         width: 230,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
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
              duration: const Duration(seconds: 1),
              alignment: providerW!.isClike
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    providerR!.changButton();
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 3),
                    child: Container(
                      height: 70,
                      width: providerW!.isClike
                          ? 100
                          : MediaQuery
                          .sizeOf(context)
                          .width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: providerW!.isClike
                            ? Colors.orange.shade500
                            : Colors.orange.shade100,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          providerW!.isClike
                              ? const AnimatedAlign(
                            duration: Duration(seconds: 5),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.shopping_cart,
                              color: Colors.green,
                              size: 30,
                            ),
                          )
                              : AnimatedAlign(
                            duration: const Duration(seconds: 3),
                            alignment: Alignment.center,
                            child: AnimatedOpacity(
                              duration: const Duration(seconds: 3),
                              opacity: providerW!.isClike ? 0 : 1.0,
                              child: const Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
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
  @override
  void dispose() {
    // TODO: implement dispose
    animationController!.dispose();
    super.dispose();
  }
}
