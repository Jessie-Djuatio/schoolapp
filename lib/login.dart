import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:schoolapp/home_screen.dart';
import 'package:schoolapp/registration.dart';
import 'package:schoolapp/service/authService.dart';

import 'components/defaultDialog.dart';
import 'service/secureStorage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  final _loginKey= GlobalKey<FormState>();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool _buttonState = true;

  @override
  void initState(){

    super.initState();
  }

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
      Container(
        width: double.infinity,

        child: Form(
          key: _loginKey,
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
                                  CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage('assets/images/bg13.jpeg'),
                                ),

                                Text('University of Buea', style: TextStyle(fontSize: 30.0, color: Colors.green, fontStyle: FontStyle.italic),),
                   ] ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.supervised_user_circle),
                        labelText: 'User Name'
                    ),
                    controller: _usernameController ,
                    validator: _usernameFieldValidator,

                  ),
                ),
                SizedBox(

                  height: 15.0,
                ),
                /*Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.confirmation_number),
                      labelText: 'Matriculation number'
                    ),
                  ),
                ),*/
              SizedBox(

                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                child: TextFormField(
                  obscureText: true,
                  validator: _passwordFieldValidator,
                  decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                  labelText: 'Password'
                  ),
                  controller: _passwordController,

                ),
              ),

                _buttonState ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 30.0),
                          child: GestureDetector(
                            onTap: (){
                              /*Navigator.push(context,MaterialPageRoute(
                                builder: (context)=> HomeScreen()
                              ));*/
                              signIn();
                            },
                            child: Container( height: 60.0,
                                // margin: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10.0)),
                                alignment: Alignment.center,
                                child: Text('Login', style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                                  textAlign: TextAlign.values[2],)
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                          child: Container(

                              height: 60.0,

                              // margin: EdgeInsets.all(20.0),

                              alignment: Alignment.center,
                              child: Text('Forgot Password?', style: TextStyle(
                                  fontSize: 16.0, color: Colors.green),
                                textAlign: TextAlign.values[2],)
                          ),
                        )
                    ),

                  ],

                )
                :
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.green),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context)=> Registration()
                          ));

                        },
                        child: Text('New student? Register Here', style:
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
      ),
    );
  }

  signIn () async {
    if (_loginKey.currentState.validate()) {
      setState(() {
        _buttonState = false;
      });
      print("Username: ${_usernameController.text} \nPassword: ${_passwordController.text}");

      dynamic response = await AuthService.login(username: _usernameController.text, password: _passwordController.text);

      print(response);

      if (response != "error"){
        SecureStorage.userProfileStorage(id: response["id"].toString(), username: response["username"], email: response["email"], token: response["accessToken"]);

        setState(() {
        _buttonState = true;
        });
        Navigator.push(context,MaterialPageRoute(
            builder: (context)=> HomeScreen()
        ));
      }
      else {
        setState(() {
        _buttonState = true;
        });
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return 
              DefaultAlertDialog(
                title: "Failure",
                message: "Incorrect username and/or password, try again !!",
                icon: Icon(Icons.cancel, color: Colors.green, size: 45,),
              );
              
            },
          );
      }
      setState(() {
        _buttonState = true;
      });
    }
  }

  String _passwordFieldValidator (String value) {
    if (value.isEmpty) {
      return "Enter password";
    }
    return null;
  }

  String _usernameFieldValidator (String value) {
    if (value.isEmpty) {
      return "Enter username";
    }
    return null;
  }

}
