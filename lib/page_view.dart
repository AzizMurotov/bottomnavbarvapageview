import 'package:bottomnavbar/moto_page.dart';
import 'package:bottomnavbar/taxi_page.dart';
import 'package:bottomnavbar/velo_page.dart';
import 'package:flutter/material.dart';

class NavbarPageView extends StatefulWidget {
  static const String id = "navbar_page_view";

  const NavbarPageView({Key? key}) : super(key: key);

  @override
  State<NavbarPageView> createState() => _NavbarPageViewState();
}

class _NavbarPageViewState extends State<NavbarPageView> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index1) {
          setState(() {
            _currentIndex = index1;
          });
        },
        children: const [
          TaxiPage(),
          MotoPage(),
          VeloPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_taxi,color: Colors.lime,),
            label: "Taxi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.motorcycle,color: Colors.lime,),
            label: "MotoTaxi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike_outlined,color: Colors.lime,),
            label: "Bicycle",
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.lime,
        onTap: (index2) {
          setState(() {
            _currentIndex = index2;
            _pageController.animateToPage(
              _currentIndex,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );
          });
        },
      ),
    );
  }
}
