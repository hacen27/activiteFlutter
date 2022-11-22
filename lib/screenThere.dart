import 'package:flutter/material.dart';
import 'package:tpflutter/screenFour.dart';

class ScreenThere extends StatelessWidget {
  const ScreenThere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 700,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgr.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenFour(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 120,
              margin: EdgeInsets.only(bottom: 60),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 66, 134, 223),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "ocsdocosdpcjosdcjsdocjaASas\nsdfbjhdjhhwddwdwddf\nsdfsdfsdfsdfdasdjbAAAsDJ\nASDGUGASASDASsBD",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 80)
        ]),
      ),
    );
  }
}
