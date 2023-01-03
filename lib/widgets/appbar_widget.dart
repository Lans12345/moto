import 'package:flutter/material.dart';
import 'package:moto/screens/home_screen.dart';
import 'package:moto/widgets/text_widget.dart';

PreferredSizeWidget AppbarWidget(String title, BuildContext context) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      },
      icon: const Icon(Icons.arrow_back),
    ),
    elevation: 3,
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
    title: TextRegular(text: title, fontSize: 18, color: Colors.white),
    centerTitle: true,
  );
}
