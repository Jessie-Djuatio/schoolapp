import 'package:flutter/material.dart';
import 'package:schoolapp/login.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration>{
  final GlobalKey<FormState> _formKeyValue =
  new GlobalKey<FormState>();
  var selectedType,
   key = GlobalKey;
  List<String> _gender=<String>[
    'Male',
    'Female'
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('School App',),
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white,
        ),

      ),
      body:
      Form(
        key: _formKeyValue,
        autovalidate: true,
        //width: double.infinity,

        child: ListView(

            children: <Widget>[Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:14.0, bottom: 50.0),
                      child:
                      Column(

                          children: <Widget>[


                            Text('Registration Form', style: TextStyle(fontSize: 30.0, color: Colors.green, fontStyle: FontStyle.italic),),
                          ] ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.supervised_user_circle),
                        hintText: 'Enter your full name',
                        labelText: 'Full Name'
                    ),
                  ),
                ),
                SizedBox(

                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.confirmation_number),
                        hintText: 'Enter your Matriculation number',
                        labelText: 'Matriculation number'
                    ),
                  ),
                ),
                SizedBox(

                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        hintText: 'Enter a user name',
                        labelText: 'User name'
                    ),
                  ),
                ),
                SizedBox(

                  height: 1.0,
                ),
                SizedBox(

                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        labelText: 'Password'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.sync),
                        labelText: 'Confirm Password'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.date_range),
                        hintText: '01/01/2020',
                        labelText: 'Date of Birth'
                    ),
                  ),
                ),
                SizedBox(

                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:24.0),
                      child: Icon(Icons.face,  size: 25.0, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    DropdownButton(
                      //icon: Icon(Icons.face),
                      items: _gender.map((value)=>DropdownMenuItem(
                        child: Text(value,
                        //style: TextStyle(color: Colors.blueGrey)
                        ),

                        value: value,
                      ),).toList(),
                      onChanged: (selectedGenderType){
                        setState(() {
                          selectedType=selectedGenderType;
                        });
                      }, value: selectedType,
                      hint: Text('Gender'),

                    )


                  ],
                ),




                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 30.0),

                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(
                                  builder: (context)=> LoginPage()
                              ));


                            },

                            child: Container(

                                height: 50.0,
                                width: 20,

                                margin: EdgeInsets.only(left:40.0, right: 40.0),

                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10.0)),
                                alignment: Alignment.center,
                                child: Text('Register', style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                                  textAlign: TextAlign.values[2],)
                            ),
                          ),
                        )
                    ),

                  ],

                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context)=> LoginPage()
                          ));

                        },
                        child: Text('Already Registered? Login', style:
                        TextStyle(
                            fontSize: 18.0, color: Colors.green, fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ]
        ),
      ),
    );
  }

  signIn () async {
    if ( _formKeyValue.currentState.validate() ) {}
  }

}
