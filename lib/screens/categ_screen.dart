import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class CategScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Category Type'),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              child: DataTable(columns: [
                DataColumn(
                  label: TextRegular(
                      text: 'Name', fontSize: 18, color: Colors.black),
                ),
                DataColumn(
                  label: TextRegular(
                      text: 'Number', fontSize: 18, color: Colors.black),
                ),
                DataColumn(
                  label: TextRegular(
                      text: 'Score', fontSize: 18, color: Colors.black),
                ),
              ], rows: [
                for (int i = 0; i < 50; i++)
                  DataRow(
                    cells: [
                      DataCell(
                        TextRegular(
                            text: 'John Doe', fontSize: 14, color: Colors.grey),
                      ),
                      DataCell(
                        TextRegular(
                            text: '23', fontSize: 14, color: Colors.grey),
                      ),
                      DataCell(
                        TextRegular(
                            text: '23' 'pts', fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
              ]),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minWidth: 130,
                        color: Colors.black,
                        onPressed: () {},
                        child: TextBold(
                            text: 'Add Entry',
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      MaterialButton(
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minWidth: 130,
                        color: Colors.black,
                        onPressed: () {},
                        child: TextBold(
                            text: 'View Leaderbord',
                            fontSize: 14,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
