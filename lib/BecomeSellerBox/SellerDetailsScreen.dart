import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectwork/widgets/big_text.dart';

import 'user_image.dart';


class SellersDetailsSceen extends StatefulWidget {
  const SellersDetailsSceen({Key? key}) : super(key: key);

  @override
  State<SellersDetailsSceen> createState() => _SellersDetailsSceenState();
}

class _SellersDetailsSceenState extends State<SellersDetailsSceen> {
  late String _name;
  late String _email;
  late String _password;
  late String _url;
  late String _phoneNumber;
  
  String imageUrl='';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 100,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }
  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Adress'),
      maxLength: 1500,
      keyboardType: TextInputType.text,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Adress is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }
  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Wool-Type'),
      maxLength: 10,
      keyboardType: TextInputType.text,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Field is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }
  Widget _builURL() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Price per kg'),
      maxLength: 20,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Field is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }
  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.isEmpty!) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _url = value!;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return
     Expanded(
       child: SafeArea(
         child: Scaffold(
                       body:Column(
                        children: [

                         //SizedBox(height: 150,),

                          Center(child: BigText(text: 'Selling-Details')),
                         Container(height:270,child: UserImage()),
                          //SizedBox(height: 40,),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                        margin: EdgeInsets.all(10),
                        child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  _buildName(),
                                  _buildEmail(),
                                  _buildPassword(),
                                  _builURL(),
                                  _buildPhoneNumber(),

                                  SizedBox(height: 20),
                                  MaterialButton(
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(color: Colors.blue, fontSize: 16),
                                    ),
                                    onPressed: () {
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }

                                      _formKey.currentState?.save();

                                      print(_name);
                                      print(_email);
                                      print(_phoneNumber);
                                      print(_url);
                                      print(_password);


                                      //Send to API
                                    },
                                  )
                                ],
                              ),
                        ),

                      ),
                            ),
                          ),

                        ],






              ),
           ),
       ),

     );
  }
}
