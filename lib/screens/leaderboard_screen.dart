import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Leaderboard for Categ Type', context),
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
          child: DataTable(columns: [
            DataColumn(
              label:
                  TextRegular(text: 'Name', fontSize: 18, color: Colors.black),
            ),
            DataColumn(
              label: TextRegular(
                  text: 'Number', fontSize: 18, color: Colors.black),
            ),
            DataColumn(
              label:
                  TextRegular(text: 'Score', fontSize: 18, color: Colors.black),
            ),
            DataColumn(
              label: TextRegular(text: '', fontSize: 18, color: Colors.black),
            ),
          ], rows: [
            for (int i = 0; i < 50; i++)
              DataRow(cells: [
                DataCell(
                  TextRegular(
                      text: 'John Doe', fontSize: 14, color: Colors.black),
                ),
                DataCell(
                  TextRegular(text: '23', fontSize: 14, color: Colors.black),
                ),
                DataCell(
                  TextRegular(
                      text: '100' 'pts', fontSize: 14, color: Colors.black),
                ),
                DataCell(
                  TextRegular(text: '', fontSize: 14, color: Colors.black),
                ),
              ]),
          ]),
        ),
      ),
    );
  }
}
