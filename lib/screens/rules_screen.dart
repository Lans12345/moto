import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Rules and Regulations'),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            opacity: 0.25,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/back.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextBold(
                      text:
                          'In motocross, there are a number of rules and regulations that are followed to ensure the safety of the riders and the fairness of the competition. Some of the key rules and regulations are the following: ',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 20),
                  TextRegular(
                      text:
                          '1. Motocross is a type of motorcycle racing that takes place on off-road courses.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '2. The sport originated in the United Kingdom in the early 20th century.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '3. Motocross races typically involve a number of laps around a course, and the rider with the fastest overall time is declared the winner.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '4. Motocross bikes are specially designed for off-road racing and are typically much lighter and more powerful than street motorcycles.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '5. The sport is popular in many countries around the world, and there are several professional motocross leagues and competitions.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '6. Motocross is physically demanding and requires a high level of skill and athleticism to participate.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '7. Injuries are common in motocross, and riders are required to wear protective gear, including helmets, boots, and protective suits.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '8. Motocross is often held in outdoor venues, and the courses can be affected by weather conditions such as rain and mud.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '9. There are several different classes of motocross competition, including classes for different bike sizes and ages of riders.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '10. Motocross is a popular spectator sport, and many races are broadcast on television or streamed online.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
