// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:posttest4_2009106089_rizkyhamdani/inputPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var varHeight = MediaQuery.of(context).size.height;
    var varWidth = MediaQuery.of(context).size.width;

    return Container(
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/yellow-01-01.png'), fit: BoxFit.cover)),
      child: ListView(children: [
        // Tombol Menu
        Container(
          margin: EdgeInsets.only(top: 20, left: 15),
          width: varWidth / 45,
          height: varHeight / 45,
          alignment: Alignment.topLeft,
          child: Image.asset('assets/menu.png'),
        ),
        SizedBox(
          height: 70,
        ),
        // Profile
        Row(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 30, right: 20),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                      width: 1.2, color: Colors.black.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(50)),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/foto.jpg'),
              ),
            ),
            Container(
                width: 2,
                height: 100,
                margin: EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/garis.png'),
                        fit: BoxFit.cover))),
            Column(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 70),
                  child: Text(
                    'Hello,',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Rizky Hamdani',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                )
              ],
            ),
            Container()
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        // Cash
        Container(
          height: varHeight / 4,
          width: varWidth,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.523),
                    blurRadius: 25.0,
                    spreadRadius: 3.0,
                    offset: Offset(15.0, 20.0))
              ],
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
              borderRadius: BorderRadius.circular(30)),
          child: Row(children: <Widget>[
            Container(
              width: 140,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/wallet.png'),
                      fit: BoxFit.contain)),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 50, right: 80),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "IDR",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    height: 2,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/garisMiring.png'),
                            fit: BoxFit.cover))),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Text(
                    "50.000.000,00",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20),
                  ),
                ),
              ],
            )
          ]),
        ),
        // Add Expenses
        SizedBox(
          height: 30,
        ),
        Container(
          height: 40,
          width: varWidth,
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Row(children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 5),
              height: 40,
              width: varWidth / 2.7,
              decoration: BoxDecoration(
                  color: Color(0xff6BCB77),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.523),
                        blurRadius: 25.0,
                        spreadRadius: 3.0,
                        offset: Offset(15.0, 20.0)),
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Top Expenses',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
              ),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            Container(
              alignment: Alignment.center,
              width: varWidth / 2,
              height: varHeight / 4,
              margin: EdgeInsets.all(20),
              child: Text('Education',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              decoration: BoxDecoration(
                  color: Color(0xff6BCB77),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.523),
                        blurRadius: 25.0,
                        spreadRadius: 3.0,
                        offset: Offset(15.0, 20.0)),
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              alignment: Alignment.center,
              width: varWidth / 2,
              height: varHeight / 4,
              margin: EdgeInsets.all(20),
              child: Text('Shopping',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              decoration: BoxDecoration(
                  color: Color(0xff6BCB77),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.523),
                        blurRadius: 25.0,
                        spreadRadius: 3.0,
                        offset: Offset(15.0, 20.0)),
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              alignment: Alignment.center,
              width: varWidth / 2,
              height: varHeight / 4,
              margin: EdgeInsets.all(20),
              child: Text('Food & Drinks',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              decoration: BoxDecoration(
                  color: Color(0xff6BCB77),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.523),
                        blurRadius: 25.0,
                        spreadRadius: 3.0,
                        offset: Offset(15.0, 20.0)),
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              alignment: Alignment.center,
              width: varWidth / 2,
              height: varHeight / 4,
              margin: EdgeInsets.all(20),
              child: Text('Entertainment',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              decoration: BoxDecoration(
                  color: Color(0xff6BCB77),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.523),
                        blurRadius: 25.0,
                        spreadRadius: 3.0,
                        offset: Offset(15.0, 20.0)),
                  ],
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xffFFD93D), Color(0xff4D96FF)]),
                  borderRadius: BorderRadius.circular(30)),
            )
          ]),
        )
      ]),
    );
  }
}
