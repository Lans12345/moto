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
                          '1. Riders must have a valid racing license in order to participate in a motocross event.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '2. Riders are required to wear protective gear, including a helmet, gloves, boots, and protective suits.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '3. Only bikes that meet the required safety standards are allowed to participate in a motocross event.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '4. Each rider is allowed a certain number of mechanics to work on their bike, and the use of certain tools and equipment is restricted.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '5. Motocross courses are typically marked with flags to indicate different hazards or areas of the course. Riders must follow the flag rules at all times.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '6. If a rider falls off their bike during a race, they are required to immediately move to the side of the course and wait for the other riders to pass.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '7. If a rider is deemed to have deliberately caused an accident or interfered with another rider, they may be disqualified from the race.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '8. Motocross officials have the authority to disqualify riders for any violation of the rules or for dangerous or unsportsmanlike behavior.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '9. Motocross organizers may also implement additional rules and regulations specific to the event or location.',
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
