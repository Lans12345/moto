import 'package:flutter/material.dart';
import 'package:moto/widgets/appbar_widget.dart';
import 'package:moto/widgets/text_widget.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget('Rules and Regulations', context),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            opacity: 0.25,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/b3.jpg',
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
                  TextBold(
                      text:
                          'In motocross, there are a number of rules and regulations that are followed to ensure the safety of the riders and the fairness of the competition. Some of the key rules and regulations are the following: ',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 20),
                  TextRegular(
                      text:
                          '1. Riders must have a valid racing license in order to participate in a motocross event.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '2. Riders are required to wear protective gear, including a helmet, gloves, boots, and protective suits.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '3. Only bikes that meet the required safety standards are allowed to participate in a motocross event.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '4. Each rider is allowed a certain number of mechanics to work on their bike, and the use of certain tools and equipment is restricted.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '5. Motocross courses are typically marked with flags to indicate different hazards or areas of the course. Riders must follow the flag rules at all times.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '6. If a rider falls off their bike during a race, they are required to immediately move to the side of the course and wait for the other riders to pass.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '7. If a rider is deemed to have deliberately caused an accident or interfered with another rider, they may be disqualified from the race.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '8. Motocross officials have the authority to disqualify riders for any violation of the rules or for dangerous or unsportsmanlike behavior.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 10),
                  TextRegular(
                      text:
                          '9. Motocross organizers may also implement additional rules and regulations specific to the event or location.',
                      fontSize: 14,
                      color: Colors.black),
                  const SizedBox(height: 50),

                  //Header
                  Center(
                    child: Text(
                      "How Do Motocross Races Work?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "If you’ve recently found yourself getting into motocross, you might have noticed the rules aren’t as straightforward as riders winning a race. There are numerous aspects to consider in motocross racing, including the different races, the dirt bike classes, and how each of these features operates in the world of motocross. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/r1.jpg",
                  ),
                  Text(
                    "https://uk.riskracing.com/blogs/news/how-do-motocross-races-work-how-long-how-many-and-how-much",
                    style: TextStyle(
                      fontSize: 5,
                    ),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    "Still confused about how motocross races work? That’s ok, there are a few things to be explained and we appreciate why it’s not easy to understand. Read on below to find out how motocross races work, how long the races generally go for, and how much it costs to race. You’ll be able to explain motocross to anyone once you’ve read our simple guide. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/r2.jpg",
                  ),
                  Text(
                    "https://uk.riskracing.com/blogs/news/how-do-motocross-races-work-how-long-how-many-and-how-much",
                    style: TextStyle(
                      fontSize: 5,
                    ),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    "Typically, an outdoor motocross event sanctioned by the American Motorcyclist Association (AMA), will have what we call two motos. Motos run for thirty minutes each, plus two laps at the end of each 30-minute moto. Riders are awarded points based on the position in which they finish the race. Here is a table of how the point system works for the position you finish in the race:",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/score.jpg",
                  ),
                  Text(
                    "https://uk.riskracing.com/blogs/news/how-do-motocross-races-work-how-long-how-many-and-how-much",
                    style: TextStyle(
                      fontSize: 5,
                    ),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    "Because there are two motos in each class of the event, the winner is the person who finishes with the highest point total. For example, if you came 1st in each race, you would receive a total amount of 50 points and would be the overall winner of your event. Simple right? Wrong. If you happened to come 1st in your first race and then 2nd in your second race and one of your opponents was 2nd in the first race and then 1st in the second race, they would win even though you both have the same total of points. The reason the AMA scores this way is so that any possible ties are essentially broken by the better performer of the second moto race. So, there are no ties and we have a clear winner.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Image.asset(
                    "assets/images/ama.jpg",
                  ),
                  Text(
                    "https://uk.riskracing.com/blogs/news/how-do-motocross-races-work-how-long-how-many-and-how-much",
                    style: TextStyle(
                      fontSize: 5,
                    ),
                  ),
                  const SizedBox(height: 50),

                  //HEADER 2
                  Center(
                    child: Text(
                      "What is the Flag System?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Like all motorcycle racing, motocross also has a flag system to notify riders and spectators of information that is relevant to the event. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Here are the flag colors you might see during a motocross event and what they mean:",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Red Flag – Immediate Stop",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The red flag signals to racers that they need to slow down, advance slowly and cautiously to their pit and stop the race. This might be due to injury on the course. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Yellow Flag – Caution",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "This flag signals that there is an obstruction on the course and for racers to show caution. You must slow down but you can still pass other racers. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "White Flag – Final Lap",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The white flag is for individual riders to let them know when they are on their last lap of the race. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Green Flag – The Beginning",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The green flag signals the start of the event as well as the okay to go ahead or continue after another colored flag might have slowed down the race (yellow or red for example). ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Blue Flag – Overlap Warning",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Nobody wants to see any flag other than the green and the checkered flag. But the blue flag might make you pick up your game as it shows you’re going to be overlapped and left behind. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "If you see the blue flag with a yellow stripe through it, this is an indicator that another racer is going to overlap you. You might want to change the gears and step on it. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Black Flag – Individual Rider",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The black flag indicates that an individual rider needs to stop the race immediately and report to officials. The rider’s race number will be placed on a board large enough for them to see they need to stop their race event and clear the track. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Red-Cross Flag – Medical Personnel",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The red-cross flag shows riders that medical personal and/or equipment are either on the track or close to the track. Riders will need to proceed with caution and slow right down. You cannot pass another rider when the red-cross flag is signaled. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Checkered Flag – The End",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "The checkered flag signifies the end of the race. When you see the checkered flag waving, you’ve finished your final lap and you’ll receive your placing position in the race. ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Image.asset(
                    "assets/images/flag.jpg",
                  ),
                  Text(
                    "https://uk.riskracing.com/blogs/news/how-do-motocross-races-work-how-long-how-many-and-how-much",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "© Samo Vidic/Red Bull Content Pool",
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  Text(
                    "© 2023 Red Bull",
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
