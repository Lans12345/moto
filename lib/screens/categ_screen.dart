import 'package:flutter/material.dart';
import 'package:moto/screens/leaderboard_screen.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/button_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class CategScreen extends StatelessWidget {
  late String name;
  late String score;
  late String number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Category Type'),
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
        child: Stack(
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
                              text: 'John Doe',
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        DataCell(
                          TextRegular(
                              text: '23', fontSize: 14, color: Colors.black),
                        ),
                        DataCell(
                          TextRegular(
                              text: '23' 'pts',
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
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
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: SizedBox(
                                        height: 300,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              TextBold(
                                                  text: 'Adding Entry',
                                                  fontSize: 18,
                                                  color: Colors.black),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                child: TextFormField(
                                                  onChanged: (input) {
                                                    name = input;
                                                  },
                                                  decoration:
                                                      const InputDecoration(
                                                          labelText: 'Name: '),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                child: TextFormField(
                                                  onChanged: (input) {
                                                    number = input;
                                                  },
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      const InputDecoration(
                                                          labelText:
                                                              'Number: '),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 20, 5),
                                                child: TextFormField(
                                                  onChanged: (input) {
                                                    score = input;
                                                  },
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration:
                                                      const InputDecoration(
                                                          labelText: 'Score: '),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              ButtonWidget(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  text: 'Continue'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
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
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LeaderBoardScreen()));
                            },
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
            ),
          ],
        ),
      ),
    );
  }
}
