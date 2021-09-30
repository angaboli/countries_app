import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Country extends StatelessWidget {
  var country;
  Country(this.country);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(country['name']),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.blue.withOpacity(.4),
                  Colors.blueGrey.withOpacity(.2),
                ]
            )
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.network(
                      country['flag'],
                    // height: 0.0,
                    width: 340.0,),
                ),
              ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Table(
                children: [
                  TableRow(children: [
                    Text('Name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['name'], style: TextStyle(fontSize: 15)),
                  ]),
                  TableRow(children: [
                    Text('Capital', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['capital'], style: TextStyle(fontSize: 15))
                  ]),
                  TableRow(children: [
                    Text('Continent', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['region'], style: TextStyle(fontSize: 15))
                  ]),
                  TableRow(children: [
                    Text('Population', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['population'].toString(), style: TextStyle(fontSize: 15))
                  ]),
                  TableRow(children: [
                    Text('Area', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['area'].toString(), style: TextStyle(fontSize: 15))
                  ]),
                  TableRow(children: [
                    Text('TimeZone', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['timezones'].toString(), style: TextStyle(fontSize: 15))
                  ]),
                  TableRow(children: [
                    Text('Currency', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(country['currencies'][0]['name'], style: TextStyle(fontSize: 15))
                  ]),
                ]
            ),
          )
            ],
          ),
        )

        ),


    );
  }
}
