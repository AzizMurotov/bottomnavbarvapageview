import 'package:bottomnavbar/page_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.pink, Colors.blue],
          )),
        ),
      ),
      body: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, NavbarPageView.id);
            },
        child: Container(
          height: 100,
          width: 300,
          color: Colors.red,
          child: const Center(
            child: Text(
              "bottom nav bar _ page view",
              style: TextStyle(
                fontFamily: "Azizbek",
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
      )),
    );
  }
}
