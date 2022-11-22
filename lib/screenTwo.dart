import 'package:flutter/material.dart';
import 'package:tpflutter/screenThere.dart';

class SreenTwo extends StatefulWidget {
  const SreenTwo({super.key});

  @override
  State<SreenTwo> createState() => _SreenTwoState();
}

class _SreenTwoState extends State<SreenTwo> {
  Widget textLine(String title, String value) {
    return RichText(
      maxLines: 14,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
              text: title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
          TextSpan(
              text: value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ))
        ],
      ),
    );
  }

  Widget textLine2(String title, String value) {
    return RichText(
      maxLines: 14,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        children: [
          TextSpan(
              text: title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 17,
              )),
          TextSpan(
              text: value,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.HAc-sPE8y5CoQq-NUlN0xwAAAA?pid=ImgDet&rs=1',
              ),
              radius: 50.0,
            ),
            SizedBox(height: 10),
            Text("Utilisateur de L'application"),
            SizedBox(height: 15),
            textLine('Element  ', '                           Nombre'),
            SizedBox(height: 15),
            textLine2('Rendez-vous ', '                          1'),
            SizedBox(height: 15),
            textLine2('Rendez-vous ', '                          2'),
            SizedBox(height: 15),
            textLine2('Rendez-vous ', '                          4'),
            SizedBox(height: 15),
            textLine2('Rendez-vous ', '                          5'),
            SizedBox(height: 30),
            Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: ((value) {})),
                      Text("Rendez-Vous"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: ((value) {})),
                      Text("Urigence"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: ((value) {})),
                      Text("Suivi"),
                    ],
                  ),
                ]),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/fluttericon.png',
                      height: 70,
                      width: 70,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenThere(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4)),
                        child: Text('Envoyer',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text("CLINIC",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      height: 30,
                      child: Text('Annuler',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
