import 'package:flutter/material.dart';
import 'package:lamp_app_ui/bottomnav.dart';
import 'package:lamp_app_ui/cliprrect.dart';
import 'package:lamp_app_ui/main.dart';
import 'package:lamp_app_ui/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ekran buyuklugu ayarlari
  var screenHeight;
  var screenWidth;
  bool isfavorite = false;
  // urun resim ayarlari
  // resimler icin Resimlericin yazdik
  Widget Resimlericin({image}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          height: screenHeight * 0.2,
          width: screenWidth * 0.3 + 20,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 0, 0, 0),
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
          //resimlerdeki sag uste favorite iconu
          child: IconButton(
            onPressed: () {
              setState(() {
                isfavorite = !isfavorite;
              });
            },
            icon: Icon(
              Icons.favorite,
              color:
                  isfavorite ? Color.fromARGB(255, 55, 52, 50) : Colors.white,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //responsive ayarlari icin
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      
      appBar: AppBar(
        // appbar sagtaraf
        actions: [
          //Ikinci sayfaya navigasyon gecis
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
      body: Container(
        color: Color.fromARGB(127, 0, 0, 0),
        child: Column(
          children: [
            // ana resim
            Expanded(
              flex: 2, // asagiya, yukariya aliyor
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/moon.jpeg"),
                  ),
                ),
              ),
            ),
            //en soldaki yazi
            Expanded(
              child: Row(
                children: [
                  //ana yazi
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hosgeldiniz!",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xffffe7d0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Nasilsin?",
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xffc2b0a0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Urunlerimize goz atmak istermisin?",
                                style: TextStyle(
                                  color: Color(0xffb0b0b0),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Ozenle hazirlanmis urunlerimiz",
                                style: TextStyle(
                                  color: Color(0xffb0b0b0),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //kucuk basliklar
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Text(
                      "Kaydirabilirsin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Text(
                      "1/5",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //urun listesi
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Resimlericin(image: "images/Naamloos.png"),
                        Resimlericin(image: "images/camera.jpg"),
                        Resimlericin(image: "images/camera4.jpg"),
                        Resimlericin(image: "images/camera3.jpg"),
                      ],
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
