import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Results extends StatefulWidget {
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Results'),),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 1,
            decoration: BoxDecoration(
                image: DecorationImage(

                    image: AssetImage('assets/images/bg11.jpeg'),
                    fit: BoxFit.fill

                )

            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 220, horizontal: 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),

            elevation: 10,

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
              child: Center(
                child: Text('No results available for this semester',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green), textAlign: TextAlign.center,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
