import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class FactsScreen extends StatelessWidget {
  const FactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Motocross Facts', context),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            opacity: 0.25,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/b2.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  TextRegular(
                      text:
                          '1. Motocross is a type of motorcycle racing that takes place on off-road courses.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '2. The sport originated in the United Kingdom in the early 20th century.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '3. Motocross races typically involve a number of laps around a course, and the rider with the fastest overall time is declared the winner.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '4. Motocross bikes are specially designed for off-road racing and are typically much lighter and more powerful than street motorcycles.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '5. The sport is popular in many countries around the world, and there are several professional motocross leagues and competitions.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '6. Motocross is physically demanding and requires a high level of skill and athleticism to participate.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '7. Injuries are common in motocross, and riders are required to wear protective gear, including helmets, boots, and protective suits.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '8. Motocross is often held in outdoor venues, and the courses can be affected by weather conditions such as rain and mud.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '9. There are several different classes of motocross competition, including classes for different bike sizes and ages of riders.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '10. Motocross is a popular spectator sport, and many races are broadcast on television or streamed online.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 50),

                  //HEADER
                  Center(
                    child: Text(
                      "THE HISTORY OF MOTORCROSS",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "What we today call motocross can be traced back to the early 1900s in northern Britain. At the time it wasn’t called motocross, but was known as ” Scramble ” . 1924 held the first known competition in Camberley, Surrey. During the 1930s, this sport grew forward, especially in the UK where it had begun to start up teams. AJS, BSA, Matchless, Norton and Rudge were motorcycle manufacturers that had competing teams. At that time was actually when the real Motocross was born.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/h1.jpg",
                  ),
                  Text(
                    "https://www.curtisbikes.co.uk/history-curtis-bikes/",
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "What we today call motocross can be traced back to the early 1900s in northern Britain. At the time it wasn’t called motocross, but was known as ” Scramble ” . 1924 held the first known competition in Camberley, Surrey. During the 1930s, this sport grew forward, especially in the UK where it had begun to start up teams. AJS, BSA, Matchless, Norton and Rudge were motorcycle manufacturers that had competing teams. At that time was actually when the real Motocross was born.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/h2.jpg",
                  ),
                  Text(
                    "https://timmyaronsson.wordpress.com/2016/03/06/history-of-motocross/",
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    " The first big race that was run was the European championship in 1952 which then ran with motorcycles which had a four-stroke engine of 500cc. 1957 ran the first world championship. The two-stroke engine was introduced in the sport in 1962 when it extended the sport with a class of smaller machines with engines of 250cc. With this came also a couple of new manufacturers into the sport. Some of these were the Swedish Husqvarna, Spanish Bultaco, CZ Czech and English Greeves. The older four-stroke that was much heavier was almost entirely replaced by this new light kind of motocross, which meant that above all drivers from Sweden and Belgium began to dominate the sport. In the late 1960s, Japanese manufacturers build motorcycles that could be emulated in this branch. Suzuki won the 1970 championship title with a 250cc motocross. 1975 was an even lighter class with 125cc two-stroke engines. During this period the interest in the US also increased very much for this sport, European drivers still dominated the races but in the early 1980s, the Americans won some races.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/h5.jpg",
                  ),
                  Text(
                    "Gary Jones, Brad Lackey and Jim Pomeroy in 1972 - Courtesy Tom White",
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "The early 1980s saw a huge development of these machines. The old system with dual rear shock absorbers were replaced by a newer system where the shock absorber was mounted in the middle.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/h3.jpg",
                  ),
                  Text(
                    "https://timmyaronsson.wordpress.com/2016/03/06/history-of-motocross/",
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    "assets/images/h4.jpg",
                  ),
                  Text(
                    "https://timmyaronsson.wordpress.com/2016/03/06/history-of-motocross/",
                    style: TextStyle(
                      fontSize: 7,
                    ),
                  ),
                  Text(
                    "The engines were liquid- based cooling systems instead of the old cooling with large fins around the cylinder and cylinder head.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "In the 1990s, the United States began to discuss environmental legislation in force including motocross, this meant that they began to develop the more environmentally friendly four-stroke engine. Around the turn of the millennium, all the major bike manufacturers started manufacturing motocross bikes with four-stroke engines. After that the European manufacturers won races again. Husqvarna, Husaberg and KTM was the most successful manufacturers in Europe.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "In recent times, there have been a number of branches in motocross. Freestyle Motocross is one of those events where drivers get points based on their jumps and the ” stunts ” they perform in the air. Retro Class with motorcycles manufactured before 1975 have emerged. Another branch that has become very dominant is Supermoto, where you take a motocross motorcycle and mount tires made ​​for asphalt, with this combination you drive on a smoother path with mixed sections of asphalt and gravel.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "https://timmyaronsson.wordpress.com/2016/03/06/history-of-motocross/",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  Text(
                    "© 2013-2023 Curtis Bikes. All rights reserved. Website by Winter Design",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  Text(
                    "© Samo Vidic/Red Bull Content Pool MOTOCROSS A brief history of motocross racing",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
