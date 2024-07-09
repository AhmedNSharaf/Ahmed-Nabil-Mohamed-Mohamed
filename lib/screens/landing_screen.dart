import 'package:flutter/material.dart';
import 'package:task3/screens/login_screen.dart';
import 'package:task3/utils/images_name.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),  
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Image.asset(background),
            const Spacer(),
            Image.asset(appLogo),

            const Text(
              'ITI Quiz app',
              style: TextStyle(
                fontSize: 30,
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
                fontFamily: "GaMaamli",
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'We are creative, enjoy your app',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Margarine",
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const login();
                    }),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green),
                  minimumSize: WidgetStateProperty.all(const Size(350, 50)),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
