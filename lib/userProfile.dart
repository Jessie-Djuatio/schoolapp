import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:schoolapp/utils/resultsHome.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String username = "name";
  String email = "email";
  String fullName = 'Full Name';
  String faculty = 'Faculty';
  String department = 'data';
  String level = 'data';
  String nationalId = 'data';
  String dob = 'data';
  String matricule = 'data';
  String address = 'data';


  final storage = new FlutterSecureStorage();

  void getUserProfile() async {
    String name = await storage.read(key: "username");
    String mail = await storage.read(key: "email");
    String fname = await storage.read(key: "fullName");
    String fac = await storage.read(key: "faculty");
    String dept = await storage.read(key: "department");
    String mat = await storage.read(key: "matricule");
    String addr = await storage.read(key: "address");
    String db = await storage.read(key: "dob");
    String lvl = await storage.read(key: "level");

    print(name);

    setState(() {
      username = name;
      email = mail;
      fullName = fname;
      faculty = fac;
      department = dept;
      matricule = mat;
      address = addr;
      dob = db;
      level = lvl;
    });



  }

  @override
  void initState() {
    this.getUserProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('User Profile Informations'),),
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
            margin: EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            ),

            elevation: 10,

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30,),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/student.png'),
                  ),
                  SizedBox(height: 25,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text('Username:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                    Text(username,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                  ],),
                  SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Full Name:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(fullName,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),
                  SizedBox(height: 5,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Matriculation:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(matricule,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),
                  SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Address:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(address,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),
                  SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Date of Birth:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(dob,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),

                  SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Email:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(email,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),
                  Divider(height: 50,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Faculty:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(faculty,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),

                  SizedBox(height: 5,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Department:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(department,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),

                  SizedBox(height: 5,),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Level:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),),
                      Text(level,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.green)),
                    ],),

                  SizedBox(height: 50,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(
                                builder: (context)=> ResultsHome()
                              ));
                    },
                    child: Container( height: 40.0,
                        // margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10.0)),
                        alignment: Alignment.center,
                        child: Text('Get Results', style: TextStyle(
                            fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.values[2],)
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
