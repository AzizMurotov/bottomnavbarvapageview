import 'package:bottomnavbar/home_page.dart';
import 'package:bottomnavbar/moto_page.dart';
import 'package:bottomnavbar/page_view.dart';
import 'package:bottomnavbar/taxi_page.dart';
import 'package:bottomnavbar/velo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        NavbarPageView.id:(context)=> const NavbarPageView(),
        TaxiPage.id:(context)=> const TaxiPage(),
        MotoPage.id:(context)=> const MotoPage(),
        VeloPage.id:(context)=> const VeloPage(),
      },
    );
  }
}
