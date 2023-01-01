import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Rules and Regulations'),
    );
  }
}
