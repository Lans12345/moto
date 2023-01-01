import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Motocross Facts'),
    );
  }
}
