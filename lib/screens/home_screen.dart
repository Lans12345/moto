import 'package:flutter/material.dart';
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
                TextBold(
                    text: 'Select Category', fontSize: 18, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
