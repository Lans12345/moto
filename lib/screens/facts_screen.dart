import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Motocross Facts'),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextRegular(
                  text:
                      '1. Motocross is a type of motorcycle racing that takes place on off-road courses.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '2. The sport originated in the United Kingdom in the early 20th century.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '3. Motocross races typically involve a number of laps around a course, and the rider with the fastest overall time is declared the winner.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '4. Motocross bikes are specially designed for off-road racing and are typically much lighter and more powerful than street motorcycles.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '5. The sport is popular in many countries around the world, and there are several professional motocross leagues and competitions.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '6. Motocross is physically demanding and requires a high level of skill and athleticism to participate.',
                  fontSize: 12,
                  color: Colors.black),
              const SizedBox(height: 10),
              TextRegular(
                  text:
                      '7. Injuries are common in motocross, and riders are required to wear protective gear, including helmets, boots, and protective suits.',
                  fontSize: 12,
                  color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
