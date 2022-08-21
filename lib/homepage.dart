import 'dart:math';

import 'package:flutter/material.dart';

import './container_card.dart';
import './button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int computerCounter = 0;
  int playerCounter = 0;
  String resultDisplay = "";
  String endResult = "";

  void rocks() {
    Random random = Random();
    int randomizer = random.nextInt(3);
    if (randomizer == 0) {
      setState(() {
        resultDisplay = "That was a draw!😜";
      });
    } else if (randomizer == 1) {
      setState(() {
        resultDisplay = "Computer won this round";
        computerCounter++;
      });
    } else if (randomizer == 2) {
      setState(() {
        resultDisplay = "Yayy, You won this round😎";
        playerCounter++;
      });
    }

    if (computerCounter > 10) {
      setState(() {
        endResult = "You Lose!🤦🏾‍♂️";
        computerCounter = 0;
        playerCounter = 0;
      });
    } else if (playerCounter > 10) {
      setState(() {
        endResult = "You Win🎉";
        computerCounter = 0;
        playerCounter = 0;
      });
    }
    print(randomizer);
  }

  void paper() {
    Random random = Random();
    int randomizer = random.nextInt(3);
    if (randomizer == 0) {
      setState(() {
        resultDisplay = "Wohoo!, You won again!😁";
        playerCounter++;
      });
    } else if (randomizer == 1) {
      setState(() {
        resultDisplay = "We have a tie😅";
      });
    } else if (randomizer == 2) {
      setState(() {
        resultDisplay = "You lost that round😬";
        computerCounter++;
      });
    }

    if (computerCounter > 10) {
      setState(() {
        endResult = "You Lose!🤦🏾‍♂️";
        computerCounter = 0;
        playerCounter = 0;
      });
    } else if (playerCounter > 10) {
      setState(() {
        endResult = "You Win🎉";
        computerCounter = 0;
        playerCounter = 0;
      });
    }
    print(randomizer);
  }

  void scissors() {
    Random random = Random();
    int randomizer = random.nextInt(3);
    if (randomizer == 0) {
      setState(() {
        resultDisplay = "Omo, try again🤣";
        computerCounter++;
      });
    } else if (randomizer == 1) {
      setState(() {
        resultDisplay = "Oporr, Na you oo!🙌🏾";
        playerCounter++;
      });
    } else if (randomizer == 2) {
      setState(() {
        resultDisplay = "That was a draw!😜";
      });
    }

    if (computerCounter > 10) {
      setState(() {
        endResult = "You Lose!🤦🏾‍♂️";
        computerCounter = 0;
        playerCounter = 0;
      });
    } else if (playerCounter > 10) {
      setState(() {
        endResult = "You Win🎉";
        computerCounter = 0;
        playerCounter = 0;
      });
    }
    print(randomizer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('game'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 8,
            ),

            //ROW- CONTAINS SCOREBOARD AND COUNTER
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CardContainer(
                  text: ('Computer'),
                  value: (computerCounter).toString(),
                ),
                const SizedBox(
                  height: 4,
                ),
                CardContainer(
                  text: ('You'),
                  value: (playerCounter).toString(),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            //Temporary Result Display
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                (resultDisplay).toString(),
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 22,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //Result Display
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                (endResult).toString(),
                style: TextStyle(
                    fontFamily: 'Raleway-Bold',
                    fontSize: 35,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SpecialButton(
                    eventHandler: rocks,
                    text: 'Rock',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SpecialButton(eventHandler: paper, text: 'Paper'),
                  const SizedBox(
                    height: 12,
                  ),
                  SpecialButton(eventHandler: scissors, text: 'Scissors')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
