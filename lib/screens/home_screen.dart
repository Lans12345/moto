import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:moto/screens/categ_screen.dart';
import 'package:moto/screens/facts_screen.dart';
import 'package:moto/screens/rules_screen.dart';
import 'package:moto/widgets/button_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final box = GetStorage();

  var items = [
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/1.jpg'),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/2.jpg'),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/3.jpg'),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            opacity: 0.5,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/back.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextBold(
                      text: 'Select Category',
                      fontSize: 18,
                      color: Colors.black),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                      onPressed: () {
                        box.write('categ', 'beg');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CategScreen()));
                      },
                      text: 'Beginner'),
                  ButtonWidget(
                      onPressed: () {
                        box.write('categ', 'ama');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CategScreen()));
                      },
                      text: 'Amature'),
                  ButtonWidget(
                      onPressed: () {
                        box.write('categ', 'pro');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CategScreen()));
                      },
                      text: 'Pro'),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const FactsScreen()));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.fact_check_rounded,
                                      size: 42, color: Colors.white),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextBold(
                                      text: 'Motocross Facts',
                                      fontSize: 18,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const RulesScreen()));
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.check_circle_outline_rounded,
                                      size: 42, color: Colors.white),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  TextBold(
                                      text: 'Rules and\nRegulations',
                                      fontSize: 18,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 30,
                  ),
                  TextBold(
                      text: 'Motocross Events',
                      fontSize: 18,
                      color: Colors.black),
                  // SizedBox(
                  //   height: 180,
                  //   width: 350,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: ((context, index) {
                  //       return Padding(
                  //         padding: const EdgeInsets.all(5.0),
                  //         child: Container(
                  //           height: 150,
                  //           width: 300,
                  //           decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.circular(5),
                  //               color: Colors.black),
                  //           child: Center(
                  //             child: TextBold(
                  //                 text: 'Rules and\nRegulations',
                  //                 fontSize: 18,
                  //                 color: Colors.white),
                  //           ),
                  //         ),
                  //       );
                  //     }),
                  //   ),
                  // ),

                  CarouselSlider(
                      items: items,
                      options: CarouselOptions(
                        height: 150,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
