import 'package:flutter/material.dart';

class ContinentCard extends StatelessWidget {
  final String title;
  final String image;

  const ContinentCard({
    Key key,
    this.title,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.transparent,
      child: Container(
        child: Center(
            child: Text(title, style: TextStyle(color: Colors.blue, backgroundColor: Colors.white, fontSize: 20,
                fontWeight: FontWeight.bold),
            )
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/'+image),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}