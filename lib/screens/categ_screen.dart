import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:localstore/localstore.dart';
import 'package:moto/screens/home_screen.dart';
import 'package:moto/screens/leaderboard_screen.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/button_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class CategScreen extends StatefulWidget {
  @override
  State<CategScreen> createState() => _CategScreenState();
}

class _CategScreenState extends State<CategScreen> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  late String name;
  late String firstPoint = '0';
  late String secondPoint = '0';

  late String score = '0';

  late String number;

  final box = GetStorage();

  final db = Localstore.instance;

  late String pointsToAdd = '';

  List<String> names = [];
  List<String> numbers = [];
  List<int> scores = [];
  List<String> ids = [];

  List<int> firstPoints = [];
  List<int> secondPoints = [];

  var hasLoaded = false;

  getData() async {
    final items = await db.collection(box.read('categ')).get();

    if (items != null) {
      print(items);
      List<dynamic> values = items.values.toList();

      values.sort((a, b) => a['score'].compareTo(b['score']));

      items.forEach((key, value) {
        names.add(value['name']);
        numbers.add(value['number']);
        scores.add(value['score']);
        ids.add(value['id']);
        firstPoints.add(value['firstPoint']);
        secondPoints.add(value['secondPoint']);
      });
    }

    setState(() {
      hasLoaded = true;
    });
  }

  Future<bool> onWillPop() async {
    final shouldPop = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to leave this page?'),
        actions: <Widget>[
          MaterialButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );

    return shouldPop ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        appBar: AppbarWidget(box.read('categ') + ' Category', context),
        body: hasLoaded
            ? Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    opacity: 0.40,
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/c.jpg',
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
                              text: 'Number',
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        DataColumn(
                          label: TextRegular(
                              text: 'Score', fontSize: 18, color: Colors.black),
                        ),
                      ], rows: [
                        for (int i = 0; i < names.length; i++)
                          DataRow(
                            cells: [
                              DataCell(
                                TextRegular(
                                    text: names[i],
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                              DataCell(
                                TextRegular(
                                    text: numbers[i],
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    firstPoints[i] == 0
                                        ? GestureDetector(
                                            onTap: (() {
                                              showDialog(
                                                  context: context,
                                                  builder: ((context) {
                                                    return AlertDialog(
                                                      content: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 5, 20, 5),
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          onChanged: (input) {
                                                            firstPoint = input;
                                                          },
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      'Points: '),
                                                        ),
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                            onPressed: (() {
                                                              final id = db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc()
                                                                  .id;
                                                              db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc(ids[i])
                                                                  .delete();

                                                              db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc(id)
                                                                  .set({
                                                                'name':
                                                                    names[i],
                                                                'number':
                                                                    numbers[i],
                                                                'score': int.parse(
                                                                        firstPoint) +
                                                                    secondPoints[
                                                                        i] +
                                                                    scores[i],
                                                                'id': id,
                                                                'firstPoint': int
                                                                        .parse(
                                                                            firstPoint) +
                                                                    firstPoints[
                                                                        i],
                                                                'secondPoint': int
                                                                        .parse(
                                                                            secondPoint) +
                                                                    secondPoints[
                                                                        i]
                                                              });

                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(SnackBar(
                                                                      content: TextRegular(
                                                                          text:
                                                                              'Updated Succesfully!',
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.white)));
                                                              Navigator.of(
                                                                      context)
                                                                  .pushReplacement(
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              CategScreen()));
                                                            }),
                                                            child: TextBold(
                                                                text:
                                                                    'Add Points',
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    );
                                                  }));
                                            }),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              height: 35,
                                              width: 70,
                                              child: Center(
                                                child: TextRegular(
                                                    text: '1st pts',
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        : secondPoints[i] != 0 &&
                                                firstPoints[i] != 0
                                            ? TextBold(
                                                text:
                                                    '1st pts:${firstPoints[i]}\n2nd pts: ${secondPoints[i]}\nTotal: ${secondPoints[i] + firstPoints[i]}pts',
                                                fontSize: 12,
                                                color: Colors.black)
                                            : TextBold(
                                                text: firstPoints[i].toString(),
                                                fontSize: 14,
                                                color: Colors.black),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    secondPoints[i] == 0
                                        ? GestureDetector(
                                            onTap: (() {
                                              showDialog(
                                                  context: context,
                                                  builder: ((context) {
                                                    return AlertDialog(
                                                      content: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 5, 20, 5),
                                                        child: TextFormField(
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          onChanged: (input) {
                                                            secondPoint = input;
                                                          },
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      'Points: '),
                                                        ),
                                                      ),
                                                      actions: [
                                                        TextButton(
                                                            onPressed: (() {
                                                              final id = db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc()
                                                                  .id;
                                                              db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc(ids[i])
                                                                  .delete();

                                                              db
                                                                  .collection(
                                                                      box.read(
                                                                          'categ'))
                                                                  .doc(id)
                                                                  .set({
                                                                'name':
                                                                    names[i],
                                                                'number':
                                                                    numbers[i],
                                                                'score': firstPoints[
                                                                        i] +
                                                                    int.parse(
                                                                        secondPoint),
                                                                'id': id,
                                                                'firstPoint': int
                                                                        .parse(
                                                                            firstPoint) +
                                                                    firstPoints[
                                                                        i],
                                                                'secondPoint': int
                                                                        .parse(
                                                                            secondPoint) +
                                                                    secondPoints[
                                                                        i]
                                                              });

                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(SnackBar(
                                                                      content: TextRegular(
                                                                          text:
                                                                              'Updated Succesfully!',
                                                                          fontSize:
                                                                              12,
                                                                          color:
                                                                              Colors.white)));
                                                              Navigator.of(
                                                                      context)
                                                                  .pushReplacement(
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              CategScreen()));
                                                            }),
                                                            child: TextBold(
                                                                text:
                                                                    'Add Points',
                                                                fontSize: 15,
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    );
                                                  }));
                                            }),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              height: 35,
                                              width: 70,
                                              child: Center(
                                                child: TextRegular(
                                                    text: '2nd pts',
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        : secondPoints[i] != 0 &&
                                                firstPoints[i] != 0
                                            ? const SizedBox()
                                            : TextBold(
                                                text:
                                                    secondPoints[i].toString(),
                                                fontSize: 14,
                                                color: Colors.black),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        db
                                            .collection(box.read('categ'))
                                            .doc(ids[i])
                                            .delete();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: TextRegular(
                                                    text:
                                                        'Deleted Succesfully!',
                                                    fontSize: 12,
                                                    color: Colors.white)));
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CategScreen()));
                                      },
                                      child: const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ]),
                    )),
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
                                    color: Colors.green,
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: SizedBox(
                                                height: 320,
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
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 5, 20, 5),
                                                        child: TextFormField(
                                                          onChanged: (input) {
                                                            name = input;
                                                          },
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      'Name: '),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 5, 20, 5),
                                                        child: TextFormField(
                                                          onChanged: (input) {
                                                            number = input;
                                                          },
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          decoration:
                                                              const InputDecoration(
                                                                  labelText:
                                                                      'Number: '),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      ButtonWidget(
                                                          onPressed: () async {
                                                            final id = db
                                                                .collection(
                                                                    box.read(
                                                                        'categ'))
                                                                .doc()
                                                                .id;

                                                            db
                                                                .collection(
                                                                    box.read(
                                                                        'categ'))
                                                                .doc(id)
                                                                .set({
                                                              'name': name,
                                                              'number': number,
                                                              'score':
                                                                  int.parse(
                                                                      score),
                                                              'id': id,
                                                              'firstPoint': 0,
                                                              'secondPoint': 0,
                                                            });

                                                            final items = await db
                                                                .collection(
                                                                    box.read(
                                                                        'categ'))
                                                                .get();

                                                            print(items);
                                                            // final List<String>
                                                            //     jsonList =
                                                            //     box.read('users');

                                                            // print(jsonList);

                                                            // final List<UserModel>
                                                            //     users = jsonList
                                                            //         .map((json) =>
                                                            //             UserModel.fromJson(
                                                            //                 jsonDecode(
                                                            //                     json)))
                                                            //         .toList();

                                                            // for (UserModel user
                                                            //     in users) {
                                                            //   print(user.name);
                                                            //   print(user.score);
                                                            //   print(user.number);
                                                            // }
                                                            //                                                     final UserModel user =
                                                            //                                                         UserModel(
                                                            //                                                             name: name,
                                                            //                                                             score: int.parse(
                                                            //                                                                 score),
                                                            //                                                             number: number);

                                                            // // Retrieve the list of JSON strings from storage
                                                            //                                                     final List<String>
                                                            //                                                         jsonList =
                                                            //                                                         box.read('users');

                                                            // // Deserialize the JSON strings to a list of UserModel objects
                                                            //                                                     final List<UserModel>
                                                            //                                                         users = jsonList
                                                            //                                                             .map((json) =>
                                                            //                                                                 UserModel.fromJson(
                                                            //                                                                     jsonDecode(
                                                            //                                                                         json)))
                                                            //                                                             .toList();

                                                            // // Add the new user to the list
                                                            //                                                     users.add(user);

                                                            // // Serialize the updated list of users to a list of JSON strings
                                                            //                                                     final List<String>
                                                            //                                                         updatedJsonList = users
                                                            //                                                             .map((u) =>
                                                            //                                                                 jsonEncode(u))
                                                            //                                                             .toList();

                                                            // // Store the updated JSON string list in storage under the key "users"
                                                            //                                                     box.write('users',
                                                            //                                                         updatedJsonList);
                                                            //                                                     final List<UserModel>
                                                            //                                                         users = [
                                                            //                                                       UserModel(
                                                            //                                                           name: 'John',
                                                            //                                                           score: 10,
                                                            //                                                           number: '123'),
                                                            //                                                       UserModel(
                                                            //                                                           name: 'Jane',
                                                            //                                                           score: 20,
                                                            //                                                           number: '456'),
                                                            //                                                       UserModel(
                                                            //                                                           name: 'Bob',
                                                            //                                                           score: 30,
                                                            //                                                           number: '789'),
                                                            //                                                     ];

                                                            //                                                     print(users);

                                                            // // Serialize the users to a list of JSON strings
                                                            //                                                     final List<String>
                                                            //                                                         jsonList = users
                                                            //                                                             .map((u) =>
                                                            //                                                                 jsonEncode(u))
                                                            //                                                             .toList();

                                                            // // Store the JSON string list in storage under the key "users"
                                                            //                                                     try {
                                                            //                                                       box.write(
                                                            //                                                           'users', jsonList);
                                                            //                                                     } catch (e) {
                                                            //                                                       print('error');
                                                            //                                                     }

                                                            // final List<UserModel> list =
                                                            //     box.read('data');

                                                            // list.add(UserModel(
                                                            //     name: name,
                                                            //     number: number,
                                                            //     score:
                                                            //         int.parse(score)));

                                                            // box.write('data', list);

                                                            // final UserModel user =
                                                            //     UserModel(
                                                            //         name: name,
                                                            //         score: int.parse(
                                                            //             score),
                                                            //         number: number);
                                                            // final String json =
                                                            //     jsonEncode(user);
                                                            // box.write('data', [json]);

                                                            // box.write(
                                                            //     'data',
                                                            //     UserModel(
                                                            //         name: name,
                                                            //         number: number,
                                                            //         score: int.parse(
                                                            //             score)));

                                                            Navigator.of(
                                                                    context)
                                                                .pushReplacement(
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                CategScreen()));
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
                                        text: 'Add Racer',
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
                                    color: Colors.green,
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LeaderBoardScreen()));
                                    },
                                    child: TextBold(
                                        text: 'View Result',
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
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
