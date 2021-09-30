import 'dart:collection';
import 'dart:math';

import 'package:countries_app/pages/all_countries.dart';
import 'package:countries_app/pages/country.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../continent_card.dart';

class RandomCountry extends StatefulWidget{
  @override
  _RandomCountryState createState() => _RandomCountryState();

}

class _RandomCountryState extends State<RandomCountry>{

  List countries = [];
  final _random = new Random();
  var randomCountry = 0;

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


  void updateCountry(){
    randomCountry = _random.nextInt(countries.length);
    //randomCountry = 13;
  }

  @override
  Widget build(BuildContext context) {

    return
      //print(country['name']);
      //print();
      Scaffold(
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
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.blueGrey.withOpacity(.4),
                          Colors.blueGrey.withOpacity(.2),
                        ]
                    )
                ),
                height: 500,
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(0.8),
                          child: SvgPicture.network(
                            countries[randomCountry]['flag'],
                            width: 300.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Table(
                            children: [
                              TableRow(children: [
                                Text('Name', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['name'], style: TextStyle(fontSize: 15, color: Colors.white)),
                              ]),
                              TableRow(children: [
                                Text('Capital', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['capital'], style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                              TableRow(children: [
                                Text('Continent', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['region'], style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                              TableRow(children: [
                                Text('Population', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['population'].toString(), style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                              TableRow(children: [
                                Text('Area', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['area'].toString(), style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                              TableRow(children: [
                                Text('TimeZone', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['timezones'].toString(), style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                              TableRow(children: [
                                Text('Currency', style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
                                Text(countries[randomCountry]['currencies'][0]['name'], style: TextStyle(fontSize: 15, color: Colors.white))
                              ]),
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(.2),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.blueGrey.withOpacity(.5),
                                      Colors.blue.withOpacity(.5),
                                    ]
                                )
                            ),
                            child: IconButton(
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(Icons.refresh),
                              onPressed: (){
                                setState(() {
                                  updateCountry();
                                });
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          )
      );
  }


}