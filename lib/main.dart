import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tpflutter/screenTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var val;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Color.fromARGB(255, 120, 163, 236),
                child: Image.asset('assets/pro.png', height: 100, width: 80),
                radius: 50),
            SizedBox(height: 20.0),
            Row(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text("Ajoute")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: true,
                        groupValue: const {},
                        onChanged: ((value) {})),
                    Text("Suprimer")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: false,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    Text("Modifier")
                  ],
                ),
              ],
            ),
            TextField(
                decoration: InputDecoration(
              hintText: "Nom",
            )),
            TextField(decoration: InputDecoration(hintText: "Prenom")),
            TextField(decoration: InputDecoration(hintText: "Adress")),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: ((value) {})),
                        Text("Baccalauriat"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: ((value) {})),
                        Text("BTS"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: false,
                            onChanged: ((value) {
                              setState(() {
                                _value = value!;
                              });
                            })),
                        Text("Licence"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: ((value) {})),
                        Text("Master"),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: ((value) {})),
                        Text("Doctorat"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SreenTwo(),
                              ),
                            );
                          },
                          child: Text('CONFIRMER',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Text("Resultat!"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
