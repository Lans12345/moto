import 'package:flutter/material.dart';
import 'package:moto/widgets/text_widget.dart';

import '../../widgets/appbar_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('First Screen', context),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/2.jpg'),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextRegular(
                text:
                    'Excepteur fugiat minim voluptate aliqua nulla velit irure.',
                fontSize: 12,
                color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
