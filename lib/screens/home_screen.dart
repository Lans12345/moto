import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:localstore/localstore.dart';
import 'package:moto/screens/categ_screen.dart';
import 'package:moto/screens/facts_screen.dart';
import 'package:moto/screens/rules_screen.dart';
import 'package:moto/screens/slideshow_screens/first_page.dart';
import 'package:moto/screens/slideshow_screens/second_page.dart';
import 'package:moto/screens/slideshow_screens/third_page.dart';
import 'package:moto/widgets/button_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  final box = GetStorage();

  final db = Localstore.instance;

  String nameOfCateg = '';

  List<String> names = [];
  List<String> ids = [];

  var hasLoaded = false;

  getData() async {
    final items = await db.collection('Categ').get();

    if (items != null) {
      items.forEach((key, value) {
        names.add(value['nameOfCateg']);
        ids.add(value['id']);
      });
    }

    setState(() {
      hasLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    var items = [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
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
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
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
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ThirdPage()));
          },
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
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: hasLoaded
          ? Container(
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
                        ButtonWidget(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: ((context) {
                                    return AlertDialog(
                                      title: TextBold(
                                          text: 'Adding Category',
                                          fontSize: 14,
                                          color: Colors.black),
                                      content: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 5, 20, 5),
                                        child: TextFormField(
                                          onChanged: (input) {
                                            nameOfCateg = input;
                                          },
                                          decoration: const InputDecoration(
                                              labelText: 'Name of Category: '),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: (() {
                                              final id = db
                                                  .collection('Categ')
                                                  .doc()
                                                  .id;
                                              db
                                                  .collection('Categ')
                                                  .doc(id)
                                                  .set({
                                                'nameOfCateg': nameOfCateg,
                                                'id': id
                                              });
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: TextRegular(
                                                          text:
                                                              'Category Added!',
                                                          fontSize: 12,
                                                          color:
                                                              Colors.white)));
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomeScreen()));
                                            }),
                                            child: TextBold(
                                                text: 'Add Category',
                                                fontSize: 15,
                                                color: Colors.black))
                                      ],
                                    );
                                  }));
                            },
                            text: 'Add Category'),
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
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: ListView.builder(
                              itemCount: names.length,
                              itemBuilder: ((context, index) {
                                return ButtonWidget(
                                    onHold: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                content: const Text(
                                                  'Are you sure you want to delete this category?',
                                                  style: TextStyle(
                                                      fontFamily: 'QRegular'),
                                                ),
                                                actions: <Widget>[
                                                  MaterialButton(
                                                    onPressed: () =>
                                                        Navigator.of(context)
                                                            .pop(true),
                                                    child: const Text(
                                                      'Close',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'QRegular',
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  MaterialButton(
                                                    onPressed: () async {
                                                      db
                                                          .collection('Categ')
                                                          .doc(ids[index])
                                                          .delete();

                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(SnackBar(
                                                              content: TextRegular(
                                                                  text:
                                                                      'Category Deleted Succesfully!',
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white)));

                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const HomeScreen()));
                                                      Navigator.of(context)
                                                          .pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const HomeScreen()));
                                                    },
                                                    child: const Text(
                                                      'Continue',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'QRegular',
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ],
                                              ));
                                    },
                                    onPressed: () {
                                      box.write('categ', names[index]);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CategScreen()));
                                    },
                                    text: names[index]);
                              })),
                        ),

                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const FactsScreen()));
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        opacity: 150.0,
                                        image:
                                            AssetImage('assets/images/h6.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextBold(
                                            text: 'Motocross Facts',
                                            fontSize: 20,
                                            color: Colors.white),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RulesScreen()));
                                },
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          opacity: 150.0,
                                          image: AssetImage(
                                              'assets/images/stop.png')),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextBold(
                                            text: 'Rules and\nRegulations',
                                            fontSize: 20,
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
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
