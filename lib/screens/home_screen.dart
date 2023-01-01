import 'package:flutter/material.dart';
import 'package:moto/screens/categ_screen.dart';
import 'package:moto/widgets/button_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextBold(
                    text: 'Select Category', fontSize: 18, color: Colors.black),
                const SizedBox(
                  height: 20,
                ),
                ButtonWidget(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategScreen()));
                    },
                    text: 'Beginner'),
                ButtonWidget(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategScreen()));
                    },
                    text: 'Amature'),
                ButtonWidget(
                    onPressed: () {
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
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                        child: Center(
                          child: TextBold(
                              text: 'Motocross Facts',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                        child: Center(
                          child: TextBold(
                              text: 'Rules and\nRegulations',
                              fontSize: 18,
                              color: Colors.white),
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
                SizedBox(
                  height: 180,
                  width: 350,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 150,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black),
                          child: Center(
                            child: TextBold(
                                text: 'Rules and\nRegulations',
                                fontSize: 18,
                                color: Colors.white),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
