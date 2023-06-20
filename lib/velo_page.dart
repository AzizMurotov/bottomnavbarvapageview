import 'package:flutter/material.dart';
class VeloPage extends StatefulWidget {
  static const String id = "velo_page";
  const VeloPage({Key? key}) : super(key: key);

  @override
  State<VeloPage> createState() => _VeloPageState();
}

class _VeloPageState extends State<VeloPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.deepOrange, Colors.blue]
              )
            ),
          ),
          title: const Text('Velo bottom nav bar',style: TextStyle(color: Colors.lime),),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.car_crash_outlined,color: Colors.lime,),
              ),
              Tab(
                icon: Icon(Icons.motorcycle,color: Colors.lime,),
              ),
              Tab(
                icon: Icon(Icons.directions_bike,color: Colors.lime,),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image:AssetImage("assets/images/supercar-wallpapers-bugatti-4.jpg"),
                  )
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage("assets/images/motocycle3.jpg"),
                  )
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:AssetImage("assets/images/velobike1.jpg"),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
