import 'package:countries_app/pages/all_countries.dart';
import 'package:countries_app/pages/continent.dart';
import 'package:countries_app/pages/random_country.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(fontFamily: 'Andika New Basic'),
  ));
}


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>{

  String _currentPage = "Continent";
  int _currentIndex = 0;

  final List<Widget> _children = [
    RandomCountry(),
    AllCountries(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Random country',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'All countries',
            backgroundColor: Colors.lightGreenAccent,

          ),
        ],
      ),

    );
  }



}