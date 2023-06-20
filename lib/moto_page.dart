import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MotoPage extends StatefulWidget {
  static const String id = "moto_page";

  const MotoPage({Key? key}) : super(key: key);

  @override
  State<MotoPage> createState() => _MotoPageState();
}

class _MotoPageState extends State<MotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/lotties/azizbek.json"),
      ),
    );
  }
}
