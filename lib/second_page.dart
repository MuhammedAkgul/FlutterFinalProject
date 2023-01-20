import 'package:flutter/material.dart';
import 'package:lamp_app_ui/cliprrect.dart';
import 'package:lamp_app_ui/bottomnav.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Burada bottomnavigationbar var
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
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Anasayfa",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ElevatedButton(
            child: const Text(
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
      ),
      body:

          //takim uyueleri
          Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          color: Color(0xff1b1b1b),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/bobie.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Bob Marley",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(207, 250, 250, 250),
                      backgroundColor: Color.fromARGB(255, 50, 49, 49),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 50),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("images/teamplayer2.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Vincent",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(207, 250, 250, 250),
                      backgroundColor: Color.fromARGB(255, 50, 49, 49),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 50),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("images/teamplayer3.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Einstein",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(207, 250, 250, 250),
                      backgroundColor: Color.fromARGB(255, 50, 49, 49),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 50),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("images/teamplayer4.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Trump",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(207, 250, 250, 250),
                      backgroundColor: Color.fromARGB(255, 50, 49, 49),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: 50),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage("images/bobmarley.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    "Bob Junior",
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(207, 250, 250, 250),
                      backgroundColor: Color.fromARGB(255, 50, 49, 49),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              Container(
                child: Row(
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
