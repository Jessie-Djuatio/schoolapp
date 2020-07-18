import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../results.dart';

class ResultsHome extends StatefulWidget {
  @override
  _ResultsHomeState createState() => _ResultsHomeState();
}

class _ResultsHomeState extends State<ResultsHome> {

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
          Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> Results()
                  ));
                },
                child: Center(
                  child: SizedBox(height: 150, width: 250,
                    child: Card(
                      color: Colors.black54,
                      //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 10,
                      child: Center(child: Text('Exam Results',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), textAlign: TextAlign.center,)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> Results()
                  ));
                },
                child: SizedBox(height: 150, width: 250,
                  child: Card(
                    color: Colors.green.withOpacity(0.6),
                    //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    elevation: 10,
                    child: Center(child: Text('CA Results',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), textAlign: TextAlign.center,)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
