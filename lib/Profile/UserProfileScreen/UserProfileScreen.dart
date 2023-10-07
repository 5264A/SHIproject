import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class UserDataScreen extends StatelessWidget {

  static const String path = "lib/src/pages/profile/profile1.dart";


  String Name="Shirsha ";
  String city="Jamshedpur";
  String status="Seller";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: const Text("View Profile"),
        backgroundColor: Color(0xffcbc3e3),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.6, 0.9],
                colors: [Color(0xffcbc3e3),Colors.white38],
                // color: Colors.grey,
                ),),
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      minRadius: 30.0,
                      backgroundColor: Color(0xfff3f2f9),
                      child: InkWell(
                        child: const Icon(
                          Icons.call,
                          size: 30.0,
                          color: Colors.blue,
                        ),onTap: (){
                          //CALLER METHOD
                      },
                      ),
                    ),
                    const CircleAvatar(
                      minRadius: 60,
                      backgroundColor: Color(0xfff3f2f9),
                      child: CircleAvatar(
                       backgroundImage: AssetImage('assets/userrr.png'),
                        minRadius: 50,
                      ),
                    ),
                    CircleAvatar(
                      minRadius: 30.0,
                      backgroundColor: Color(0xfff3f2f9),
                      child: InkWell(
                        child: const Icon(
                          Icons.message,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        onTap: (){
                          //WhatsAPP
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  '$Name',
                   style: TextStyle(fontSize: 28.0, color:Colors.blue,),
                ),
                Text(
                  "$city",
                  style: TextStyle(fontSize: 14.0, color:Colors.blue,),
                )
              ],
            ),
          ),

          const ListTile(
            title: Text(
              "Email",
              style: TextStyle(color: Colors.blue, fontSize: 12.0),
            ),
            subtitle: Text(
              "shirsha123@kumar.com",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "Phone",
              style: TextStyle(color: Colors.blue, fontSize: 12.0),
            ),
            subtitle: Text(
              "+977 9818225533",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "Status",
              style: TextStyle(color: Colors.blue, fontSize: 12.0),
            ),
            subtitle: Text(
              "Seller",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "Full Address",
              style: TextStyle(color: Colors.blue, fontSize: 12.0),
            ),
            subtitle: Text(
              "Jamshedpur",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
/*
class UserDataScreen extends StatefulWidget {
  const UserDataScreen({Key? key}) : super(key: key);

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  String name="Mohit Yadav";
  String Address="Indore shindhibafuihfdysfaghbcjsti";
  String city="Jamshedpur";
  String Status="Seller";
  String Phone="9826373839";
  String email="aman@gmail.com";


  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Scaffold(
           appBar: AppBar(
          centerTitle: true,
          title: const Text('User-Details',style: TextStyle(color: Colors.black87),),
           ),
             body: Container(

               margin: EdgeInsets.all(10),
               decoration: BoxDecoration(

                 //color: Colors.grey,
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Colors.grey,width: 1),

               ),
               child: Center(
                 child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(

                     margin: EdgeInsets.only(top: 50),
                     height: 100,
                     width: 100,
                     child: InkWell(
                           child:CircleAvatar(
                           child: Image.asset('assets/userrr.png'),
                           ),
                         onTap: (){print('hello');},
                       ),
                     ),



                     SizedBox(height: 25,),

                             Container(
                               margin: EdgeInsets.only(left: 10,right:10),
                               child: Column(

                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children:[

                               Container(
                                   width: double.infinity,
                                   padding: EdgeInsets.all(7),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     border: Border.all(color: Colors.black87,width: 1),

                                   ),
                                   child: Text('Name = $name' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),
                               SizedBox(height: 5,),
                               Container(
                                   padding: EdgeInsets.all(7),
                                  width: double.infinity,
                                   decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                 border: Border.all(color: Colors.black87,width: 1),

                               ),
                                   child: Text('Phone = $Phone' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),
                                   SizedBox(height: 5,),
                               Container(width: double.infinity,
                                   padding: EdgeInsets.all(7),
                                   decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                                 border: Border.all(color: Colors.black87,width: 1),

                               ),
                                   child: Text('Address = $Address' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),
                                   SizedBox(height: 5,),
                               Container( width: double.infinity,
                                   padding: EdgeInsets.all(7),
                                   decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                                 border: Border.all(color: Colors.black87,width: 1),

                               ),
                                   child: Text('City = $city' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),
                                   SizedBox(height: 5,),
                               Container( width: double.infinity,
                                   padding: EdgeInsets.all(7),
                                   decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                 border: Border.all(color: Colors.black87,width: 1),

                               ),
                                   child: Text('Email = $email' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),
                                   SizedBox(height: 5,),
                               Container( width: double.infinity,
                                   padding: EdgeInsets.all(7),
                                   decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                 border: Border.all(color: Colors.black87,width: 1),

                               ),
                                   child: Text('Status= $Status' ,style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold),)),

                               ],),
                             ),
                             SizedBox(height: 14,),
                             ElevatedButton(onPressed: (){}, child:Text('Edit-Profile') ),

                              ],
                 ),
               ),
             ),
      ),
    );
  }
}*/

/* */
