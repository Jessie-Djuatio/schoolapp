import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:schoolapp/creditCard.dart';

import 'components/defaultDialog.dart';


class PayFees extends StatefulWidget {
  @override
  _PayFeesState createState() => _PayFeesState();
}

class _PayFeesState extends State<PayFees> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Payment of Fees'),),
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
                onTap: payment,
                child: Center(
                  child: SizedBox(height: 150, width: 250,
                    child: Card(
                      color: Colors.deepOrange.withOpacity(0.6),
                      //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      elevation: 10,
                      child: Center(child: Text('Orange Money',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), textAlign: TextAlign.center,)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: payment,
                child: SizedBox(height: 150, width: 250,
                  child: Card(
                    color: Colors.yellow.withOpacity(0.6),
                    //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    elevation: 10,
                    child: Center(child: Text('Mobile Money',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.blueAccent), textAlign: TextAlign.center,)),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context)=> MySample()
                  ));
                },
                child: SizedBox(height: 150, width: 250,
                  child: Card(
                    color: Colors.black.withOpacity(0.6),
                    //margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    elevation: 10,
                    child: Center(child: Text('Credit Card',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), textAlign: TextAlign.center,)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  payment(){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return
          DefaultAlertDialog(
            title: "Sorry",
            message: "Service not yet available, it will soon be online !!",
            icon: Icon(Icons.cancel, color: Colors.green, size: 45,),
          );

      },
    );
  }
}
