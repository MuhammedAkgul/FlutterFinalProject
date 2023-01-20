import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lamp_app_ui/cliprrect.dart';
import 'package:lamp_app_ui/second_page.dart';

class Bottom extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Bottom> {
  bool _value = false;
  double _lowerValue = 0;
  double _upperValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //Burada switch widgeti kullandim
          Switch(
            value: _value,
            onChanged: (bool newValue) {
              setState(() {
                _value = newValue;
              });
            },
          ),
          Text(
            _value ? 'Switch acik' : 'Switch kapali',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 231, 229, 229)),
          ),



          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            //Burada RangeSlider widget kullanildi
            child: RangeSlider(
              values: RangeValues(_lowerValue, _upperValue),
              min: 0,
              max: 100,
              divisions: 100,
              onChanged: (RangeValues values) {
                setState(() {
                  _lowerValue = values.start;
                  _upperValue = values.end;
                });
              },
            ),
          ),
          Text(
            "Aralik: $_lowerValue - $_upperValue",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 231, 229, 229)),
          ),
          SizedBox(height: 100),
//Burada CupertinoButton widget kullanildi
          CupertinoButton(
            child: Text(
              "Uzerime tikla!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 231, 229, 229)),
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                //Burada Cuperactionsheet widget kullanildi

                builder: (BuildContext context) => CupertinoActionSheet(
                  title: Text("Hosgeldiniz lutfen bir secim yapin"),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text("Beni secebilirsin"),
                      onPressed: () {},
                    ),
                    CupertinoActionSheetAction(
                      child: Text("Ayni zamanda benide secebilirsin"),
                      onPressed: () {},
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text("Cancel"),
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
        ])));
  }
}
