import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                width: double.infinity,
                height: 200.0,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.HAc-sPE8y5CoQq-NUlN0xwAAAA?pid=ImgDet&rs=1',
                        ),
                        radius: 40.0,
                      ),
                      Text(
                        "El hacen Mohamed Soueilem",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "hacem144@gmail.com",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                    Color.fromARGB(255, 146, 207, 231),
                    Color.fromARGB(255, 15, 130, 224)
                  ])),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.inbox_outlined),
              title: Text('Boite de Reception'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_page_outlined),
              title: Text('Contacts'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.calendar_today_outlined),
              title: Text('Calendrier'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Drawer Example'),
      ),
    );
  }
}
