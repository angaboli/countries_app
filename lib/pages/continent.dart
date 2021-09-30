import 'dart:collection';

import 'package:countries_app/pages/all_countries.dart';
import 'package:countries_app/pages/country.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../continent_card.dart';

class Continent extends StatefulWidget{
  @override
  _ContinentState createState() => _ContinentState();

}

class _ContinentState extends State<Continent>{

  List countries = [];
/*
  List filteredContinent = [];

  getCountries() async{
    var response = await Dio().get('https://restcountries.eu/rest/v2/all');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data){
      setState(() {
        countries = filteredContinent = data;
      });
    });
    super.initState();
  }

*/


  @override
  Widget build(BuildContext context) {

    //print(_filterContinent('Africa'));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Learn Countries',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1598292977405-b31b7062aeee?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          child: /*TextField(
                onChanged: (value){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllCountries(continent: "Africa"),
                  ));
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(hintText: "Europe",
                    hintStyle: TextStyle(color: Colors.white)
                )
          ),
        )*/
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/africa.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                )
              ),
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AllCountries(),
                  ));
                },
                child: const Text('Africa', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        )
        /*GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: <Widget>[
                  ContinentCard(title: 'Africa', image: 'africa.png'),
                  ContinentCard(title: 'Asia', image: 'asia.png'),
                  ContinentCard(title: 'Europe', image: 'europe.png'),
                  ContinentCard(title: 'North America', image: 'northAmerica.png'),
                  ContinentCard(title: 'Oceania', image: 'oceania.png'),
                  ContinentCard(title: 'South America', image: 'southAmerica.png'),
                ],
              )*/
      ),
    ));
 }
}

/*
class CountriesByRegion extends StatelessWidget {


  CountriesByRegion(filteredContinent);

  List countries = [];


  getCountries() async{
    var response = await Dio().get('https://restcountries.eu/rest/v2/all');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data){
      setState(() {
        countries = data;
      });
    });
    super.initState();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Learn Countries | All countries',
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://images.unsplash.com/photo-1551921038-a9009c20adb3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGVhcnRofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.cover,
              )
          ),
        )
        child:  ListView.builder(
        //itemCount: countries.length,
        itemBuilder: (BuildContext context,int index){
          return GestureDetector(
            onTap: ()
            {
              Navigator.of(context).push(
                  SizeRoute(page : Country(countries[index]),
                  ));
            },

            child: Card(
              elevation: 10,
              */
/*leading: CircleAvatar(
                        child: SvgPicture.network(country['flag']),
                      ),*//*

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 10.0,
                        child: SvgPicture.network(
                          countries[index]['flag'],
                          height: 30.0,
                          width: 40.0,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    Text(
                      countries[index]['name'],
                      style: TextStyle(fontSize: 18),
                    ),

                  ],

                ),
              ),
            ),
          );}

    ):Center(child: CircularProgressIndicator()),

    );
  }
}
*/



