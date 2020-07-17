import 'package:flutter/material.dart';
import 'package:schoolapp/login.dart';

import 'service/authService.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration>{
  
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _fullnameController = new TextEditingController();
  TextEditingController _nationalIdController = new TextEditingController();
  TextEditingController _dobController = new TextEditingController();
  TextEditingController _facultyController = new TextEditingController();
  TextEditingController _departmentController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();

  String _genderValue = "M";


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
                  child: TextFormField(
                    controller: _fullnameController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide full name';
                      }
                      return null;
                    },
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
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Enter your email',
                        labelText: 'Email'
                    ),
                    controller: _emailController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide email';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.confirmation_number),
                        hintText: 'Enter your NationalID number',
                        labelText: 'National ID number'
                    ),
                     controller: _nationalIdController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide National ID number';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextFormField(
                   // obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.location_city),
                        hintText: 'Molyko, Buea',
                        labelText: 'Address'
                    ),
                    controller: _addressController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide  address';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(

                  height: 1.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        hintText: 'Enter a user name',
                        labelText: 'User name'
                    ),
                    controller: _usernameController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide Username';
                      }
                      return null;
                    },
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
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        labelText: 'Password'
                    ),
                    controller: _passwordController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide Password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextFormField(
                   // obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.add),
                        labelText: 'Faculty'
                    ),
                    controller: _facultyController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide  Faculty';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.confirmation_number),
                        hintText: 'Enter your department',
                        labelText: 'Department'
                    ),
                    controller: _departmentController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide Department';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                  child: TextFormField(
                    //obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(Icons.date_range),
                        hintText: '01/01/2020',
                        labelText: 'Date of Birth'
                    ),
                    controller: _dobController,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Provide Date of birth';
                      }
                      return null;
                    },
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
                    DropdownButton<String>(
                      value: _genderValue,
                      onChanged: (String newValue) {
                        setState(() {
                          _genderValue = newValue;
                        });
                      },
                      items: <String>['M', 'F']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),


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
                              /*Navigator.push(context,MaterialPageRoute(
                                  builder: (context)=> LoginPage()
                              ));*/
                              signUp();


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

  signUp () async {
    if ( _formKeyValue.currentState.validate() ) {
      print("FullName: ${_fullnameController.text}\nEmail: ${_emailController.text}\nAddress: ${_addressController.text}\nUsername: ${_usernameController.text}\nPassword: ${_passwordController.text}\nFaculty: ${_facultyController.text}\nDate of birth: ${_dobController.text}\nDepartment: ${_departmentController.text}\n Gender: ${_genderValue}");

      dynamic response = await AuthService.signup(
          username: _usernameController.text,
          password: _passwordController.text,
          email: _emailController.text,
          department: _departmentController.text,
          nationalId: _nationalIdController.text,
          address: _addressController.text,
          fullName: _fullnameController.text,
          faculty: _facultyController.text,
          gender: _genderValue,
          dateOfBirth: _dobController.text);

          print(response);
    }
  }

}
