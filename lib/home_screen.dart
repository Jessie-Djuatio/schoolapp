import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schoolapp/login.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
             Column(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.only(bottom: 0),
                   height: 200,
                   child: GestureDetector(
                     onTap: (){
                          showDialog(
                            context: context,
             builder: (BuildContext context) {
                               return Padding(
              padding: const EdgeInsets.only(bottom: 220.0),
                                      child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                                BorderRadius.circular(10.0)),
                                         child: Container(
                               height: 325,
                                            child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                                               child: ListView(
                      children: [
                                                 ListTile(
                                                    dense: true,
                                                    leading: CircleAvatar( radius: 20,
                                                      backgroundImage: AssetImage('assets/images/student.png'),),
                                                    title: Padding(
                                                      padding: const EdgeInsets.only(bottom:4.0),
                                                      child: Text('Mbekou Djuatio Jessie Lorraine', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                                    ),
                                                    subtitle: Text('djuatiojessie@gmail.com', style: TextStyle(color: Colors.grey, fontSize: 10),),

                                                  ),

                                                          Divider(),

                                                          ListTile(
                                                              dense: true,
                                                              leading: Text('Faculty :', style: TextStyle (color: Colors.green)),
                                                              title: Text('Faculty of Engineering and Technology', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                                            ),
                                                                ListTile(
                                                                dense: true,
                                                                  leading: Text('Department :', style: TextStyle (color: Colors.green)),
                                                                  title: Text('Computer Engineering', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                                              ),
                                                        ListTile(
                                                          dense: true,
                                                          leading: Text('Matricule :', style: TextStyle (color: Colors.green)),
                                                          title: Text('FE17A039', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                                        ),
                                                      ListTile(
                                                        dense: true,
                                                                   leading: Text('Level : ', style: TextStyle (color: Colors.green)),
                                                        title: Text('          400', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                                                      ),
                                                     Divider(
                                                          height: 1 ,
                                                        ),
                                                  Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [

                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: InkWell(
                                                              onTap: (){
                                                                Navigator.push(context,MaterialPageRoute(
                                                                    builder: (context)=> LoginPage()
                                                                ));
                                                              },
                                                              child: Text('Signout', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
                                                        ),
                                           ]

                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });

                     },
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child:
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,

                         children: <Widget>[
                           CircleAvatar(
                             radius: 30,
                             backgroundImage: AssetImage('assets/images/student.png'),
                           ),



                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,

                               children: <Widget>[
                                 Text('Mbekou Jessie', style: TextStyle(color: Colors.green, fontSize: 20, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
                                 Text('FE17A039'),



                               ],
                             ),
                           )
                         ],

                       ),
                     ),
                   ),

                 ),
                 Expanded(


                   child: GridView.count(
                     padding: EdgeInsets.all(15.0),
                       mainAxisSpacing: 15,
                       crossAxisSpacing: 15,
                       primary: false,
                       crossAxisCount: 2,
                     children: <Widget>[
                       Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(15)
                         ),

                         elevation: 10,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[

                             SvgPicture.asset('assets/images/controls.svg', height: 100,),
                             Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
                                 fontStyle: FontStyle.italic, color: Colors.green),
                             ),
                           ],
                         ),

                       ),
                       Card(

                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                         ),

                         elevation: 10,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[

                             SvgPicture.asset('assets/images/study.svg', height: 100,),
                             Text('Register Courses', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
                                 fontStyle: FontStyle.italic, color: Colors.green),
                             ),
                           ],
                         ),

                       ),
                       Card(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15)
                         ),

                         elevation: 10,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[

                             SvgPicture.asset('assets/images/design-tool.svg', height: 100,),
                             Text('Results', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
                                 fontStyle: FontStyle.italic, color: Colors.green),
                             ),
                           ],
                         ),

                       ),
                       GestureDetector(
                         onTap: (){

                         },
                         child: Card(
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15)
                           ),


                           elevation: 10,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: <Widget>[

                               SvgPicture.asset('assets/images/notification.svg', height: 100,),
                               Text('Pay Fees', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,
                                   fontStyle: FontStyle.italic, color: Colors.green),
                               ),
                             ],
                           ),

                         ),
                       ),

                     ],

                   ),
                 )
               ],
             ),

               Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[



                     Padding(
                       
                       padding: const EdgeInsets.only( top: 40),
                       child: Text('Knowledge with Wisdom',
                         style: TextStyle(color: Colors.green, fontStyle: FontStyle.italic, fontSize: 18)),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(  top: 10),
                       child: Text('P.O. Box 63'),
                     ),
                     Padding(
                       padding: const EdgeInsets.only( bottom: 30.0, top: 10),
                       child: Text('infoubuea@.cm'),
                     )
                   ],
    ),
               ),



              ],
      ),

    );
  }
}
