import 'package:dragging_animation/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerW;
  HomeProvider? providerR;
  @override
  Widget build(BuildContext context) {
    providerW=context.watch<HomeProvider>();
    providerR=context.read<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dragging app"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 600,
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Draggable(
                    data: 'img1',
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img1.png'))),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img1.png'))),
                    ),
                  ),
                  Draggable(
                    data: 'img2',
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img2.png'))),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img2.png'))),
                    ),
                  ),
                  Draggable(
                    data: 'img3',
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img3.png'))),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img3.png'))),
                    ),
                  ),
                  Draggable(
                    data: 'img4',
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img4.png'))),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img4.png'))),
                    ),
                  ),
                  Draggable(
                    data: 'img5',
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/img5.png')
                        )
                      ),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/img5.png')
                          )
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(10)),
                    child: Expanded(
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return providerW!.isDroopBheem? Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img1.png'),
                              ),
                            ),
                          ):Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/img1.png'),
                                opacity: 0.2,
                              ),
                            ),
                          );
                        },
                        onAcceptWithDetails: (details) {
                          providerR!.changCartoon1();
                        },
                        onWillAcceptWithDetails: (details) {
                          return details.data =='img1';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return providerW!.isDroopMightyRaju?Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/img2.png'),

                            )),
                          ):Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/img2.png'),
                                  opacity: 0.2,
                                )),
                          );
                        },
                        onAcceptWithDetails: (details) {
                          providerR!.changCartoon2();
                        },
                        onWillAcceptWithDetails: (details) {
                          return details.data =='img2';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return providerW!.isDroopMickeyMouse? Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/img3.png'),

                            )),
                          ):Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/img3.png'),
                                  opacity: 0.2,
                                )),
                          );
                        },
                        onAcceptWithDetails: (details) {
                          providerR!.changCartoon3();
                        },
                        onWillAcceptWithDetails: (details) {
                          return details.data =='img3';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return providerW!.isDroopDorimon?Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/images/img4.png'),

                            )),
                          ):Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/img4.png'),
                                  opacity: 0.2,
                                )),
                          );

                        },
                        onAcceptWithDetails: (details) {
                          providerR!.changCartoon4();
                        },
                        onWillAcceptWithDetails: (details) {
                          return details.data =='img4';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Expanded(
                      child: DragTarget(
                        builder: (context, candidateData, rejectedData) {
                          return providerW!.isDroopTomJerry? Container (
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/img5.png'),
                                  ),
                            ),
                          ): Container (
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/img5.png'),
                                  opacity: 0.2),
                            ),
                          );
                        },
                        onAcceptWithDetails: (details) {
                           providerR!.changCartoon5();
                        },
                        onWillAcceptWithDetails: (details) {
                          return details.data =='img5';
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
