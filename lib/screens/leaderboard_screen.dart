import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Leaderboard for Categ Type'),
      body: SingleChildScrollView(
        child: DataTable(columns: [
          DataColumn(
            label: TextRegular(text: 'Name', fontSize: 18, color: Colors.black),
          ),
          DataColumn(
            label:
                TextRegular(text: 'Number', fontSize: 18, color: Colors.black),
          ),
          DataColumn(
            label:
                TextRegular(text: 'Score', fontSize: 18, color: Colors.black),
          ),
        ], rows: [
          for (int i = 0; i < 50; i++)
            DataRow(cells: [
              DataCell(
                TextRegular(text: 'John Doe', fontSize: 14, color: Colors.grey),
              ),
              DataCell(
                TextRegular(text: '23', fontSize: 14, color: Colors.grey),
              ),
              DataCell(
                TextRegular(
                    text: '100' 'pts', fontSize: 14, color: Colors.grey),
              ),
            ]),
        ]),
      ),
    );
  }
}
