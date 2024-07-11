import 'package:flutter/material.dart';
import 'package:task3/screens/category.dart';
import 'package:task3/screens/landing_screen.dart';
import 'package:task3/utils/colors.dart';
import 'package:task3/utils/images_name.dart';
//
class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Score', style: TextStyle(color: secondaryColor)),
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: thirdColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(score),
            ),
            const Text('Congratulations.',
                style: TextStyle(fontSize: 30, color: secondaryColor)),
            const Spacer(),
            const Text('Your score is',
                style: TextStyle(fontSize: 30, color: secondaryColor)),
            const Text('100',
                style: TextStyle(fontSize: 30, color: secondaryColor)),
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryScreen()),
                      );
                    },
                    child: const Text(
                      "Play again",
                      style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LandingScreen()),
                      );
                    },
                    child: const Text(
                      "Exit",
                      style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
