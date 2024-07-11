import 'package:flutter/material.dart';
import 'package:task3/screens/score.dart';
import 'package:task3/utils/colors.dart';

class Questions extends StatefulWidget {
  Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  String? groubvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          'Questions',
          style: TextStyle(color: secondaryColor),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: double.infinity,
        width: double.infinity,
        color: thirdColor,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text("Qustion number 1",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold)),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.id lacinia nunc nunc id nunc.",
                style: TextStyle(color: secondaryColor, fontSize: 20),
              ),
              RadioListTile(
                  title: const Text(
                    "data",
                    style: TextStyle(color: secondaryColor),
                  ),
                  value: '1',
                  groupValue: groubvalue,
                  onChanged: (value) {
                    setState(() {
                      groubvalue = value;
                    });
                    groubvalue = value;
                  }),
              RadioListTile(
                  title: const Text(
                    "data",
                    style: TextStyle(color: secondaryColor),
                  ),
                  value: '2',
                  groupValue: groubvalue,
                  onChanged: (value) {
                    setState(() {
                      groubvalue = value;
                    });
                    groubvalue = value;
                  }),
              RadioListTile(
                  title: const Text(
                    "data",
                    style: TextStyle(color: secondaryColor),
                  ),
                  value: '3',
                  groupValue: groubvalue,
                  onChanged: (value) {
                    setState(() {
                      groubvalue = value;
                    });
                    groubvalue = value;
                  }),
              RadioListTile(
                  title: const Text(
                    "data",
                    style: TextStyle(color: secondaryColor),
                  ),
                  value: '4',
                  groupValue: groubvalue,
                  onChanged: (value) {
                    setState(() {
                      groubvalue = value;
                    });
                    groubvalue = value;
                  }),
              RadioListTile(
                  title: const Text(
                    "data",
                    style: TextStyle(color: secondaryColor),
                  ),
                  value: '5',
                  groupValue: groubvalue,
                  onChanged: (value) {
                    setState(() {
                      groubvalue = value;
                    });
                    groubvalue = value;
                  }),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () {},
                    child: const Text(
                      "Previous",
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
                        MaterialPageRoute(builder: (context) => const Score()),
                      );
                    },
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
