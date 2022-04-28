// ignore_for_file: prefer_const_constructors, unused_local_variable, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:posttest4_2009106089_rizkyhamdani/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Montserrat'), home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/landingPage.png'), fit: BoxFit.cover)),
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
          child: const Text('Start'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainPage()),
            );
          },
        ),
      ),
    );
  }
}
