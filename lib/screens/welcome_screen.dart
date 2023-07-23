import 'package:flutter/material.dart';
import '../colors.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            pColor.withOpacity(0.8),
            pColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset("images/doctor.png"),
          ),
          SizedBox(height: 15),
          Text("Book Doctors Online!",
              style: TextStyle(
                  color: wColor,
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2)),
          SizedBox(height: 20),
          Text("Appoint Your Doctor ...",
              style: TextStyle(
                  color: wColor, fontSize: 15, fontWeight: FontWeight.w500)),
          SizedBox(height: 60),
          Material(
            color: wColor,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text("Let's Go",
                    style: TextStyle(
                        color: pColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          SizedBox(height: 70),
          Image.asset(
            "images/lined heart.png",
            color: wColor,
            scale: 2,
          ),
        ],
      ),
    ));
  }
}
