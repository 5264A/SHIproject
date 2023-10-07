import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'Buyer/Navigationbar/BuyerBottombar.dart';
import 'Farmersection/Farmerbottom.dart';
import 'MidSeller/Navigationbar/navigationbar.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //variables
  var _enteredEmail;
  var _enteredName;
  var _enteredPhone;
  var _enteredLocation;
  var _enteredOtp;
  var _enteredPassword;
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  var _passVisibility = false;

  void _login() {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    print(_enteredEmail);
    print(_enteredPassword);
  }

  void _signUp() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    print(_enteredEmail);
    print(_enteredPassword);
    print(_enteredName);
    print(_enteredPhone);
    print(_enteredLocation);

    try {
      Response response =
      await post(Uri.parse('http://localhost:3000/api/v1/signup'), body: {
        'email': _enteredEmail,
        'password': _enteredPassword,
      });
      final body = response.body;
      final json = jsonDecode(body);
      final result = json['success'];
      if (result) {
        print("Succesfully signed In");
      } else {
        print("not Succesfully signed In");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget SignIn = Column(
      children: [
        Image.asset('assets/mainpagewool.jpg'),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.8,
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 20,
            right: 5,
          ),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 180, 221, 230),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Sign In",
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500, fontSize: 40)),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            !value.contains('@')) {
                          return 'Please enter valid mail address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredEmail = value;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        label: Text('E-mail'),
                        //hintText: "uuuuuuu",
                        prefixIcon: Icon(Icons.person),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                      obscureText: _passVisibility,
                      validator: (value) {
                        if (value == null || value.trim().length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredPassword = value;
                      },
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 5.0)),
                          label: const Text('Password'),
                          //hintText: "uuuuuuu",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _passVisibility = !_passVisibility;
                                });
                              },
                              child: _passVisibility
                                  ? const Icon(CupertinoIcons.eye_fill)
                                  : const Icon(
                                  CupertinoIcons.eye_slash_fill)))),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 84, 176, 193))),
                        onPressed: () {
                          _login();
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 84, 176, 193))),
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: Text(
                          _isLogin
                              ? "Create an Account"
                              : "Already a user,Login",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color:Color.fromARGB(255, 84, 176, 193),

                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmerBottombar()));
                      },
                        child: Text('Farmer'),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 176, 193),
                        //  border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Bottombar()));
                      },
                        child: Text('Trader'),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 176, 193),
                         // border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>BuyerBottombar()));
                      },
                        child: Text('Buyers'),
                      ),
                    ),


                  ],
                ),

              ],
            ),
          ),
        ),
      ],
    );
    Widget SignUp = Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.30,
            child: Image.asset('assets/mainpagewool.jpg')),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.63,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20, right: 5),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 180, 221, 230),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Sign Up",
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w500, fontSize: 40)),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      // validator: (value) {
                      //   if (value == null) {
                      //     return 'Please enter your name';
                      //   }
                      //   return null;
                      // },
                      onSaved: (value) {
                        _enteredName = value;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        label: Text('Name'),
                        //hintText: "uuuuuuu",
                        prefixIcon: Icon(Icons.person),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                      onSaved: (value) {
                        _enteredLocation = value;
                      },
                      // validator: (value) {
                      //   if (value == null) {
                      //     return 'Please enter your address';
                      //   }
                      //   return null;
                      // },
                      keyboardType: TextInputType.streetAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        label: Text('Location'),
                        //hintText: "uuuuuuu",
                        prefixIcon: Icon(Icons.location_on),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 220,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: TextFormField(
                          onSaved: (value) {
                            _enteredPhone = value;
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 5.0)),

                            label: Text('Phone No.'),
                            //hintText: "uuuuuuu",
                            prefixIcon: Icon(Icons.call),
                          )),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide: BorderSide(width: 5.0)
                            ),
                            label: Text('OTP'),
                            //hintText: "uuuuuuu",
                            prefixIcon: Icon(Icons.verified),
                          )),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    //decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check),
                    ),
                  )
                ]),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.trim().isEmpty ||
                            !value.contains('@')) {
                          return 'Please enter valid mail address';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _enteredEmail = value;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5.0)),
                        label: Text('E-mail'),
                        //hintText: "uuuuuuu",
                        prefixIcon: Icon(Icons.person),
                      )),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextFormField(
                      onSaved: (value) {
                        _enteredPassword = value;
                      },
                      validator: (value) {
                        if (value == null || value.trim().length < 6) {
                          return 'Password must be at least 6 characters long';
                        }
                        return null;
                      },
                      obscureText: _passVisibility,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(width: 5.0)),
                          label: const Text('Password'),
                          //hintText: "uuuuuuu",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _passVisibility = !_passVisibility;
                                });
                              },
                              child: _passVisibility
                                  ? const Icon(CupertinoIcons.eye_fill)
                                  : const Icon(
                                  CupertinoIcons.eye_slash_fill)))),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 84, 176, 193))),
                        onPressed: () {
                          setState(() {
                            _signUp();
                          });
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Existing user ?",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color:Color.fromARGB(255, 84, 176, 193),

                          borderRadius: BorderRadius.circular(20)
                      ),

                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>FarmerBottombar()));
                      },
                        child: Text('Farmer'),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 176, 193),
                          //  border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Bottombar()));
                      },
                        child: Text('Trader'),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 84, 176, 193),
                          // border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>BuyerBottombar()));
                      },
                        child: Text('Buyers'),
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(child: _isLogin ? SignIn : SignUp),
        ),
      ),
    );
  }
}