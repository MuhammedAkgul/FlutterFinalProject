import 'package:flutter/material.dart';
import 'package:lamp_app_ui/home_page.dart';
import 'package:lamp_app_ui/second_page.dart';
import 'package:lamp_app_ui/bottomnav.dart';

class ClipRRectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //Burada bottomnavigationbar var
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time), label: "settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.accessibility_new), label: "settings"),
          ],
          //secilen iteme buyukluk ve renk veriyor
          selectedLabelStyle: TextStyle(fontSize: 16),
          selectedItemColor: Color.fromARGB(255, 68, 64, 64),
        ),
        appBar: AppBar(
          // appbar sagtaraf
          actions: [
            //Ikinci sayfaya navigasyon gecis
          ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: Text(
                'Anasayfa',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),

            ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: Text(
                'Takim',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second()),
                );
              },
            ),
            //ucuncu sayfaya navigasyon gecis

            ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: const Text(
                'Hakkimizda',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClipRRectApp()),
                );
              },
            ),

            ElevatedButton(
                 style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
              child: const Text(
                'Widgetler',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bottom()),
                );
              },
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.login,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          // appbar sol taraf
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.amber,
        ),

        body: ClipRRectExample(),
        backgroundColor: Color(0xff323232),
      ),
    );
  }
}

class ClipRRectExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Color.fromARGB(93, 0, 0, 0),
              child: const Text(
                'Siparisinizi verin!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(20.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(40.0),
            ),
            child: Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Color.fromARGB(93, 0, 0, 0),
              child: const Text(
                '2 gun icinde teslim edelim!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //child code
          Container(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: const Text('SI'),
                    ),
                    label: const Text('Siparis'),
                  ),
                  SizedBox(width: 10),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: const Text('KA'),
                    ),
                    label: const Text('Kargo'),
                  ),
                  SizedBox(width: 10),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: const Text('TE'),
                    ),
                    label: const Text('Teslimat'),
                  ),
                  SizedBox(width: 10),
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      child: const Text('GR'),
                    ),
                    label: const Text('Garanti'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
