import 'package:bottomnavbar/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class TaxiPage extends StatefulWidget {
  static const String id = "taxiPage";
  const TaxiPage({Key? key}) : super(key: key);

  @override
  State<TaxiPage> createState() => _TaxiPageState();
}

class _TaxiPageState extends State<TaxiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(onPressed: (){
          Navigator.pushReplacementNamed(context, HomePage.id);
        }, icon: const Icon(Icons.arrow_back_ios),),
      ),
      body: Center(
        child: Lottie.asset("assets/lotties/lf30_5nzbq6ql.json",height: 600),
      ),
    );
  }
}
