import 'package:flutter/material.dart';
import 'package:projectwork/Profile/ProfileScreen.dart';

import 'package:url_launcher/url_launcher.dart';

import 'Sellerlistserver.dart';
import 'Sellerslistcardview.dart';

class SellersList1 extends StatefulWidget {
  const SellersList1({super.key});

  @override
  State<SellersList1> createState() => _SellersList1State();
}

class _SellersList1State extends State<SellersList1> {
  List _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = availableLogistic.cast<Map<String, dynamic>>();
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = availableLogistic.cast();
    } else {
     /* results = availableLogistic
          .where((user) =>
          user["title"].toLowerCase().contains(enteredKeyword.toLowerCase())).cast()
         .toList();*/
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
         // leading: const Icon(Icons.location_pin),
          centerTitle: true,
          title: const Text("Sellers-List"),

        ),
        body: Column(
          children: [
            SizedBox(height: 5,),



            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search State-Name",
                suffixIcon: const Icon(Icons.search),
                //prefix: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: availableLogistic.length,
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(availableLogistic[i].serviceUrl),
                            mode: LaunchMode.inAppWebView);
                      },
                      child: CommonCard(
                        number: availableLogistic[i].number,
                        mailId: availableLogistic[i].mailId,
                        title: availableLogistic[i].title,
                        rating: availableLogistic[i].rating,
                        ratings: availableLogistic[i].ratings,
                        remarks: availableLogistic[i].remarks,
                        availability: availableLogistic[i].wooltype,
                        enquiries: availableLogistic[i].price,
                        imageUrl: availableLogistic[i].imageUrl,
                        address: availableLogistic[i].address,
                      ),
                    );
                  }),
            ),
          ],

      ),
    );
  }
}